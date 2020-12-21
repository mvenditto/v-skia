module skia


#include "sk_canvas.h"


fn C.sk_canvas_destroy(a0 &C.sk_canvas_t) 

fn C.sk_canvas_save(a0 &C.sk_canvas_t) int

fn C.sk_canvas_save_layer(a0 &C.sk_canvas_t, a1 &C.sk_rect_t, a2 &C.sk_paint_t) int

fn C.sk_canvas_restore(a0 &C.sk_canvas_t) 

fn C.sk_canvas_translate(a0 &C.sk_canvas_t, dx f32, dy f32) 

fn C.sk_canvas_scale(a0 &C.sk_canvas_t, sx f32, sy f32) 

fn C.sk_canvas_rotate_degrees(a0 &C.sk_canvas_t, degrees f32) 

fn C.sk_canvas_rotate_radians(a0 &C.sk_canvas_t, radians f32) 

fn C.sk_canvas_skew(a0 &C.sk_canvas_t, sx f32, sy f32) 

fn C.sk_canvas_concat(a0 &C.sk_canvas_t, a1 &C.sk_matrix_t) 

fn C.sk_canvas_quick_reject(a0 &C.sk_canvas_t, a1 &C.sk_rect_t) bool

fn C.sk_canvas_clip_region(canvas &C.sk_canvas_t, region &C.sk_region_t, op C.sk_clipop_t) 

fn C.sk_canvas_draw_paint(a0 &C.sk_canvas_t, a1 &C.sk_paint_t) 

fn C.sk_canvas_draw_rect(a0 &C.sk_canvas_t, a1 &C.sk_rect_t, a2 &C.sk_paint_t) 

fn C.sk_canvas_draw_rrect(a0 &C.sk_canvas_t, a1 &C.sk_rrect_t, a2 &C.sk_paint_t) 

fn C.sk_canvas_draw_region(a0 &C.sk_canvas_t, a1 &C.sk_region_t, a2 &C.sk_paint_t) 

fn C.sk_canvas_draw_circle(a0 &C.sk_canvas_t, cx f32, cy f32, rad f32, a4 &C.sk_paint_t) 

fn C.sk_canvas_draw_oval(a0 &C.sk_canvas_t, a1 &C.sk_rect_t, a2 &C.sk_paint_t) 

fn C.sk_canvas_draw_path(a0 &C.sk_canvas_t, a1 &C.sk_path_t, a2 &C.sk_paint_t) 

fn C.sk_canvas_draw_image(a0 &C.sk_canvas_t, a1 &C.sk_image_t, x f32, y f32, a4 &C.sk_paint_t) 

fn C.sk_canvas_draw_image_rect(a0 &C.sk_canvas_t, a1 &C.sk_image_t, src &C.sk_rect_t, dst &C.sk_rect_t, a4 &C.sk_paint_t) 

fn C.sk_canvas_draw_picture(a0 &C.sk_canvas_t, a1 &C.sk_picture_t, a2 &C.sk_matrix_t, a3 &C.sk_paint_t) 

fn C.sk_canvas_draw_drawable(a0 &C.sk_canvas_t, a1 &C.sk_drawable_t, a2 &C.sk_matrix_t) 

fn C.sk_canvas_clear(a0 &C.sk_canvas_t, a1 C.sk_color_t) 

fn C.sk_canvas_discard(a0 &C.sk_canvas_t) 

fn C.sk_canvas_get_save_count(a0 &C.sk_canvas_t) int

fn C.sk_canvas_restore_to_count(a0 &C.sk_canvas_t, save_count int) 

fn C.sk_canvas_draw_color(ccanvas &C.sk_canvas_t, color C.sk_color_t, mode C.sk_blendmode_t) 

fn C.sk_canvas_draw_points(a0 &C.sk_canvas_t, a1 C.sk_point_mode_t, a2 C.size_t, a3 C.[]sk_point_t, a4 &C.sk_paint_t) 

fn C.sk_canvas_draw_point(a0 &C.sk_canvas_t, a1 f32, a2 f32, a3 &C.sk_paint_t) 

fn C.sk_canvas_draw_line(ccanvas &C.sk_canvas_t, x0 f32, y0 f32, x1 f32, y1 f32, cpaint &C.sk_paint_t) 

