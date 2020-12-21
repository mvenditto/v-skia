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
