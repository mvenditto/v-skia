module skia


#include "sk_image.h"


fn C.sk_image_new_raster_copy(a0 &C.sk_imageinfo_t, pixels voidptr, row_bytes C.size_t) &C.sk_image_t

fn C.sk_image_new_raster_copy_with_pixmap(pixmap &C.sk_pixmap_t) &C.sk_image_t

fn C.sk_image_new_raster_data(cinfo &C.sk_imageinfo_t, pixels &C.sk_data_t, row_bytes C.size_t) &C.sk_image_t

fn C.sk_image_new_raster(pixmap &C.sk_pixmap_t, release_proc C.sk_image_raster_release_proc, context voidptr) &C.sk_image_t

fn C.sk_image_new_from_bitmap(cbitmap &C.sk_bitmap_t) &C.sk_image_t

fn C.sk_image_new_from_encoded(encoded &C.sk_data_t, subset &C.sk_irect_t) &C.sk_image_t

fn C.sk_image_new_from_texture(context &C.gr_context_t, texture &C.gr_backendtexture_t, origin C.gr_surfaceorigin_t, color_type C.sk_colortype_t, alpha C.sk_alphatype_t, color_space &C.sk_colorspace_t, release_proc C.sk_image_texture_release_proc, release_context voidptr) &C.sk_image_t

fn C.sk_image_new_from_adopted_texture(context &C.gr_context_t, texture &C.gr_backendtexture_t, origin C.gr_surfaceorigin_t, color_type C.sk_colortype_t, alpha C.sk_alphatype_t, color_space &C.sk_colorspace_t) &C.sk_image_t

fn C.sk_image_new_from_picture(picture &C.sk_picture_t, dimensions &C.sk_isize_t, matrix &C.sk_matrix_t, paint &C.sk_paint_t) &C.sk_image_t

fn C.sk_image_make_subset(cimage &C.sk_image_t, subset &C.sk_irect_t) &C.sk_image_t

fn C.sk_image_make_texture_image(cimage &C.sk_image_t, context &C.gr_context_t, colorspace &C.sk_colorspace_t) &C.sk_image_t

fn C.sk_image_make_non_texture_image(cimage &C.sk_image_t) &C.sk_image_t

fn C.sk_image_make_raster_image(cimage &C.sk_image_t) &C.sk_image_t

fn C.sk_image_make_with_filter(cimage &C.sk_image_t, filter &C.sk_imagefilter_t, subset &C.sk_irect_t, clip_bounds &C.sk_irect_t, out_subset &C.sk_irect_t, out_offset &C.sk_ipoint_t) &C.sk_image_t

fn C.sk_image_ref(a0 &C.sk_image_t) 

fn C.sk_image_unref(a0 &C.sk_image_t) 

fn C.sk_image_get_width(a0 &C.sk_image_t) int

fn C.sk_image_get_height(a0 &C.sk_image_t) int

fn C.sk_image_get_unique_id(a0 &C.sk_image_t) u32

fn C.sk_image_get_alpha_type(a0 &C.sk_image_t) C.sk_alphatype_t

fn C.sk_image_get_color_type(a0 &C.sk_image_t) C.sk_colortype_t

fn C.sk_image_get_colorspace(a0 &C.sk_image_t) &C.sk_colorspace_t

fn C.sk_image_is_alpha_only(a0 &C.sk_image_t) bool

fn C.sk_image_make_shader(a0 &C.sk_image_t, tile_x C.sk_shader_tilemode_t, tile_y C.sk_shader_tilemode_t, local_matrix &C.sk_matrix_t) &C.sk_shader_t

fn C.sk_image_peek_pixels(image &C.sk_image_t, pixmap &C.sk_pixmap_t) bool

fn C.sk_image_is_texture_backed(image &C.sk_image_t) bool

fn C.sk_image_is_lazy_generated(image &C.sk_image_t) bool

fn C.sk_image_is_valid(image &C.sk_image_t, context &C.gr_context_t) bool

fn C.sk_image_read_pixels(image &C.sk_image_t, dst_info &C.sk_imageinfo_t, dst_pixels voidptr, dst_row_bytes C.size_t, src_x int, src_y int, caching_hint C.sk_image_caching_hint_t) bool

fn C.sk_image_read_pixels_into_pixmap(image &C.sk_image_t, dst &C.sk_pixmap_t, src_x int, src_y int, caching_hint C.sk_image_caching_hint_t) bool

fn C.sk_image_scale_pixels(image &C.sk_image_t, dst &C.sk_pixmap_t, quality C.sk_filter_quality_t, caching_hint C.sk_image_caching_hint_t) bool

fn C.sk_image_ref_encoded(a0 &C.sk_image_t) &C.sk_data_t

fn C.sk_image_encode(a0 &C.sk_image_t) &C.sk_data_t

fn C.sk_image_encode_specific(cimage &C.sk_image_t, encoder C.sk_encoded_image_format_t, quality int) &C.sk_data_t