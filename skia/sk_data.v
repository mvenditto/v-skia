module skia


#include "sk_data.h"


fn C.sk_data_new_empty(a0 C.void) &C.sk_data_t

fn C.sk_data_new_with_copy(src voidptr, length C.size_t) &C.sk_data_t

fn C.sk_data_new_subset(src &C.sk_data_t, offset C.size_t, length C.size_t) &C.sk_data_t

fn C.sk_data_ref(a0 &C.sk_data_t) 

fn C.sk_data_unref(a0 &C.sk_data_t) 

fn C.sk_data_get_size(a0 &C.sk_data_t) C.size_t

fn C.sk_data_get_data(a0 &C.sk_data_t) voidptr

fn C.sk_data_new_from_file(path charptr) &C.sk_data_t

fn C.sk_data_new_from_stream(stream &C.sk_stream_t, length C.size_t) &C.sk_data_t

fn C.sk_data_get_bytes(a0 &C.sk_data_t) &byte

fn C.sk_data_new_with_proc(ptr voidptr, length C.size_t, proc C.sk_data_release_proc, ctx voidptr) &C.sk_data_t

fn C.sk_data_new_uninitialized(size C.size_t) &C.sk_data_t

pub fn (d &C.sk_data_t) unref()  {
	C.sk_data_unref(d)
}

pub fn (d &C.sk_data_t) get_size() C.size_t {
	return C.sk_data_get_size(d)
}

pub fn (d &C.sk_data_t) get_data() voidptr {
	return C.sk_data_get_data(d)
}

pub fn (d &C.sk_data_t) get_bytes() &byte {
	return C.sk_data_get_bytes(d)
}