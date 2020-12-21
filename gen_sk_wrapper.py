import sys
from inflection import camelize, underscore
from pycparser import parse_file, c_ast
import os
import subprocess

"""
This is a (very) messy script to generate v wrappers from skia C headers

Known issues:
	- didn't found a way to access C enums, until this is fixed (or i find a way, if i'm missing something)
	  some stuff enums are translated to v consts and structures and funcs using enums are accessed
	  through a wrapper that use casted ints instead of the actual enum
	- this kinda works, but its not intended to be fully-automatic. some manual processing could still be required
"""

C_TO_V_TYPES = {
    'unsigned int': 'u32',
    'uint8_t': 'byte',
    'uint16_t': 'u16',
    'uint32_t': 'u32',
    'uint64_t': 'u64',
    'int8_t': 'i8',
    'int16_t': 'i16',
    'int32_t': 'int',
    'int64_t': 'i64',
    'int': 'int',
    'float': 'f32',
    'bool': 'bool',
    'size_t': 'C.size_t'
}

C_TO_V_PTRS = {
    'void*': 'voidptr',
    'byte*': 'byteptr',
    'char*': 'charptr',
    'char**': '&charptr'
}

class VGenVisitor(c_ast.NodeVisitor):
    def __init__(self):
        self.defs = []
    
    def handle_type(self, node):
        type_decl = node.type
        type_alias = type_decl.declname
        type_name = type_decl.type.names[0]
        self.defs.append(('type', type_alias, type_name))

    def parse_field(self, decl):
        decl_kind = type(decl.type)
        
        if decl_kind == c_ast.TypeDecl:
            if type(decl) == c_ast.FuncDecl:
                # print(decl)
                f_name = ''
            else:
                f_name = decl.name
            f_type = decl.type.type.names[0]
            return f_name, f_type
        elif decl_kind == c_ast.PtrDecl:
            ptr_decl = decl.type
            f_name = ptr_decl.type.declname
            f_type = ptr_decl.type.type.names[0]
            return f_name, f_type + '*'
        elif decl_kind == c_ast.ArrayDecl:
            f_name = decl.name
            arr_decl = decl.type
            arr_type = arr_decl.type.type.names[0]
            if arr_decl.dim is not None:
                print(arr_decl)
            return f_name, '[]' + arr_type

    def parse_binops(self, binop, stack=[]):
        op = binop.op
        l = binop.left
        r = binop.right

        def literal(o):
            if type(o) == c_ast.ID:
                return o.name
            elif type(o) == c_ast.Constant:
                return o.value

        def leaf(o):
            t = type(o)
            return t == c_ast.ID or t == c_ast.Constant

        if leaf(l) and leaf(r):
            return [literal(l), op, literal(r)] + stack

        if leaf(l) and not leaf(r):
            return self.parse_binops(r, [op, literal(l)] + stack)

        if not leaf(l) and leaf(r):
            return self.parse_binops(l, [op, literal(r)] + stack)
        

    def handle_struct(self, node):
        type_decl = node.type
        struct = type_decl.type
        name = struct.name
        
        if struct.decls == None:
            self.defs.append(('struct', name, ()))
            return;
        
        fields = []
        
        if name is None:
            name = node.name
            
        for d in struct.decls:
            f = self.parse_field(d)
            fields.append(list(f))
            
        self.defs.append(('struct', name, fields))

    def handle_enum(self, node):
        enum_name = node.name
        enum = node.type.type
        vals = []
        
        for e in enum.values.enumerators:
            if e.value is None:
                vals.append((e.name, 'deflt', e.value))
            elif type(e.value) == c_ast.Constant:
                vals.append((e.name, 'const', e.value.value))
            elif type(e.value) == c_ast.BinaryOp:
                expr = self.parse_binops(e.value)
                vals.append((e.name, 'binop', expr))
                
        self.defs.append(('enum', enum_name, vals))

    def handle_func(self, node):
        func_name = node.name
        args = node.type.args
        
        ret_type = self.parse_field(node.type)[1]
        args_list = []
        if not args is None:
            arg_idx = 0
            for a in args:
                name, type_ = self.parse_field(a)
                if name is None:
                    name = 'a' + str(arg_idx)
                arg_idx += 1
                args_list.append((name, type_))
                
        self.defs.append(('func', func_name, ret_type, args_list))
                
    def visit_Typedef(self, node):

        if not node.name.startswith('sk_'):
            return

        def_type = type(node.type.type)

        if def_type == c_ast.IdentifierType:
            self.handle_type(node)
        elif def_type == c_ast.Struct:
            self.handle_struct(node)
        elif def_type == c_ast.Enum:
            self.handle_enum(node)

    def visit_Decl(self, node):

        if not node.name.startswith('sk_'):
            return
        
        self.handle_func(node)
        
            
