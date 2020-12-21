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

fn C.sk_bitmap_erase(cbitmap &C.sk_bitmap_t, color C.sk_color_t)

fn C.sk_bitmap_erase_rect(cbitmap &C.sk_bitmap_t, color C.sk_color_t, rect &C.sk_irect_t)

fn C.sk_bitmap_get_addr_8(cbitmap &C.sk_bitmap_t, x int, y int) byte

fn C.sk_bitmap_get_addr_16(cbitmap &C.sk_bitmap_t, x int, y int) u16

fn C.sk_bitmap_get_addr_32(cbitmap &C.sk_bitmap_t, x int, y int) u32

fn C.sk_bitmap_get_addr(cbitmap &C.sk_bitmap_t, x int, y int) voidptr

fn C.sk_bitmap_get_pixel_color(cbitmap &C.sk_bitmap_t, x int, y int) C.sk_color_t

fn C.sk_bitmap_set_pixel_color(cbitmap &C.sk_bitmap_t, x int, y int, color C.sk_color_t)

fn C.sk_bitmap_ready_to_draw(cbitmap &C.sk_bitmap_t) bool

fn C.sk_bitmap_get_pixel_colors(cbitmap &C.sk_bitmap_t, colors &C.sk_color_t)

fn C.sk_bitmap_set_pixel_colors(cbitmap &C.sk_bitmap_t, colors &C.sk_color_t)

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
