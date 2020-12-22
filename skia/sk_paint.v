module skia


#include "sk_paint.h"


fn C.sk_paint_new(a0 C.void) &C.sk_paint_t

fn C.sk_paint_clone(a0 &C.sk_paint_t) &C.sk_paint_t

fn C.sk_paint_delete(a0 &C.sk_paint_t) 

fn C.sk_paint_reset(a0 &C.sk_paint_t) 

fn C.sk_paint_is_antialias(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_antialias(a0 &C.sk_paint_t, a1 bool) 

fn C.sk_paint_get_color(a0 &C.sk_paint_t) SkColor

fn C.sk_paint_set_color(a0 &C.sk_paint_t, a1 SkColor) 

fn C.sk_paint_get_style(a0 &C.sk_paint_t) C.sk_paint_style_t

fn C.sk_paint_set_style(a0 &C.sk_paint_t, a1 C.sk_paint_style_t) 

fn C.sk_paint_get_stroke_width(a0 &C.sk_paint_t) f32

fn C.sk_paint_set_stroke_width(a0 &C.sk_paint_t, width f32) 

fn C.sk_paint_get_stroke_miter(a0 &C.sk_paint_t) f32

fn C.sk_paint_set_stroke_miter(a0 &C.sk_paint_t, miter f32) 

fn C.sk_paint_get_stroke_cap(a0 &C.sk_paint_t) C.sk_stroke_cap_t

fn C.sk_paint_set_stroke_cap(a0 &C.sk_paint_t, a1 C.sk_stroke_cap_t) 

fn C.sk_paint_get_stroke_join(a0 &C.sk_paint_t) C.sk_stroke_join_t

fn C.sk_paint_set_stroke_join(a0 &C.sk_paint_t, a1 C.sk_stroke_join_t) 

fn C.sk_paint_set_shader(a0 &C.sk_paint_t, a1 &C.sk_shader_t) 

fn C.sk_paint_set_maskfilter(a0 &C.sk_paint_t, a1 &C.sk_maskfilter_t) 

fn C.sk_paint_set_blendmode(a0 &C.sk_paint_t, a1 C.sk_blendmode_t) 

fn C.sk_paint_is_dither(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_dither(a0 &C.sk_paint_t, a1 bool) 

fn C.sk_paint_is_verticaltext(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_verticaltext(a0 &C.sk_paint_t, a1 bool) 

fn C.sk_paint_get_shader(a0 &C.sk_paint_t) &C.sk_shader_t

fn C.sk_paint_get_maskfilter(a0 &C.sk_paint_t) &C.sk_maskfilter_t

fn C.sk_paint_set_colorfilter(a0 &C.sk_paint_t, a1 &C.sk_colorfilter_t) 

fn C.sk_paint_get_colorfilter(a0 &C.sk_paint_t) &C.sk_colorfilter_t

fn C.sk_paint_set_imagefilter(a0 &C.sk_paint_t, a1 &C.sk_imagefilter_t) 

fn C.sk_paint_get_imagefilter(a0 &C.sk_paint_t) &C.sk_imagefilter_t

fn C.sk_paint_get_blendmode(a0 &C.sk_paint_t) C.sk_blendmode_t

fn C.sk_paint_set_filter_quality(a0 &C.sk_paint_t, a1 C.sk_filter_quality_t) 

fn C.sk_paint_get_filter_quality(a0 &C.sk_paint_t) C.sk_filter_quality_t

fn C.sk_paint_get_typeface(a0 &C.sk_paint_t) &C.sk_typeface_t

fn C.sk_paint_set_typeface(a0 &C.sk_paint_t, a1 &C.sk_typeface_t) 

fn C.sk_paint_get_textsize(a0 &C.sk_paint_t) f32

fn C.sk_paint_set_textsize(a0 &C.sk_paint_t, a1 f32) 

fn C.sk_paint_get_text_align(a0 &C.sk_paint_t) C.sk_text_align_t

fn C.sk_paint_set_text_align(a0 &C.sk_paint_t, a1 C.sk_text_align_t) 

fn C.sk_paint_get_text_encoding(a0 &C.sk_paint_t) C.sk_text_encoding_t

fn C.sk_paint_set_text_encoding(a0 &C.sk_paint_t, a1 C.sk_text_encoding_t) 

fn C.sk_paint_get_text_scale_x(cpaint &C.sk_paint_t) f32

fn C.sk_paint_set_text_scale_x(cpaint &C.sk_paint_t, scale f32) 

fn C.sk_paint_get_text_skew_x(cpaint &C.sk_paint_t) f32

fn C.sk_paint_set_text_skew_x(cpaint &C.sk_paint_t, skew f32) 

fn C.sk_paint_break_text(cpaint &C.sk_paint_t, text voidptr, length C.size_t, max_width f32, measured_width &f32) C.size_t

fn C.sk_paint_measure_text(cpaint &C.sk_paint_t, text voidptr, length C.size_t, cbounds &C.sk_rect_t) f32

fn C.sk_paint_get_text_path(cpaint &C.sk_paint_t, text voidptr, length C.size_t, x f32, y f32) &C.sk_path_t

fn C.sk_paint_get_pos_text_path(cpaint &C.sk_paint_t, text voidptr, length C.size_t, pos C.[]sk_point_t) &C.sk_path_t

fn C.sk_paint_get_fontmetrics(cpaint &C.sk_paint_t, cfontmetrics &C.sk_fontmetrics_t, scale f32) f32

fn C.sk_paint_get_path_effect(cpaint &C.sk_paint_t) &C.sk_path_effect_t

fn C.sk_paint_set_path_effect(cpaint &C.sk_paint_t, effect &C.sk_path_effect_t) 

fn C.sk_paint_is_linear_text(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_linear_text(a0 &C.sk_paint_t, a1 bool) 

fn C.sk_paint_is_subpixel_text(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_subpixel_text(a0 &C.sk_paint_t, a1 bool) 

fn C.sk_paint_is_lcd_render_text(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_lcd_render_text(a0 &C.sk_paint_t, a1 bool) 

fn C.sk_paint_is_embedded_bitmap_text(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_embedded_bitmap_text(a0 &C.sk_paint_t, a1 bool) 

fn C.sk_paint_get_hinting(a0 &C.sk_paint_t) C.sk_paint_hinting_t

fn C.sk_paint_set_hinting(a0 &C.sk_paint_t, a1 C.sk_paint_hinting_t) 

fn C.sk_paint_is_autohinted(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_autohinted(a0 &C.sk_paint_t, a1 bool) 

fn C.sk_paint_is_fake_bold_text(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_fake_bold_text(a0 &C.sk_paint_t, a1 bool) 

fn C.sk_paint_is_dev_kern_text(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_dev_kern_text(a0 &C.sk_paint_t, a1 bool) 

fn C.sk_paint_get_fill_path(a0 &C.sk_paint_t, src &C.sk_path_t, dst &C.sk_path_t, cull_rect &C.sk_rect_t, res_scale f32) bool

fn C.sk_paint_text_to_glyphs(cpaint &C.sk_paint_t, text voidptr, byte_length C.size_t, glyphs &u16) int

fn C.sk_paint_contains_text(cpaint &C.sk_paint_t, text voidptr, byte_length C.size_t) bool

fn C.sk_paint_count_text(cpaint &C.sk_paint_t, text voidptr, byte_length C.size_t) int

fn C.sk_paint_get_text_widths(cpaint &C.sk_paint_t, text voidptr, byte_length C.size_t, widths &f32, bounds &C.sk_rect_t) int

fn C.sk_paint_get_text_intercepts(cpaint &C.sk_paint_t, text voidptr, byte_length C.size_t, x f32, y f32, bounds C.[]float, intervals &f32) int

fn C.sk_paint_get_pos_text_intercepts(cpaint &C.sk_paint_t, text voidptr, byte_length C.size_t, pos &C.sk_point_t, bounds C.[]float, intervals &f32) int

fn C.sk_paint_get_pos_text_h_intercepts(cpaint &C.sk_paint_t, text voidptr, byte_length C.size_t, xpos &f32, y f32, bounds C.[]float, intervals &f32) int

fn C.sk_paint_get_pos_text_blob_intercepts(cpaint &C.sk_paint_t, blob &C.sk_textblob_t, bounds C.[]float, intervals &f32) int

pub fn (p &C.sk_paint_t) clone() &C.sk_paint_t {
	return C.sk_paint_clone(p)
}

pub fn (p &C.sk_paint_t) delete()  {
	C.sk_paint_delete(p)
}

/*
pub fn (p &C.sk_paint_t) reset()  {
	C.sk_paint_reset(p)
}
*/

pub fn (p &C.sk_paint_t) is_antialias() bool {
	return C.sk_paint_is_antialias(p)
}

pub fn (p &C.sk_paint_t) set_antialias(a1 bool)  {
	C.sk_paint_set_antialias(p, a1)
}

pub fn (p &C.sk_paint_t) get_color() SkColor {
	return C.sk_paint_get_color(p)
}

pub fn (p &C.sk_paint_t) set_color(a1 SkColor)  {
	C.sk_paint_set_color(p, a1)
}

pub fn (p &C.sk_paint_t) get_style() SkPaintStyle {
	return SkPaintStyle(C.sk_paint_get_style(p))
}

pub fn (p &C.sk_paint_t) set_style(a1 SkPaintStyle)  {
	C.sk_paint_set_style(p, a1)
}

pub fn (p &C.sk_paint_t) get_stroke_width() f32 {
	return C.sk_paint_get_stroke_width(p)
}

pub fn (p &C.sk_paint_t) set_stroke_width(width f32)  {
	C.sk_paint_set_stroke_width(p, width)
}

pub fn (p &C.sk_paint_t) get_stroke_miter() f32 {
	return C.sk_paint_get_stroke_miter(p)
}

pub fn (p &C.sk_paint_t) set_stroke_miter(miter f32)  {
	C.sk_paint_set_stroke_miter(p, miter)
}

pub fn (p &C.sk_paint_t) get_stroke_cap() SkStrokeCap {
	return SkStrokeCap(C.sk_paint_get_stroke_cap(p))
}

pub fn (p &C.sk_paint_t) set_stroke_cap(a1 SkStrokeCap)  {
	C.sk_paint_set_stroke_cap(p, a1)
}

pub fn (p &C.sk_paint_t) get_stroke_join() SkStrokeJoin {
	return SkStrokeJoin(C.sk_paint_get_stroke_join(p))
}

pub fn (p &C.sk_paint_t) set_stroke_join(a1 SkStrokeJoin)  {
	C.sk_paint_set_stroke_join(p, a1)
}

pub fn (p &C.sk_paint_t) set_shader(a1 &C.sk_shader_t)  {
	C.sk_paint_set_shader(p, a1)
}

pub fn (p &C.sk_paint_t) set_maskfilter(a1 &C.sk_maskfilter_t)  {
	C.sk_paint_set_maskfilter(p, a1)
}

pub fn (p &C.sk_paint_t) set_blendmode(a1 SkBlendmode)  {
	C.sk_paint_set_blendmode(p, a1)
}

pub fn (p &C.sk_paint_t) is_dither() bool {
	return C.sk_paint_is_dither(p)
}

pub fn (p &C.sk_paint_t) set_dither(a1 bool)  {
	C.sk_paint_set_dither(p, a1)
}

pub fn (p &C.sk_paint_t) is_verticaltext() bool {
	return C.sk_paint_is_verticaltext(p)
}

pub fn (p &C.sk_paint_t) set_verticaltext(a1 bool)  {
	C.sk_paint_set_verticaltext(p, a1)
}

pub fn (p &C.sk_paint_t) get_shader() &C.sk_shader_t {
	return C.sk_paint_get_shader(p)
}

pub fn (p &C.sk_paint_t) get_maskfilter() &C.sk_maskfilter_t {
	return C.sk_paint_get_maskfilter(p)
}

pub fn (p &C.sk_paint_t) set_colorfilter(a1 &C.sk_colorfilter_t)  {
	C.sk_paint_set_colorfilter(p, a1)
}

pub fn (p &C.sk_paint_t) get_colorfilter() &C.sk_colorfilter_t {
	return C.sk_paint_get_colorfilter(p)
}

pub fn (p &C.sk_paint_t) set_imagefilter(a1 &C.sk_imagefilter_t)  {
	C.sk_paint_set_imagefilter(p, a1)
}

pub fn (p &C.sk_paint_t) get_imagefilter() &C.sk_imagefilter_t {
	return C.sk_paint_get_imagefilter(p)
}

pub fn (p &C.sk_paint_t) get_blendmode() SkBlendmode {
	return SkBlendmode(C.sk_paint_get_blendmode(p))
}

pub fn (p &C.sk_paint_t) set_filter_quality(a1 SkFilterQuality)  {
	C.sk_paint_set_filter_quality(p, a1)
}

pub fn (p &C.sk_paint_t) get_filter_quality() SkFilterQuality {
	return SkFilterQuality(C.sk_paint_get_filter_quality(p))
}

pub fn (p &C.sk_paint_t) get_typeface() &C.sk_typeface_t {
	return C.sk_paint_get_typeface(p)
}

pub fn (p &C.sk_paint_t) set_typeface(a1 &C.sk_typeface_t)  {
	C.sk_paint_set_typeface(p, a1)
}

pub fn (p &C.sk_paint_t) get_textsize() f32 {
	return C.sk_paint_get_textsize(p)
}

pub fn (p &C.sk_paint_t) set_textsize(a1 f32)  {
	C.sk_paint_set_textsize(p, a1)
}

pub fn (p &C.sk_paint_t) get_text_align() SkTextAlign {
	return SkTextAlign(C.sk_paint_get_text_align(p))
}

pub fn (p &C.sk_paint_t) set_text_align(a1 SkTextAlign)  {
	C.sk_paint_set_text_align(p, a1)
}

pub fn (p &C.sk_paint_t) get_text_encoding() SkTextEncoding {
	return SkTextEncoding(C.sk_paint_get_text_encoding(p))
}

pub fn (p &C.sk_paint_t) set_text_encoding(a1 SkTextEncoding)  {
	C.sk_paint_set_text_encoding(p, a1)
}

pub fn (p &C.sk_paint_t) get_text_scale_x() f32 {
	return C.sk_paint_get_text_scale_x(p)
}

pub fn (p &C.sk_paint_t) set_text_scale_x(scale f32)  {
	C.sk_paint_set_text_scale_x(p, scale)
}

pub fn (p &C.sk_paint_t) get_text_skew_x() f32 {
	return C.sk_paint_get_text_skew_x(p)
}

pub fn (p &C.sk_paint_t) set_text_skew_x(skew f32)  {
	C.sk_paint_set_text_skew_x(p, skew)
}

pub fn (p &C.sk_paint_t) break_text(text voidptr, length u64, max_width f32, measured_width &f32) C.size_t {
	return C.sk_paint_break_text(p, text, length, max_width, measured_width)
}

pub fn (p &C.sk_paint_t) measure_text(text voidptr, length u64, cbounds &C.sk_rect_t) f32 {
	return C.sk_paint_measure_text(p, text, length, cbounds)
}

pub fn (p &C.sk_paint_t) get_text_path(text voidptr, length u64, x f32, y f32) &C.sk_path_t {
	return C.sk_paint_get_text_path(p, text, length, x, y)
}

pub fn (p &C.sk_paint_t) get_fontmetrics(cfontmetrics &C.sk_fontmetrics_t, scale f32) f32 {
	return C.sk_paint_get_fontmetrics(p, cfontmetrics, scale)
}

pub fn (p &C.sk_paint_t) get_path_effect() &C.sk_path_effect_t {
	return C.sk_paint_get_path_effect(p)
}

pub fn (p &C.sk_paint_t) set_path_effect(effect &C.sk_path_effect_t)  {
	C.sk_paint_set_path_effect(p, effect)
}

pub fn (p &C.sk_paint_t) is_linear_text() bool {
	return C.sk_paint_is_linear_text(p)
}

pub fn (p &C.sk_paint_t) set_linear_text(a1 bool)  {
	C.sk_paint_set_linear_text(p, a1)
}

pub fn (p &C.sk_paint_t) is_subpixel_text() bool {
	return C.sk_paint_is_subpixel_text(p)
}

pub fn (p &C.sk_paint_t) set_subpixel_text(a1 bool)  {
	C.sk_paint_set_subpixel_text(p, a1)
}

pub fn (p &C.sk_paint_t) is_lcd_render_text() bool {
	return C.sk_paint_is_lcd_render_text(p)
}

pub fn (p &C.sk_paint_t) set_lcd_render_text(a1 bool)  {
	C.sk_paint_set_lcd_render_text(p, a1)
}

pub fn (p &C.sk_paint_t) is_embedded_bitmap_text() bool {
	return C.sk_paint_is_embedded_bitmap_text(p)
}

pub fn (p &C.sk_paint_t) set_embedded_bitmap_text(a1 bool)  {
	C.sk_paint_set_embedded_bitmap_text(p, a1)
}

pub fn (p &C.sk_paint_t) get_hinting() SkPaintHinting {
	return SkPaintHinting(C.sk_paint_get_hinting(p))
}

pub fn (p &C.sk_paint_t) set_hinting(a1 SkPaintHinting)  {
	C.sk_paint_set_hinting(p, a1)
}

pub fn (p &C.sk_paint_t) is_autohinted() bool {
	return C.sk_paint_is_autohinted(p)
}

pub fn (p &C.sk_paint_t) set_autohinted(a1 bool)  {
	C.sk_paint_set_autohinted(p, a1)
}

pub fn (p &C.sk_paint_t) is_fake_bold_text() bool {
	return C.sk_paint_is_fake_bold_text(p)
}

pub fn (p &C.sk_paint_t) set_fake_bold_text(a1 bool)  {
	C.sk_paint_set_fake_bold_text(p, a1)
}

pub fn (p &C.sk_paint_t) is_dev_kern_text() bool {
	return C.sk_paint_is_dev_kern_text(p)
}

pub fn (p &C.sk_paint_t) set_dev_kern_text(a1 bool)  {
	C.sk_paint_set_dev_kern_text(p, a1)
}

pub fn (p &C.sk_paint_t) get_fill_path(src &C.sk_path_t, dst &C.sk_path_t, cull_rect &C.sk_rect_t, res_scale f32) bool {
	return C.sk_paint_get_fill_path(p, src, dst, cull_rect, res_scale)
}

pub fn (p &C.sk_paint_t) text_to_glyphs(text voidptr, byte_length u64, glyphs &u16) int {
	return C.sk_paint_text_to_glyphs(p, text, byte_length, glyphs)
}

pub fn (p &C.sk_paint_t) contains_text(text voidptr, byte_length u64) bool {
	return C.sk_paint_contains_text(p, text, byte_length)
}

pub fn (p &C.sk_paint_t) count_text(text voidptr, byte_length u64) int {
	return C.sk_paint_count_text(p, text, byte_length)
}

pub fn (p &C.sk_paint_t) get_text_widths(text voidptr, byte_length u64, widths &f32, bounds &C.sk_rect_t) int {
	return C.sk_paint_get_text_widths(p, text, byte_length, widths, bounds)
}