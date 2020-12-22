module skia

#flag linux -I @VROOT/c
#flag linux -L @VROOT/../lib
#flag linux -lskia
#flag linux -D VKAPI_ATTR=""
#flag linux -D VKAPI_CALL=""
#flag linux -D VKAPI_PTR=""
#flag linux -D SK_C_PLUS_PLUS_BEGIN_GUARD=""
#flag linux -D SK_C_PLUS_PLUS_END_GUARD=""
#include "sk_types.h"


struct C.sk_refcnt_t {}

pub type SkRefcnt = C.sk_refcnt_t

struct C.sk_nvrefcnt_t {}

pub type SkNvrefcnt = C.sk_nvrefcnt_t

pub type SkColor = u32
pub struct C.sk_color_t { }

pub type SkPmcolor = u32
pub struct C.sk_pmcolor_t { }

pub struct C.sk_color4f_t {
pub mut:
	fR f32
	fG f32
	fB f32
	fA f32
}

pub type SkColor4f = C.sk_color4f_t

pub enum SkColortype {
	unknown = 0
	alpha_8
	rgb_565
	argb_4444
	rgba_8888
	rgb_888_x
	bgra_8888
	rgba_1010102
	rgb_101010_x
	gray_8
	rgba_f16
}

pub enum SkAlphatype {
	unknown
	opaque
	premul
	unpremul
}

pub enum SkPixelgeometry {
	unknown
	rgb_h
	bgr_h
	rgb_v
	bgr_v
}

pub enum SkSurfacepropsFlags {
	none_sk_surface_props_flags = 0
	use_device_independent_fonts_sk_surface_props_flags = 1
}

struct C.sk_surfaceprops_t {}

pub type SkSurfaceprops = C.sk_surfaceprops_t

pub struct C.sk_point_t {
pub mut:
	x f32
	y f32
}

pub type SkPoint = C.sk_point_t

pub type SkVector = C.sk_point_t
pub struct C.sk_vector_t { }

pub struct C.sk_irect_t {
pub mut:
	left int
	top int
	right int
	bottom int
}

pub type SkIrect = C.sk_irect_t

pub struct C.sk_rect_t {
pub mut:
	left f32
	top f32
	right f32
	bottom f32
}

pub type SkRect = C.sk_rect_t

pub struct C.sk_matrix_t {
pub mut:
	scaleX f32
	skewX f32
	transX f32
	skewY f32
	scaleY f32
	transY f32
	persp0 f32
	persp1 f32
	persp2 f32
}

pub type SkMatrix = C.sk_matrix_t

struct C.sk_matrix44_t {}

pub type SkMatrix44 = C.sk_matrix44_t

pub enum SkMatrix44TypeMask {
	identity = 0
	translate = 0x01
	scale = 0x02
	affine = 0x04
	perspective = 0x08
}

struct C.sk_canvas_t {}

pub type SkCanvas = C.sk_canvas_t

struct C.sk_nodraw_canvas_t {}

pub type SkNodrawCanvas = C.sk_nodraw_canvas_t

struct C.sk_nway_canvas_t {}

pub type SkNwayCanvas = C.sk_nway_canvas_t

struct C.sk_overdraw_canvas_t {}

pub type SkOverdrawCanvas = C.sk_overdraw_canvas_t

struct C.sk_data_t {}

pub type SkData = C.sk_data_t

struct C.sk_drawable_t {}

pub type SkDrawable = C.sk_drawable_t

struct C.sk_image_t {}

pub type SkImage = C.sk_image_t

struct C.sk_maskfilter_t {}

pub type SkMaskfilter = C.sk_maskfilter_t

struct C.sk_paint_t {}

pub type SkPaint = C.sk_paint_t

struct C.sk_path_t {}

pub type SkPath = C.sk_path_t

struct C.sk_picture_t {}

pub type SkPicture = C.sk_picture_t

struct C.sk_picture_recorder_t {}

pub type SkPictureRecorder = C.sk_picture_recorder_t

struct C.sk_shader_t {}

pub type SkShader = C.sk_shader_t

struct C.sk_surface_t {}

pub type SkSurface = C.sk_surface_t

struct C.sk_region_t {}

pub type SkRegion = C.sk_region_t

struct C.sk_region_iterator_t {}

pub type SkRegionIterator = C.sk_region_iterator_t

