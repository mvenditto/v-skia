module main

import os
import skia

fn raw_wrapper() {
	info := C.new_sk_imageinfo(
		C.NULL,
		128, 
		128, 
		skia.SkColortype.rgba_8888, 
		skia.SkAlphatype.premul
	)
	
	surf := C.sk_surface_new_raster(info, 0, C.NULL)

	paint := C.sk_paint_new()
	
	cyan := u32(0xFF00FFFF)

	C.sk_paint_set_color(paint,cyan)
	
	canvas := C.sk_surface_get_canvas(surf)

	C.sk_canvas_draw_paint(canvas, paint)

	image := C.sk_surface_new_image_snapshot(surf)

	data := C.sk_image_encode(image)
	
	dsize := C.sk_data_get_size(data)

	dbytes := C.sk_data_get_data(data)

	mut file := os.open_file('test.png', 'w+', 0o666) or { panic(err) }

	file.write_bytes(voidptr(dbytes), int(dsize))

	file.close()

	println(int(dsize))
}

fn v_api() {
	info := C.new_sk_imageinfo(
		C.NULL,
		128, 
		128, 
		skia.SkColortype.rgba_8888, 
		skia.SkAlphatype.premul
	)
	
	surf := C.sk_surface_new_raster(info, 0, C.NULL)

	paint := C.sk_paint_new()
	
	color := u32(0xFFFFFF00)

	paint.set_color(color)
	
	canvas := surf.get_canvas()

	canvas.draw_paint(paint)

	image := surf.new_image_snapshot()

	data := image.encode()
	
	dsize := data.get_size()

	dbytes := data.get_data()

	mut file := os.open_file('test2.png', 'w+', 0o666) or { panic(err) }

	file.write_bytes(voidptr(dbytes), int(dsize))

	file.close()

	println(int(dsize))
}

fn main() {
	raw_wrapper()
	v_api()
}