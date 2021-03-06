module skia


#include "sk_bitmap.h"


fn C.sk_bitmap_destructor(cbitmap &C.sk_bitmap_t) 

fn C.sk_bitmap_new(a0 C.void) &C.sk_bitmap_t

fn C.sk_bitmap_get_info(cbitmap &C.sk_bitmap_t, info &C.sk_imageinfo_t) 

fn C.sk_bitmap_get_pixels(cbitmap &C.sk_bitmap_t, length &C.size_t) voidptr

fn C.sk_bitmap_get_row_bytes(cbitmap &C.sk_bitmap_t) C.size_t

fn C.sk_bitmap_get_byte_count(cbitmap &C.sk_bitmap_t) C.size_t

fn C.sk_bitmap_reset(cbitmap &C.sk_bitmap_t) 

fn C.sk_bitmap_is_null(cbitmap &C.sk_bitmap_t) bool

fn C.sk_bitmap_is_immutable(cbitmap &C.sk_bitmap_t) bool

fn C.sk_bitmap_set_immutable(cbitmap &C.sk_bitmap_t) 

fn C.sk_bitmap_is_volatile(cbitmap &C.sk_bitmap_t) bool

fn C.sk_bitmap_set_volatile(cbitmap &C.sk_bitmap_t, value bool) 

fn C.sk_bitmap_erase(cbitmap &C.sk_bitmap_t, color SkColor) 

fn C.sk_bitmap_erase_rect(cbitmap &C.sk_bitmap_t, color SkColor, rect &C.sk_irect_t) 

fn C.sk_bitmap_get_addr_8(cbitmap &C.sk_bitmap_t, x int, y int) byte

fn C.sk_bitmap_get_addr_16(cbitmap &C.sk_bitmap_t, x int, y int) u16

fn C.sk_bitmap_get_addr_32(cbitmap &C.sk_bitmap_t, x int, y int) u32

fn C.sk_bitmap_get_addr(cbitmap &C.sk_bitmap_t, x int, y int) voidptr

fn C.sk_bitmap_get_pixel_color(cbitmap &C.sk_bitmap_t, x int, y int) SkColor

fn C.sk_bitmap_set_pixel_color(cbitmap &C.sk_bitmap_t, x int, y int, color SkColor) 

fn C.sk_bitmap_ready_to_draw(cbitmap &C.sk_bitmap_t) bool

fn C.sk_bitmap_get_pixel_colors(cbitmap &C.sk_bitmap_t, colors &SkColor) 

fn C.sk_bitmap_set_pixel_colors(cbitmap &C.sk_bitmap_t, colors &SkColor) 

fn C.sk_bitmap_install_pixels(cbitmap &C.sk_bitmap_t, cinfo &C.sk_imageinfo_t, pixels voidptr, row_bytes C.size_t, release_proc C.sk_bitmap_release_proc, context voidptr) bool

fn C.sk_bitmap_install_pixels_with_pixmap(cbitmap &C.sk_bitmap_t, cpixmap &C.sk_pixmap_t) bool

fn C.sk_bitmap_install_mask_pixels(cbitmap &C.sk_bitmap_t, cmask &C.sk_mask_t) bool

fn C.sk_bitmap_try_alloc_pixels(cbitmap &C.sk_bitmap_t, requested_info &C.sk_imageinfo_t, row_bytes C.size_t) bool

fn C.sk_bitmap_try_alloc_pixels_with_flags(cbitmap &C.sk_bitmap_t, requested_info &C.sk_imageinfo_t, flags u32) bool

fn C.sk_bitmap_set_pixels(cbitmap &C.sk_bitmap_t, pixels voidptr) 

fn C.sk_bitmap_peek_pixels(cbitmap &C.sk_bitmap_t, cpixmap &C.sk_pixmap_t) bool

fn C.sk_bitmap_extract_subset(cbitmap &C.sk_bitmap_t, dst &C.sk_bitmap_t, subset &C.sk_irect_t) bool

fn C.sk_bitmap_extract_alpha(cbitmap &C.sk_bitmap_t, dst &C.sk_bitmap_t, paint &C.sk_paint_t, offset &C.sk_ipoint_t) bool

fn C.sk_bitmap_notify_pixels_changed(cbitmap &C.sk_bitmap_t) 

fn C.sk_bitmap_swap(cbitmap &C.sk_bitmap_t, cother &C.sk_bitmap_t) 

pub fn (b &C.sk_bitmap_t) destructor()  {
	C.sk_bitmap_destructor(b)
}

pub fn (b &C.sk_bitmap_t) get_info(info &C.sk_imageinfo_t)  {
	C.sk_bitmap_get_info(b, info)
}

pub fn (b &C.sk_bitmap_t) get_pixels(length &u64) voidptr {
	return C.sk_bitmap_get_pixels(b, length)
}

pub fn (b &C.sk_bitmap_t) get_row_bytes() C.size_t {
	return C.sk_bitmap_get_row_bytes(b)
}