fn C.sk_canvas_draw_text(a0 &C.sk_canvas_t, text charptr, byte_length C.size_t, x f32, y f32, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_pos_text(a0 &C.sk_canvas_t, text charptr, byte_length C.size_t, a3 C.[]sk_point_t, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_text_on_path(a0 &C.sk_canvas_t, text charptr, byte_length C.size_t, path &C.sk_path_t, h_offset f32, v_offset f32, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_text_blob(a0 &C.sk_canvas_t, text &C.sk_textblob_t, x f32, y f32, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_bitmap(ccanvas &C.sk_canvas_t, bitmap &C.sk_bitmap_t, left f32, top f32, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_bitmap_rect(ccanvas &C.sk_canvas_t, bitmap &C.sk_bitmap_t, src &C.sk_rect_t, dst &C.sk_rect_t, paint &C.sk_paint_t) 

fn C.sk_canvas_reset_matrix(ccanvas &C.sk_canvas_t) 

fn C.sk_canvas_set_matrix(ccanvas &C.sk_canvas_t, matrix &C.sk_matrix_t) 

fn C.sk_canvas_get_total_matrix(ccanvas &C.sk_canvas_t, matrix &C.sk_matrix_t) 

fn C.sk_canvas_draw_round_rect(a0 &C.sk_canvas_t, a1 &C.sk_rect_t, rx f32, ry f32, a4 &C.sk_paint_t) 

fn C.sk_canvas_clip_rect_with_operation(t &C.sk_canvas_t, crect &C.sk_rect_t, op C.sk_clipop_t, do_aa bool) 

fn C.sk_canvas_clip_path_with_operation(t &C.sk_canvas_t, crect &C.sk_path_t, op C.sk_clipop_t, do_aa bool) 

fn C.sk_canvas_clip_rrect_with_operation(t &C.sk_canvas_t, crect &C.sk_rrect_t, op C.sk_clipop_t, do_aa bool) 

fn C.sk_canvas_get_local_clip_bounds(t &C.sk_canvas_t, cbounds &C.sk_rect_t) bool

fn C.sk_canvas_get_device_clip_bounds(t &C.sk_canvas_t, cbounds &C.sk_irect_t) bool

fn C.sk_canvas_flush(ccanvas &C.sk_canvas_t) 

fn C.sk_canvas_new_from_bitmap(bitmap &C.sk_bitmap_t) &C.sk_canvas_t

fn C.sk_canvas_draw_annotation(t &C.sk_canvas_t, rect &C.sk_rect_t, key charptr, value &C.sk_data_t) 

fn C.sk_canvas_draw_url_annotation(t &C.sk_canvas_t, rect &C.sk_rect_t, value &C.sk_data_t) 

fn C.sk_canvas_draw_named_destination_annotation(t &C.sk_canvas_t, point &C.sk_point_t, value &C.sk_data_t) 

fn C.sk_canvas_draw_link_destination_annotation(t &C.sk_canvas_t, rect &C.sk_rect_t, value &C.sk_data_t) 

fn C.sk_canvas_draw_bitmap_lattice(t &C.sk_canvas_t, bitmap &C.sk_bitmap_t, lattice &C.sk_lattice_t, dst &C.sk_rect_t, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_image_lattice(t &C.sk_canvas_t, image &C.sk_image_t, lattice &C.sk_lattice_t, dst &C.sk_rect_t, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_bitmap_nine(t &C.sk_canvas_t, bitmap &C.sk_bitmap_t, center &C.sk_irect_t, dst &C.sk_rect_t, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_image_nine(t &C.sk_canvas_t, image &C.sk_image_t, center &C.sk_irect_t, dst &C.sk_rect_t, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_vertices(ccanvas &C.sk_canvas_t, vertices &C.sk_vertices_t, mode C.sk_blendmode_t, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_arc(ccanvas &C.sk_canvas_t, oval &C.sk_rect_t, start_angle f32, sweep_angle f32, use_center bool, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_drrect(ccanvas &C.sk_canvas_t, outer &C.sk_rrect_t, inner &C.sk_rrect_t, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_atlas(ccanvas &C.sk_canvas_t, atlas &C.sk_image_t, xform &C.sk_rsxform_t, tex &C.sk_rect_t, colors &C.sk_color_t, count int, mode C.sk_blendmode_t, cull_rect &C.sk_rect_t, paint &C.sk_paint_t) 

fn C.sk_canvas_draw_patch(ccanvas &C.sk_canvas_t, cubics &C.sk_point_t, colors &C.sk_color_t, tex_coords &C.sk_point_t, mode C.sk_blendmode_t, paint &C.sk_paint_t) 

// fn C.sk_canvas_is_clip_empty(ccanvas &C.sk_canvas_t) bool

// fn C.sk_canvas_is_clip_rect(ccanvas &C.sk_canvas_t) bool

fn C.sk_nodraw_canvas_new(width int, height int) &C.sk_nodraw_canvas_t

fn C.sk_nodraw_canvas_destroy(a0 &C.sk_nodraw_canvas_t) 

fn C.sk_nway_canvas_new(width int, height int) &C.sk_nway_canvas_t

fn C.sk_nway_canvas_destroy(a0 &C.sk_nway_canvas_t) 

fn C.sk_nway_canvas_add_canvas(a0 &C.sk_nway_canvas_t, canvas &C.sk_canvas_t) 

fn C.sk_nway_canvas_remove_canvas(a0 &C.sk_nway_canvas_t, canvas &C.sk_canvas_t) 

fn C.sk_nway_canvas_remove_all(a0 &C.sk_nway_canvas_t) 

fn C.sk_overdraw_canvas_new(canvas &C.sk_canvas_t) &C.sk_overdraw_canvas_t

fn C.sk_overdraw_canvas_destroy(canvas &C.sk_overdraw_canvas_t) 

pub fn (c &C.sk_canvas_t) draw_paint(paint &C.sk_paint_t) {
	C.sk_canvas_draw_paint(c, paint)
}

pub fn (c &C.sk_canvas_t) get_save_count() int {
	return C.sk_canvas_get_save_count(c)
}

pub fn (c &C.sk_canvas_t) set_matrix(matrix &C.sk_matrix_t)  {
	C.sk_canvas_set_matrix(c, matrix)
}

pub fn (c &C.sk_canvas_t) get_total_matrix(matrix &C.sk_matrix_t)  {
	C.sk_canvas_get_total_matrix(c, matrix)
}

pub fn (c &C.sk_canvas_t) get_local_clip_bounds(cbounds &C.sk_rect_t) bool {
	return C.sk_canvas_get_local_clip_bounds(c, cbounds)
}

pub fn (c &C.sk_canvas_t) get_device_clip_bounds(cbounds &C.sk_irect_t) bool {
	return C.sk_canvas_get_device_clip_bounds(c, cbounds)
}

/*
pub fn (c &C.sk_canvas_t) is_clip_empty() bool {
	return C.sk_canvas_is_clip_empty(c)
}

pub fn (c &C.sk_canvas_t) is_clip_rect() bool {
	return C.sk_canvas_is_clip_rect(c)
}
*/