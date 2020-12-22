module skia


#include "sk_surface.h"


fn C.sk_surface_new_null(width int, height int) &C.sk_surface_t

fn C.sk_surface_new_raster(a0 &C.sk_imageinfo_t, row_bytes C.size_t, a2 &C.sk_surfaceprops_t) &C.sk_surface_t

fn C.sk_surface_new_raster_direct(a0 &C.sk_imageinfo_t, pixels voidptr, row_bytes C.size_t, release_proc C.sk_surface_raster_release_proc, context voidptr, props &C.sk_surfaceprops_t) &C.sk_surface_t

fn C.sk_surface_new_backend_texture(context &C.gr_context_t, texture &C.gr_backendtexture_t, origin C.gr_surfaceorigin_t, samples int, color_type C.sk_colortype_t, colorspace &C.sk_colorspace_t, props &C.sk_surfaceprops_t) &C.sk_surface_t

fn C.sk_surface_new_backend_render_target(context &C.gr_context_t, target &C.gr_backendrendertarget_t, origin C.gr_surfaceorigin_t, color_type C.sk_colortype_t, colorspace &C.sk_colorspace_t, props &C.sk_surfaceprops_t) &C.sk_surface_t

fn C.sk_surface_new_backend_texture_as_render_target(context &C.gr_context_t, texture &C.gr_backendtexture_t, origin C.gr_surfaceorigin_t, samples int, color_type C.sk_colortype_t, colorspace &C.sk_colorspace_t, props &C.sk_surfaceprops_t) &C.sk_surface_t

fn C.sk_surface_new_render_target(context &C.gr_context_t, budgeted bool, cinfo &C.sk_imageinfo_t, sample_count int, origin C.gr_surfaceorigin_t, props &C.sk_surfaceprops_t, should_create_with_mips bool) &C.sk_surface_t

fn C.sk_surface_unref(a0 &C.sk_surface_t) 

fn C.sk_surface_get_canvas(a0 &C.sk_surface_t) &C.sk_canvas_t

fn C.sk_surface_new_image_snapshot(a0 &C.sk_surface_t) &C.sk_image_t

fn C.sk_surface_draw(surface &C.sk_surface_t, canvas &C.sk_canvas_t, x f32, y f32, paint &C.sk_paint_t) 

fn C.sk_surface_peek_pixels(surface &C.sk_surface_t, pixmap &C.sk_pixmap_t) bool

fn C.sk_surface_read_pixels(surface &C.sk_surface_t, dst_info &C.sk_imageinfo_t, dst_pixels voidptr, dst_row_bytes C.size_t, src_x int, src_y int) bool

fn C.sk_surface_get_props(surface &C.sk_surface_t) &C.sk_surfaceprops_t

fn C.sk_surfaceprops_new(flags u32, geometry C.sk_pixelgeometry_t) &C.sk_surfaceprops_t

fn C.sk_surfaceprops_delete(props &C.sk_surfaceprops_t) 

fn C.sk_surfaceprops_get_flags(props &C.sk_surfaceprops_t) u32

fn C.sk_surfaceprops_get_pixel_geometry(props &C.sk_surfaceprops_t) C.sk_pixelgeometry_t

pub fn (s &C.sk_surface_t) unref()  {
	C.sk_surface_unref(s)
}

pub fn (s &C.sk_surface_t) get_canvas() &C.sk_canvas_t {
	return C.sk_surface_get_canvas(s)
}

pub fn (s &C.sk_surface_t) new_image_snapshot() &C.sk_image_t {
	return C.sk_surface_new_image_snapshot(s)
}

pub fn (s &C.sk_surface_t) draw(canvas &C.sk_canvas_t, x f32, y f32, paint &C.sk_paint_t)  {
	C.sk_surface_draw(s, canvas, x, y, paint)
}

pub fn (s &C.sk_surface_t) peek_pixels(pixmap &C.sk_pixmap_t) bool {
	return C.sk_surface_peek_pixels(s, pixmap)
}

pub fn (s &C.sk_surface_t) read_pixels(dst_info &C.sk_imageinfo_t, dst_pixels voidptr, dst_row_bytes u64, src_x int, src_y int) bool {
	return C.sk_surface_read_pixels(s, dst_info, dst_pixels, dst_row_bytes, src_x, src_y)
}

pub fn (s &C.sk_surface_t) get_props() &C.sk_surfaceprops_t {
	return C.sk_surface_get_props(s)
}

pub fn (s &C.sk_surfaceprops_t) delete()  {
	C.sk_surfaceprops_delete(s)
}

pub fn (s &C.sk_surfaceprops_t) get_flags() u32 {
	return C.sk_surfaceprops_get_flags(s)
}

pub fn (s &C.sk_surfaceprops_t) get_pixel_geometry() SkPixelgeometry {
	return SkPixelgeometry(C.sk_surfaceprops_get_pixel_geometry(s))
}