pub fn (b &C.sk_bitmap_t) get_byte_count() C.size_t {
	return C.sk_bitmap_get_byte_count(b)
}

pub fn (b &C.sk_bitmap_t) reset()  {
	C.sk_bitmap_reset(b)
}

pub fn (b &C.sk_bitmap_t) is_null() bool {
	return C.sk_bitmap_is_null(b)
}

pub fn (b &C.sk_bitmap_t) is_immutable() bool {
	return C.sk_bitmap_is_immutable(b)
}

pub fn (b &C.sk_bitmap_t) set_immutable()  {
	C.sk_bitmap_set_immutable(b)
}

pub fn (b &C.sk_bitmap_t) is_volatile() bool {
	return C.sk_bitmap_is_volatile(b)
}

pub fn (b &C.sk_bitmap_t) set_volatile(value bool)  {
	C.sk_bitmap_set_volatile(b, value)
}

pub fn (b &C.sk_bitmap_t) erase(color SkColor)  {
	C.sk_bitmap_erase(b, color)
}

pub fn (b &C.sk_bitmap_t) erase_rect(color SkColor, rect &C.sk_irect_t)  {
	C.sk_bitmap_erase_rect(b, color, rect)
}

pub fn (b &C.sk_bitmap_t) get_addr_8(x int, y int) byte {
	return C.sk_bitmap_get_addr_8(b, x, y)
}

pub fn (b &C.sk_bitmap_t) get_addr_16(x int, y int) u16 {
	return C.sk_bitmap_get_addr_16(b, x, y)
}

pub fn (b &C.sk_bitmap_t) get_addr_32(x int, y int) u32 {
	return C.sk_bitmap_get_addr_32(b, x, y)
}

pub fn (b &C.sk_bitmap_t) get_addr(x int, y int) voidptr {
	return C.sk_bitmap_get_addr(b, x, y)
}

pub fn (b &C.sk_bitmap_t) get_pixel_color(x int, y int) SkColor {
	return C.sk_bitmap_get_pixel_color(b, x, y)
}

pub fn (b &C.sk_bitmap_t) set_pixel_color(x int, y int, color SkColor)  {
	C.sk_bitmap_set_pixel_color(b, x, y, color)
}

pub fn (b &C.sk_bitmap_t) ready_to_draw() bool {
	return C.sk_bitmap_ready_to_draw(b)
}

pub fn (b &C.sk_bitmap_t) get_pixel_colors(colors &SkColor)  {
	C.sk_bitmap_get_pixel_colors(b, colors)
}

pub fn (b &C.sk_bitmap_t) set_pixel_colors(colors &SkColor)  {
	C.sk_bitmap_set_pixel_colors(b, colors)
}

/*
pub fn (b &C.sk_bitmap_t) install_pixels(cinfo &C.sk_imageinfo_t, pixels voidptr, row_bytes u64, release_proc C.sk_bitmap_release_proc, context voidptr) bool {
	return C.sk_bitmap_install_pixels(b, cinfo, pixels, row_bytes, release_proc, context)
}
*/

pub fn (b &C.sk_bitmap_t) install_pixels_with_pixmap(cpixmap &C.sk_pixmap_t) bool {
	return C.sk_bitmap_install_pixels_with_pixmap(b, cpixmap)
}

pub fn (b &C.sk_bitmap_t) install_mask_pixels(cmask &C.sk_mask_t) bool {
	return C.sk_bitmap_install_mask_pixels(b, cmask)
}

pub fn (b &C.sk_bitmap_t) try_alloc_pixels(requested_info &C.sk_imageinfo_t, row_bytes u64) bool {
	return C.sk_bitmap_try_alloc_pixels(b, requested_info, row_bytes)
}

pub fn (b &C.sk_bitmap_t) try_alloc_pixels_with_flags(requested_info &C.sk_imageinfo_t, flags u32) bool {
	return C.sk_bitmap_try_alloc_pixels_with_flags(b, requested_info, flags)
}

pub fn (b &C.sk_bitmap_t) set_pixels(pixels voidptr)  {
	C.sk_bitmap_set_pixels(b, pixels)
}

pub fn (b &C.sk_bitmap_t) peek_pixels(cpixmap &C.sk_pixmap_t) bool {
	return C.sk_bitmap_peek_pixels(b, cpixmap)
}

pub fn (b &C.sk_bitmap_t) extract_subset(dst &C.sk_bitmap_t, subset &C.sk_irect_t) bool {
	return C.sk_bitmap_extract_subset(b, dst, subset)
}

pub fn (b &C.sk_bitmap_t) extract_alpha(dst &C.sk_bitmap_t, paint &C.sk_paint_t, offset &C.sk_ipoint_t) bool {
	return C.sk_bitmap_extract_alpha(b, dst, paint, offset)
}

pub fn (b &C.sk_bitmap_t) notify_pixels_changed()  {
	C.sk_bitmap_notify_pixels_changed(b)
}

pub fn (b &C.sk_bitmap_t) swap(cother &C.sk_bitmap_t)  {
	C.sk_bitmap_swap(b, cother)
}