struct C.sk_region_cliperator_t {}

pub type SkRegionCliperator = C.sk_region_cliperator_t

struct C.sk_region_spanerator_t {}

pub type SkRegionSpanerator = C.sk_region_spanerator_t

pub enum SkBlendmode {
	clear
	src
	dst
	srcover
	dstover
	srcin
	dstin
	srcout
	dstout
	srcatop
	dstatop
	xor
	plus
	modulate
	screen
	overlay
	darken
	lighten
	colordodge
	colorburn
	hardlight
	softlight
	difference
	exclusion
	multiply
	hue
	saturation
	color
	luminosity
}

pub struct C.sk_point3_t {
pub mut:
	x f32
	y f32
	z f32
}

pub type SkPoint3 = C.sk_point3_t

pub struct C.sk_ipoint_t {
pub mut:
	x int
	y int
}

pub type SkIpoint = C.sk_ipoint_t

pub struct C.sk_size_t {
pub mut:
	w f32
	h f32
}

pub type SkSize = C.sk_size_t

pub struct C.sk_isize_t {
pub mut:
	w int
	h int
}

pub type SkIsize = C.sk_isize_t

pub struct C.sk_fontmetrics_t {
pub mut:
	fFlags u32
	fTop f32
	fAscent f32
	fDescent f32
	fBottom f32
	fLeading f32
	fAvgCharWidth f32
	fMaxCharWidth f32
	fXMin f32
	fXMax f32
	fXHeight f32
	fCapHeight f32
	fUnderlineThickness f32
	fUnderlinePosition f32
	fStrikeoutThickness f32
	fStrikeoutPosition f32
}

pub type SkFontmetrics = C.sk_fontmetrics_t

struct C.sk_string_t {}

pub type SkString = C.sk_string_t

struct C.sk_bitmap_t {}

pub type SkBitmap = C.sk_bitmap_t

struct C.sk_pixmap_t {}

pub type SkPixmap = C.sk_pixmap_t

struct C.sk_colorfilter_t {}

pub type SkColorfilter = C.sk_colorfilter_t

struct C.sk_imagefilter_t {}

pub type SkImagefilter = C.sk_imagefilter_t

struct C.sk_imagefilter_croprect_t {}

pub type SkImagefilterCroprect = C.sk_imagefilter_croprect_t

struct C.sk_typeface_t {}

pub type SkTypeface = C.sk_typeface_t

pub type SkFontTableTag = u32
pub struct C.sk_font_table_tag_t { }

struct C.sk_fontmgr_t {}

pub type SkFontmgr = C.sk_fontmgr_t

struct C.sk_fontstyle_t {}

pub type SkFontstyle = C.sk_fontstyle_t

struct C.sk_fontstyleset_t {}

pub type SkFontstyleset = C.sk_fontstyleset_t

struct C.sk_codec_t {}

pub type SkCodec = C.sk_codec_t

struct C.sk_colorspace_t {}

pub type SkColorspace = C.sk_colorspace_t

struct C.sk_stream_t {}

pub type SkStream = C.sk_stream_t

struct C.sk_stream_filestream_t {}

pub type SkStreamFilestream = C.sk_stream_filestream_t

struct C.sk_stream_asset_t {}

pub type SkStreamAsset = C.sk_stream_asset_t

struct C.sk_stream_memorystream_t {}

pub type SkStreamMemorystream = C.sk_stream_memorystream_t

struct C.sk_stream_streamrewindable_t {}

pub type SkStreamStreamrewindable = C.sk_stream_streamrewindable_t

struct C.sk_wstream_t {}

pub type SkWstream = C.sk_wstream_t

struct C.sk_wstream_filestream_t {}

pub type SkWstreamFilestream = C.sk_wstream_filestream_t

struct C.sk_wstream_dynamicmemorystream_t {}

pub type SkWstreamDynamicmemorystream = C.sk_wstream_dynamicmemorystream_t

struct C.sk_document_t {}

pub type SkDocument = C.sk_document_t

pub enum SkEncoding {
	utf8
	utf16
	utf32
}

pub enum SkPointMode {
	points
	lines
	polygon
}

pub enum SkTextAlign {
	left
	center
	right
}

pub enum SkTextEncoding {
	utf8
	utf16
	utf32
	glyph_id
}

