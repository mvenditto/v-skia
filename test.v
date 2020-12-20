module main

import os
import skia

fn main() {

	info_p := C.new_sk_imageinfo(
		C.NULL,
		128, 
		128, 
		skia.sk_colortype__rgba_8888, 
		skia.sk_alphatype__premul
	)

	info := &skia.SkImageinfo(info_p)

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