def to_v_camel_case(name):
    n = camelize(name)
    if n[-1] == 'T':
        return n[:-1]
    return n

def to_v_snake_case(name):
    n = underscore(name)
    if n[:2] == 'f_':
        return n[2:]
    return n

def c_to_v_type(type_name, preserve_case=True):
    if type_name.endswith('*'):
        if type_name in C_TO_V_PTRS:
            return C_TO_V_PTRS[type_name]
        elif type_name.endswith('**'):
            tn = type_name[:-2]
            if tn in C_TO_V_TYPES:
                return '&&' + C_TO_V_TYPES[tn]
            
            if not preserve_case:
                type_name = to_v_camel_case(tn)
            else:
                type_name = 'C.' + tn
                
            return '&&C.' + tn
            
        elif type_name.endswith('*'):
            tn = type_name[:-1]
            if tn in C_TO_V_TYPES:
                return '&' + C_TO_V_TYPES[tn]
            if not preserve_case:
                type_name = to_v_camel_case(tn)
            else:
                type_name = 'C.' + tn
            return '&C.' + tn
    else:
        if type_name in C_TO_V_TYPES:
            return C_TO_V_TYPES[type_name]
        if not preserve_case:
            type_name = to_v_camel_case(type_name)
        else:
            type_name = 'C.' + type_name
        return type_name

def gen_type_alias(typee):
    _, alias, type_name = typee
    alias = to_v_camel_case(alias)
    type_name = c_to_v_type(type_name)
    return 'pub type {0} = {1}'.format(alias, type_name)

def gen_struct(struct):
    _, name, fields = struct

    v_alias = to_v_camel_case(name)

    out = ''

    if not any(fields):
        out += 'struct C.{0} {{}}'.format(name) + '\n'
        out += '\npub type {0} = C.{1}'.format(v_alias, name)
        return out

    def map_field(f):
        name, type_name = f
        name = name
        type_name = c_to_v_type(type_name)
        return '\t' + name + ' ' + type_name

    body = '\n'.join(map(map_field, fields))

    out += 'pub struct C.{0} {{\npub mut:\n{1}\n}}'.format(name, body) + '\n'
    out += '\npub type {0} = C.{1}'.format(v_alias, name)

    return out

def gen_func(func):
    _, name, ret, args = func

    if ret == 'void':
        ret = ''
    else:
        ret = c_to_v_type(ret)
    
    
    if not any(args):
        return 'fn C.{0}() {1}'.format(name, ret)

    def map_param(p):
        name, type_name = p
        name = to_v_snake_case(name)
        type_name = c_to_v_type(type_name)
        return name + ' ' + type_name

    sig = ', '.join(map(map_param, args))

    return 'fn C.{0}({1}) {2}'.format(name, sig, ret)
    
def gen_enum(enum):
    _, name, vals = enum
    const_map = { x[0]: x[2] for x in filter(lambda v: v[1]=='const', vals) }
    body = []

    # workaround for: https://github.com/vlang/v/issues/3077

    c_name = name
    if c_name.endswith('_t'):
        c_name = c_name[:-2]

    # print(c_name)
    for x in vals:
        x_name, kind, _ = x

        tmp = x_name
        if tmp.endswith('_' + c_name.upper()):
            tmp = tmp[:-(len(c_name) + 1)]

        alias_name = c_name + '__' + tmp.lower()
        
        # print('\t'+x_name)
        
        body.append('\t{0} = C.{1}'.format(alias_name, x_name))

    """
    for x in vals:
        x_name, kind, value = x
        x_name = to_v_snake_case(x_name)
        if kind == 'deflt':
            body.append('\t' + x_name)
        elif kind == 'const':
            body.append('\t' + x_name + ' = ' + value)
        elif kind == 'binop':
            expr = ' '.join(value)
            for c in const_map:
                expr = expr.replace(c, const_map[c])
            body.append('\t' + x_name + ' = ' + str(eval(expr)))
           
    body = '\n'.join(body)
    
    return 'pub enum {0} {{\n{1}\n}}'.format(name, body)
    """

    return 'const (\n' + '\n'.join(body) + '\n)\n'