pub enum SkPathFilltype {
	winding
	evenodd
	inverse_winding
	inverse_evenodd
}

pub enum SkFontStyleSlant {
	upright = 0
	italic = 1
	oblique = 2
}

pub enum SkFilterQuality {
	@none
	low
	medium
	high
}

pub enum SkCropRectFlags {
	has_none_sk_crop_rect_flag = 0x00
	has_left_sk_crop_rect_flag = 0x01
	has_top_sk_crop_rect_flag = 0x02
	has_width_sk_crop_rect_flag = 0x04
	has_height_sk_crop_rect_flag = 0x08
	has_all_sk_crop_rect_flag = 0x0F
}

pub enum SkDropShadowImageFilterShadowMode {
	draw_shadow_and_foreground
	draw_shadow_only
}

pub enum SkDisplacementMapEffectChannelSelectorType {
	unknown
	r
	g
	b
	a
}

pub enum SkMatrixConvolutionTilemode {
	clamp
	repeat
	clamp_to_black
}

pub enum SkRegionOp {
	difference
	intersect
	@union
	xor
	reverse_difference
	replace
}

pub enum SkClipop {
	difference
	intersect
}

pub enum SkEncodedImageFormat {
	bmp_sk_encoded_format
	gif_sk_encoded_format
	ico_sk_encoded_format
	jpeg_sk_encoded_format
	png_sk_encoded_format
	wbmp_sk_encoded_format
	webp_sk_encoded_format
	pkm_sk_encoded_format
	ktx_sk_encoded_format
	astc_sk_encoded_format
	dng_sk_encoded_format
	heif_sk_encoded_format
}

pub enum SkEncodedorigin {
	top_left_sk_encoded_origin = 1
	top_right_sk_encoded_origin = 2
	bottom_right_sk_encoded_origin = 3
	bottom_left_sk_encoded_origin = 4
	left_top_sk_encoded_origin = 5
	right_top_sk_encoded_origin = 6
	right_bottom_sk_encoded_origin = 7
	left_bottom_sk_encoded_origin = 8
}

pub enum SkCodecResult {
	success
	incomplete_input
	error_in_input
	invalid_conversion
	invalid_scale
	invalid_parameters
	invalid_input
	could_not_rewind
	internal_error
	unimplemented
}

pub enum SkCodecZeroInitialized {
	yes
	no
}

pub enum SkTransferFunctionBehavior {
	respect
	ignore
}

pub struct C.sk_codec_options_t {
pub mut:
	fZeroInitialized C.sk_codec_zero_initialized_t
	fSubset &C.sk_irect_t
	fFrameIndex int
	fPriorFrame int
	fPremulBehavior C.sk_transfer_function_behavior_t
}

pub type SkCodecOptions = C.sk_codec_options_t

pub enum SkCodecScanlineOrder {
	top_down
	bottom_up
}

pub enum SkPathVerb {
	move
	line
	quad
	conic
	cubic
	close
	done
}

struct C.sk_path_iterator_t {}

pub type SkPathIterator = C.sk_path_iterator_t

struct C.sk_path_rawiterator_t {}

pub type SkPathRawiterator = C.sk_path_rawiterator_t

pub enum SkPathAddMode {
	append
	extend
}

pub enum SkPathSegmentMask {
	line = 1
	quad = 2
	conic = 4
	cubic = 8
}

pub enum SkPathEffect1dStyle {
	translate_sk_path_effect_1_d_style
	rotate_sk_path_effect_1_d_style
	morph_sk_path_effect_1_d_style
}

pub enum SkPathEffectTrimMode {
	normal
	inverted
}

struct C.sk_path_effect_t {}

pub type SkPathEffect = C.sk_path_effect_t

pub enum SkStrokeCap {
	butt
	round
	square
}

pub enum SkStrokeJoin {
	miter
	round
	bevel
}

pub enum SkShaderTilemode {
	clamp
	repeat
	mirror
}

pub enum SkBlurstyle {
	normal_sk_blur_style
	solid_sk_blur_style
	outer_sk_blur_style
	inner_sk_blur_style
}

pub enum SkPathDirection {
	cw
	ccw
}

pub enum SkPathArcSize {
	small
	large
}

pub enum SkPaintStyle {
	fill
	stroke
	stroke_and_fill
}

