module skia

#include "sk_paint.h"
fn C.sk_paint_new(a0 C.void) &C.sk_paint_t

fn C.sk_paint_clone(a0 &C.sk_paint_t) &C.sk_paint_t

fn C.sk_paint_delete(a0 &C.sk_paint_t)

fn C.sk_paint_reset(a0 &C.sk_paint_t)

fn C.sk_paint_is_antialias(a0 &C.sk_paint_t) bool

fn C.sk_paint_set_antialias(a0 &C.sk_paint_t, a1 bool)

fn C.sk_paint_get_color(a0 &C.sk_paint_t) C.sk_color_t

fn C.sk_paint_set_color(a0 &C.sk_paint_t, a1 C.sk_color_t)

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

fn C.sk_paint_get_pos_text_path(cpaint &C.sk_paint_t, text voidptr, length C.size_t, pos []sk_point_t) &C.sk_path_t

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

fn C.sk_paint_get_text_intercepts(cpaint &C.sk_paint_t, text voidptr, byte_length C.size_t, x f32, y f32, bounds []float, intervals &f32) int

fn C.sk_paint_get_pos_text_intercepts(cpaint &C.sk_paint_t, text voidptr, byte_length C.size_t, pos &C.sk_point_t, bounds []float, intervals &f32) int

fn C.sk_paint_get_pos_text_h_intercepts(cpaint &C.sk_paint_t, text voidptr, byte_length C.size_t, xpos &f32, y f32, bounds []float, intervals &f32) int

fn C.sk_paint_get_pos_text_blob_intercepts(cpaint &C.sk_paint_t, blob &C.sk_textblob_t, bounds []float, intervals &f32) int