FLAGS = (
    'linux -I @VROOT/c',
    # 'linux -lfontconfig',
    'linux -L @VROOT/../lib',
    'linux -lskia',
    'linux -D VKAPI_ATTR=""',
    'linux -D VKAPI_CALL=""',
    'linux -D VKAPI_PTR=""',
    'linux -D SK_C_PLUS_PLUS_BEGIN_GUARD=""',
    'linux -D SK_C_PLUS_PLUS_END_GUARD=""'
)

CODEGEN = {
    'type': gen_type_alias,
    'enum': gen_enum,
    'struct': gen_struct,
    'func': gen_func
}

def v_fmt(src, dst):
	cmd = ['v', 'fmt', src, '-w', dst]
	subprocess.run(cmd)

FAKE_LIBC_PATH = '/home/vagrant/pycparser/utils/fake_libc_include/'

def gen_wrapper(filepath, outpath, enums_cache=(), only_funcs=False):
    import ntpath

    root = os.getcwd()
    
    ast = parse_file(
        filepath,
        use_cpp=True,
        cpp_path='gcc',
        cpp_args=[
            '-E',
            '-I' + os.path.join(root, 'skia/c/'),
            '-I' + FAKE_LIBC_PATH
        ])

    # ast.show()

    v = VGenVisitor()
    v.visit(ast)

    head, tail = ntpath.split(filepath)
    filename = tail or ntpath.basename(head)
    filename_no_ext = filename.split('.')[0]
    
    out = 'module skia\n\n'
    
    if filename_no_ext == 'sk_types':
	    out += '\n'.join(map(lambda x: '#flag ' + x, FLAGS))
    out += '\n#include "{0}"'.format(filename_no_ext + '.h') + '\n'

    for d in v.defs:
        if only_funcs and d[0] != 'func': continue
        out += '\n\n' + CODEGEN[d[0]](d)

    outfile_tmp = filename_no_ext + '_tmp' + '.v'
    outfile = filename_no_ext + '.v'
    outfile_tmp_path = os.path.join(outpath, outfile_tmp)
    outfile_path = os.path.join(outpath, outfile)
    
    with open(outfile_tmp_path, 'w') as outfile:
        outfile.write(out)
        v_fmt(outfile_tmp_path, outfile_path)
    os.remove(outfile_tmp_path)

    return v.defs
	
if __name__ == "__main__":
        
    defs = gen_wrapper('skia/c/sk_types.h', 'skia/')
    
    targets = (
        'sk_image',
        'sk_canvas',
        'sk_bitmap',
        'sk_data',
        'sk_paint',
        'sk_surface'
    )

    base_dir = os.getcwd()

    enums_cache = tuple(map(lambda c: c[1], filter(lambda d: d[0] == 'enum', defs)))

    for t in targets:
        src = os.path.join(base_dir, 'skia/c', t + '.h')
        print('Generating: ' + t + '.v') 
        defs2 = gen_wrapper(src, 'skia/', enums_cache=enums_cache, only_funcs=True)
        
    def struct_with_enum_field(e):
        if e[0] != 'struct': return False
        for a in e[2]:
            if a[1] in enums_cache: return True
        return False

    def map_field(f):
        f_name = f[0]
        f_type = f[1]
        if f_type in enums_cache:
            f_type = 'int'
        return f_type + ' ' + f_name

    def map_field_v(f):
        f_name = f[0]
        f_type = f[1]
        if f_type in enums_cache:
            f_type = 'int'
        return f_name, f_type

    def map_init_field(f):
        f_name = f[0]
        f_type = f[1]
        if f_type in enums_cache:
            return '\tx->{1} = ({0}){1};'.format(f_type, f_name)
        return '\tx->' + f_name + ' = ' + f_name + ';'

    with open("skia/c/structs_factory.h", 'w') as w:
        with open("skia/structs_factory.v", 'w') as v:
            w.write('#include "sk_types.h"\n')
            w.write('#include <stdlib.h>\n')

            v.write('module skia\n\n')
            v.write('#include "structs_factory.h"\n\n')

            
            for s in list(filter(struct_with_enum_field, defs)):
                name = s[1]
                out = ''
                templ = '\n{0}* new_{3}({1}) {{\n{2}\n}}\n'
                sig = ', '.join(map(map_field, s[2]))
                init = '\n'.join(map(map_init_field, s[2]))

                body = '\t{0} *x = ({0}*)malloc(sizeof({0}));\n'.format(name)
                body += init
                body += '\n\treturn x;'
                
                out = templ.format(name, sig, body, name[:-2])

                w.write(out)

                func = [
                    'func',
                    'new_' + name[:-2],
                     name + '*',
                     list(map(map_field_v, s[2]))
                ]
                v.write('\n' + gen_func(func)) 


            
            

    