pub enum SkPaintHinting {
	no_hinting
	slight_hinting
	normal_hinting
	full_hinting
}

struct C.sk_colortable_t {}

pub type SkColortable = C.sk_colortable_t

struct C.sk_pixelref_factory_t {}

pub type SkPixelrefFactory = C.sk_pixelref_factory_t

pub enum SkMaskFormat {
	bw
	a8
	three_d
	argb32
	lcd16
}

pub struct C.sk_mask_t {
pub mut:
	fImage &byte
	fBounds C.sk_irect_t
	fRowBytes u32
	fFormat C.sk_mask_format_t
}

pub type SkMask = C.sk_mask_t

pub enum SkPathop {
	difference
	intersect
	@union
	xor
	reverse_difference
}

struct C.sk_opbuilder_t {}

pub type SkOpbuilder = C.sk_opbuilder_t

pub enum SkPathConvexity {
	unknown
	convex
	concave
}

pub enum SkLatticeRecttype {
	default_sk_lattice_rect_type
	transparent_sk_lattice_rect_type
	fixed_color_sk_lattice_rect_type
}

pub struct C.sk_lattice_t {
pub mut:
	fXDivs &int
	fYDivs &int
	fRectTypes &C.sk_lattice_recttype_t
	fXCount int
	fYCount int
	fBounds &C.sk_irect_t
	fColors &C.sk_color_t
}

pub type SkLattice = C.sk_lattice_t

struct C.sk_pathmeasure_t {}

pub type SkPathmeasure = C.sk_pathmeasure_t

pub enum SkPathmeasureMatrixflags {
	get_position = 0x01
	get_tangent = 0x02
	get_pos_and_tan = 3
}

pub enum SkImageCachingHint {
	allow
	disallow
}

pub enum SkBitmapAllocflags {
	none_sk_bitmap_alloc_flags = 0
	zero_pixels_sk_bitmap_alloc_flags = 1
}

pub struct C.sk_time_datetime_t {
pub mut:
	fTimeZoneMinutes i16
	fYear u16
	fMonth byte
	fDayOfWeek byte
	fDay byte
	fHour byte
	fMinute byte
	fSecond byte
}

pub type SkTimeDatetime = C.sk_time_datetime_t

pub struct C.sk_document_pdf_metadata_t {
pub mut:
	fTitle &C.sk_string_t
	fAuthor &C.sk_string_t
	fSubject &C.sk_string_t
	fKeywords &C.sk_string_t
	fCreator &C.sk_string_t
	fProducer &C.sk_string_t
	fCreation &C.sk_time_datetime_t
	fModified &C.sk_time_datetime_t
	fRasterDPI f32
	fPDFA bool
	fEncodingQuality int
}

pub type SkDocumentPdfMetadata = C.sk_document_pdf_metadata_t

pub struct C.sk_imageinfo_t {
pub mut:
	colorspace &C.sk_colorspace_t
	width int
	height int
	colorType C.sk_colortype_t
	alphaType C.sk_alphatype_t
}

pub type SkImageinfo = C.sk_imageinfo_t

pub enum SkCodecanimationDisposalmethod {
	keep_sk_codec_animation_disposal_method = 1
	restore_bg_color_sk_codec_animation_disposal_method = 2
	restore_previous_sk_codec_animation_disposal_method = 3
}

pub struct C.sk_codec_frameinfo_t {
pub mut:
	fRequiredFrame int
	fDuration int
	fFullyReceived bool
	fAlphaType C.sk_alphatype_t
	fDisposalMethod C.sk_codecanimation_disposalmethod_t
}

pub type SkCodecFrameinfo = C.sk_codec_frameinfo_t

struct C.sk_xmlstreamwriter_t {}

pub type SkXmlstreamwriter = C.sk_xmlstreamwriter_t

struct C.sk_xmlwriter_t {}

pub type SkXmlwriter = C.sk_xmlwriter_t

struct C.sk_svgcanvas_t {}

pub type SkSvgcanvas = C.sk_svgcanvas_t

struct C.sk_3dview_t {}

pub type Sk3dview = C.sk_3dview_t

pub enum SkVerticesVertexMode {
	triangles
	triangle_strip
	triangle_fan
}

struct C.sk_vertices_t {}

pub type SkVertices = C.sk_vertices_t

pub enum SkGammaNamed {
	linear
	srgb
	two_dot_two_curve
	non_standard
}

pub enum SkColorspaceType {
	rgb
	cmyk
	gray
}

pub enum SkColorspaceRenderTargetGamma {
	linear
	srgb
}

pub enum SkColorspaceGamut {
	srgb
	adobe_rgb
	dcip3_d65
	rec2020
}

pub struct C.sk_colorspace_transfer_fn_t {
pub mut:
	fG f32
	fA f32
	fB f32
	fC f32
	fD f32
	fE f32
	fF f32
}

pub type SkColorspaceTransferFn = C.sk_colorspace_transfer_fn_t

pub struct C.sk_colorspaceprimaries_t {
pub mut:
	fRX f32
	fRY f32
	fGX f32
	fGY f32
	fBX f32
	fBY f32
	fWX f32
	fWY f32
}

pub type SkColorspaceprimaries = C.sk_colorspaceprimaries_t

pub enum SkHighcontrastconfigInvertstyle {
	no_invert_sk_high_contrast_config_invert_style
	invert_brightness_sk_high_contrast_config_invert_style
	invert_lightness_sk_high_contrast_config_invert_style
}

pub struct C.sk_highcontrastconfig_t {
pub mut:
	fGrayscale bool
	fInvertStyle C.sk_highcontrastconfig_invertstyle_t
	fContrast f32
}

pub type SkHighcontrastconfig = C.sk_highcontrastconfig_t

pub enum SkPngencoderFilterflags {
	zero_sk_pngencoder_filter_flags = 0x00
	none_sk_pngencoder_filter_flags = 0x08
	sub_sk_pngencoder_filter_flags = 0x10
	up_sk_pngencoder_filter_flags = 0x20
	avg_sk_pngencoder_filter_flags = 0x40
	paeth_sk_pngencoder_filter_flags = 0x80
	all_sk_pngencoder_filter_flags = 248
}

pub struct C.sk_pngencoder_options_t {
pub mut:
	fFilterFlags C.sk_pngencoder_filterflags_t
	fZLibLevel int
	fUnpremulBehavior C.sk_transfer_function_behavior_t
	fComments voidptr
}

pub type SkPngencoderOptions = C.sk_pngencoder_options_t

pub enum SkJpegencoderDownsample {
	downsample_420
	downsample_422
	downsample_444
}

pub enum SkJpegencoderAlphaoption {
	ignore_sk_jpegencoder_alpha_option
	blend_on_black_sk_jpegencoder_alpha_option
}

pub struct C.sk_jpegencoder_options_t {
pub mut:
	fQuality int
	fDownsample C.sk_jpegencoder_downsample_t
	fAlphaOption C.sk_jpegencoder_alphaoption_t
	fBlendBehavior C.sk_transfer_function_behavior_t
}

pub type SkJpegencoderOptions = C.sk_jpegencoder_options_t

pub enum SkWebpencoderCompression {
	lossy_sk_webpencoder_comptression
	lossless_sk_webpencoder_comptression
}

pub struct C.sk_webpencoder_options_t {
pub mut:
	fCompression C.sk_webpencoder_compression_t
	fQuality f32
	fUnpremulBehavior C.sk_transfer_function_behavior_t
}

pub type SkWebpencoderOptions = C.sk_webpencoder_options_t

struct C.sk_rrect_t {}

pub type SkRrect = C.sk_rrect_t

pub enum SkRrectType {
	empty
	rect
	oval
	simple
	nine_patch
	complex
}

pub enum SkRrectCorner {
	upper_left
	upper_right
	lower_right
	lower_left
}

struct C.sk_textblob_t {}

pub type SkTextblob = C.sk_textblob_t

struct C.sk_textblob_builder_t {}

pub type SkTextblobBuilder = C.sk_textblob_builder_t

pub struct C.sk_textblob_builder_runbuffer_t {
pub mut:
	glyphs voidptr
	pos voidptr
	utf8text voidptr
	clusters voidptr
}

pub type SkTextblobBuilderRunbuffer = C.sk_textblob_builder_runbuffer_t

pub struct C.sk_rsxform_t {
pub mut:
	fSCos f32
	fSSin f32
	fTX f32
	fTY f32
}

pub type SkRsxform = C.sk_rsxform_t