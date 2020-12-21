module skia

#flag linux -I @VROOT/c
// #flag linux -lfontconfig
#flag linux -L @VROOT/../lib
#flag linux -lskia
#flag linux -D VKAPI_ATTR=""
#flag linux -D VKAPI_CALL=""
#flag linux -D VKAPI_PTR=""
#flag linux -D SK_C_PLUS_PLUS_BEGIN_GUARD=""
#flag linux -D SK_C_PLUS_PLUS_END_GUARD=""
#include "sk_types.h"
struct C.sk_refcnt_t {
}

pub type SkRefcnt = C.sk_refcnt_t

struct C.sk_nvrefcnt_t {
}

pub type SkNvrefcnt = C.sk_nvrefcnt_t

pub type SkColor = u32

pub type SkPmcolor = u32

pub struct C.sk_color4f_t {
pub mut:
	fR f32
	fG f32
	fB f32
	fA f32
}

pub type SkColor4f = C.sk_color4f_t

const (
	sk_colortype__unknown      = C.UNKNOWN_SK_COLORTYPE
	sk_colortype__alpha_8      = C.ALPHA_8_SK_COLORTYPE
	sk_colortype__rgb_565      = C.RGB_565_SK_COLORTYPE
	sk_colortype__argb_4444    = C.ARGB_4444_SK_COLORTYPE
	sk_colortype__rgba_8888    = C.RGBA_8888_SK_COLORTYPE
	sk_colortype__rgb_888x     = C.RGB_888X_SK_COLORTYPE
	sk_colortype__bgra_8888    = C.BGRA_8888_SK_COLORTYPE
	sk_colortype__rgba_1010102 = C.RGBA_1010102_SK_COLORTYPE
	sk_colortype__rgb_101010x  = C.RGB_101010X_SK_COLORTYPE
	sk_colortype__gray_8       = C.GRAY_8_SK_COLORTYPE
	sk_colortype__rgba_f16     = C.RGBA_F16_SK_COLORTYPE
)

const (
	sk_alphatype__unknown  = C.UNKNOWN_SK_ALPHATYPE
	sk_alphatype__opaque   = C.OPAQUE_SK_ALPHATYPE
	sk_alphatype__premul   = C.PREMUL_SK_ALPHATYPE
	sk_alphatype__unpremul = C.UNPREMUL_SK_ALPHATYPE
)

const (
	sk_pixelgeometry__unknown = C.UNKNOWN_SK_PIXELGEOMETRY
	sk_pixelgeometry__rgb_h   = C.RGB_H_SK_PIXELGEOMETRY
	sk_pixelgeometry__bgr_h   = C.BGR_H_SK_PIXELGEOMETRY
	sk_pixelgeometry__rgb_v   = C.RGB_V_SK_PIXELGEOMETRY
	sk_pixelgeometry__bgr_v   = C.BGR_V_SK_PIXELGEOMETRY
)

const (
	sk_surfaceprops_flags__none_sk_surface_props_flags                         = C.NONE_SK_SURFACE_PROPS_FLAGS
	sk_surfaceprops_flags__use_device_independent_fonts_sk_surface_props_flags = C.USE_DEVICE_INDEPENDENT_FONTS_SK_SURFACE_PROPS_FLAGS
)

struct C.sk_surfaceprops_t {
}

pub type SkSurfaceprops = C.sk_surfaceprops_t

pub struct C.sk_point_t {
pub mut:
	x f32
	y f32
}

pub type SkPoint = C.sk_point_t

pub type SkVector = C.sk_point_t

pub struct C.sk_irect_t {
pub mut:
	left   int
	top    int
	right  int
	bottom int
}

pub type SkIrect = C.sk_irect_t

pub struct C.sk_rect_t {
pub mut:
	left   f32
	top    f32
	right  f32
	bottom f32
}

pub type SkRect = C.sk_rect_t

pub struct C.sk_matrix_t {
pub mut:
	scaleX f32
	skewX  f32
	transX f32
	skewY  f32
	scaleY f32
	transY f32
	persp0 f32
	persp1 f32
	persp2 f32
}

pub type SkMatrix = C.sk_matrix_t

struct C.sk_matrix44_t {
}

pub type SkMatrix44 = C.sk_matrix44_t

const (
	sk_matrix44_type_mask__identity    = C.IDENTITY_SK_MATRIX44_TYPE_MASK
	sk_matrix44_type_mask__translate   = C.TRANSLATE_SK_MATRIX44_TYPE_MASK
	sk_matrix44_type_mask__scale       = C.SCALE_SK_MATRIX44_TYPE_MASK
	sk_matrix44_type_mask__affine      = C.AFFINE_SK_MATRIX44_TYPE_MASK
	sk_matrix44_type_mask__perspective = C.PERSPECTIVE_SK_MATRIX44_TYPE_MASK
)

struct C.sk_canvas_t {
}

pub type SkCanvas = C.sk_canvas_t

struct C.sk_nodraw_canvas_t {
}

pub type SkNodrawCanvas = C.sk_nodraw_canvas_t

struct C.sk_nway_canvas_t {
}

pub type SkNwayCanvas = C.sk_nway_canvas_t

struct C.sk_overdraw_canvas_t {
}

pub type SkOverdrawCanvas = C.sk_overdraw_canvas_t

struct C.sk_data_t {
}

pub type SkData = C.sk_data_t

struct C.sk_drawable_t {
}

pub type SkDrawable = C.sk_drawable_t

struct C.sk_image_t {
}

pub type SkImage = C.sk_image_t

struct C.sk_maskfilter_t {
}

pub type SkMaskfilter = C.sk_maskfilter_t

struct C.sk_paint_t {
}

pub type SkPaint = C.sk_paint_t

struct C.sk_path_t {
}

pub type SkPath = C.sk_path_t

struct C.sk_picture_t {
}

pub type SkPicture = C.sk_picture_t

struct C.sk_picture_recorder_t {
}

pub type SkPictureRecorder = C.sk_picture_recorder_t

struct C.sk_shader_t {
}

pub type SkShader = C.sk_shader_t

struct C.sk_surface_t {
}

pub type SkSurface = C.sk_surface_t

struct C.sk_region_t {
}

pub type SkRegion = C.sk_region_t

struct C.sk_region_iterator_t {
}

pub type SkRegionIterator = C.sk_region_iterator_t

struct C.sk_region_cliperator_t {
}

pub type SkRegionCliperator = C.sk_region_cliperator_t

struct C.sk_region_spanerator_t {
}

pub type SkRegionSpanerator = C.sk_region_spanerator_t

const (
	sk_blendmode__clear      = C.CLEAR_SK_BLENDMODE
	sk_blendmode__src        = C.SRC_SK_BLENDMODE
	sk_blendmode__dst        = C.DST_SK_BLENDMODE
	sk_blendmode__srcover    = C.SRCOVER_SK_BLENDMODE
	sk_blendmode__dstover    = C.DSTOVER_SK_BLENDMODE
	sk_blendmode__srcin      = C.SRCIN_SK_BLENDMODE
	sk_blendmode__dstin      = C.DSTIN_SK_BLENDMODE
	sk_blendmode__srcout     = C.SRCOUT_SK_BLENDMODE
	sk_blendmode__dstout     = C.DSTOUT_SK_BLENDMODE
	sk_blendmode__srcatop    = C.SRCATOP_SK_BLENDMODE
	sk_blendmode__dstatop    = C.DSTATOP_SK_BLENDMODE
	sk_blendmode__xor        = C.XOR_SK_BLENDMODE
	sk_blendmode__plus       = C.PLUS_SK_BLENDMODE
	sk_blendmode__modulate   = C.MODULATE_SK_BLENDMODE
	sk_blendmode__screen     = C.SCREEN_SK_BLENDMODE
	sk_blendmode__overlay    = C.OVERLAY_SK_BLENDMODE
	sk_blendmode__darken     = C.DARKEN_SK_BLENDMODE
	sk_blendmode__lighten    = C.LIGHTEN_SK_BLENDMODE
	sk_blendmode__colordodge = C.COLORDODGE_SK_BLENDMODE
	sk_blendmode__colorburn  = C.COLORBURN_SK_BLENDMODE
	sk_blendmode__hardlight  = C.HARDLIGHT_SK_BLENDMODE
	sk_blendmode__softlight  = C.SOFTLIGHT_SK_BLENDMODE
	sk_blendmode__difference = C.DIFFERENCE_SK_BLENDMODE
	sk_blendmode__exclusion  = C.EXCLUSION_SK_BLENDMODE
	sk_blendmode__multiply   = C.MULTIPLY_SK_BLENDMODE
	sk_blendmode__hue        = C.HUE_SK_BLENDMODE
	sk_blendmode__saturation = C.SATURATION_SK_BLENDMODE
	sk_blendmode__color      = C.COLOR_SK_BLENDMODE
	sk_blendmode__luminosity = C.LUMINOSITY_SK_BLENDMODE
)

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
	fFlags              u32
	fTop                f32
	fAscent             f32
	fDescent            f32
	fBottom             f32
	fLeading            f32
	fAvgCharWidth       f32
	fMaxCharWidth       f32
	fXMin               f32
	fXMax               f32
	fXHeight            f32
	fCapHeight          f32
	fUnderlineThickness f32
	fUnderlinePosition  f32
	fStrikeoutThickness f32
	fStrikeoutPosition  f32
}

pub type SkFontmetrics = C.sk_fontmetrics_t

struct C.sk_string_t {
}

pub type SkString = C.sk_string_t

struct C.sk_bitmap_t {
}

pub type SkBitmap = C.sk_bitmap_t

struct C.sk_pixmap_t {
}

pub type SkPixmap = C.sk_pixmap_t

struct C.sk_colorfilter_t {
}

pub type SkColorfilter = C.sk_colorfilter_t

struct C.sk_imagefilter_t {
}

pub type SkImagefilter = C.sk_imagefilter_t

struct C.sk_imagefilter_croprect_t {
}

pub type SkImagefilterCroprect = C.sk_imagefilter_croprect_t

struct C.sk_typeface_t {
}

pub type SkTypeface = C.sk_typeface_t

pub type SkFontTableTag = u32

struct C.sk_fontmgr_t {
}

pub type SkFontmgr = C.sk_fontmgr_t

struct C.sk_fontstyle_t {
}

pub type SkFontstyle = C.sk_fontstyle_t

struct C.sk_fontstyleset_t {
}

pub type SkFontstyleset = C.sk_fontstyleset_t

struct C.sk_codec_t {
}

pub type SkCodec = C.sk_codec_t

struct C.sk_colorspace_t {
}

pub type SkColorspace = C.sk_colorspace_t

struct C.sk_stream_t {
}

pub type SkStream = C.sk_stream_t

struct C.sk_stream_filestream_t {
}

pub type SkStreamFilestream = C.sk_stream_filestream_t

struct C.sk_stream_asset_t {
}

pub type SkStreamAsset = C.sk_stream_asset_t

struct C.sk_stream_memorystream_t {
}

pub type SkStreamMemorystream = C.sk_stream_memorystream_t

struct C.sk_stream_streamrewindable_t {
}

pub type SkStreamStreamrewindable = C.sk_stream_streamrewindable_t

struct C.sk_wstream_t {
}

pub type SkWstream = C.sk_wstream_t

struct C.sk_wstream_filestream_t {
}

pub type SkWstreamFilestream = C.sk_wstream_filestream_t

struct C.sk_wstream_dynamicmemorystream_t {
}

pub type SkWstreamDynamicmemorystream = C.sk_wstream_dynamicmemorystream_t

struct C.sk_document_t {
}

pub type SkDocument = C.sk_document_t

const (
	sk_encoding__utf8  = C.UTF8_SK_ENCODING
	sk_encoding__utf16 = C.UTF16_SK_ENCODING
	sk_encoding__utf32 = C.UTF32_SK_ENCODING
)

const (
	sk_point_mode__points  = C.POINTS_SK_POINT_MODE
	sk_point_mode__lines   = C.LINES_SK_POINT_MODE
	sk_point_mode__polygon = C.POLYGON_SK_POINT_MODE
)

const (
	sk_text_align__left   = C.LEFT_SK_TEXT_ALIGN
	sk_text_align__center = C.CENTER_SK_TEXT_ALIGN
	sk_text_align__right  = C.RIGHT_SK_TEXT_ALIGN
)

const (
	sk_text_encoding__utf8     = C.UTF8_SK_TEXT_ENCODING
	sk_text_encoding__utf16    = C.UTF16_SK_TEXT_ENCODING
	sk_text_encoding__utf32    = C.UTF32_SK_TEXT_ENCODING
	sk_text_encoding__glyph_id = C.GLYPH_ID_SK_TEXT_ENCODING
)

const (
	sk_path_filltype__winding         = C.WINDING_SK_PATH_FILLTYPE
	sk_path_filltype__evenodd         = C.EVENODD_SK_PATH_FILLTYPE
	sk_path_filltype__inverse_winding = C.INVERSE_WINDING_SK_PATH_FILLTYPE
	sk_path_filltype__inverse_evenodd = C.INVERSE_EVENODD_SK_PATH_FILLTYPE
)

const (
	sk_font_style_slant__upright = C.UPRIGHT_SK_FONT_STYLE_SLANT
	sk_font_style_slant__italic  = C.ITALIC_SK_FONT_STYLE_SLANT
	sk_font_style_slant__oblique = C.OBLIQUE_SK_FONT_STYLE_SLANT
)

const (
	sk_filter_quality__none   = C.NONE_SK_FILTER_QUALITY
	sk_filter_quality__low    = C.LOW_SK_FILTER_QUALITY
	sk_filter_quality__medium = C.MEDIUM_SK_FILTER_QUALITY
	sk_filter_quality__high   = C.HIGH_SK_FILTER_QUALITY
)

const (
	sk_crop_rect_flags__has_none_sk_crop_rect_flag   = C.HAS_NONE_SK_CROP_RECT_FLAG
	sk_crop_rect_flags__has_left_sk_crop_rect_flag   = C.HAS_LEFT_SK_CROP_RECT_FLAG
	sk_crop_rect_flags__has_top_sk_crop_rect_flag    = C.HAS_TOP_SK_CROP_RECT_FLAG
	sk_crop_rect_flags__has_width_sk_crop_rect_flag  = C.HAS_WIDTH_SK_CROP_RECT_FLAG
	sk_crop_rect_flags__has_height_sk_crop_rect_flag = C.HAS_HEIGHT_SK_CROP_RECT_FLAG
	sk_crop_rect_flags__has_all_sk_crop_rect_flag    = C.HAS_ALL_SK_CROP_RECT_FLAG
)

const (
	sk_drop_shadow_image_filter_shadow_mode__draw_shadow_and_foreground = C.DRAW_SHADOW_AND_FOREGROUND_SK_DROP_SHADOW_IMAGE_FILTER_SHADOW_MODE
	sk_drop_shadow_image_filter_shadow_mode__draw_shadow_only           = C.DRAW_SHADOW_ONLY_SK_DROP_SHADOW_IMAGE_FILTER_SHADOW_MODE
)

const (
	sk_displacement_map_effect_channel_selector_type__unknown = C.UNKNOWN_SK_DISPLACEMENT_MAP_EFFECT_CHANNEL_SELECTOR_TYPE
	sk_displacement_map_effect_channel_selector_type__r       = C.R_SK_DISPLACEMENT_MAP_EFFECT_CHANNEL_SELECTOR_TYPE
	sk_displacement_map_effect_channel_selector_type__g       = C.G_SK_DISPLACEMENT_MAP_EFFECT_CHANNEL_SELECTOR_TYPE
	sk_displacement_map_effect_channel_selector_type__b       = C.B_SK_DISPLACEMENT_MAP_EFFECT_CHANNEL_SELECTOR_TYPE
	sk_displacement_map_effect_channel_selector_type__a       = C.A_SK_DISPLACEMENT_MAP_EFFECT_CHANNEL_SELECTOR_TYPE
)

const (
	sk_matrix_convolution_tilemode__clamp          = C.CLAMP_SK_MATRIX_CONVOLUTION_TILEMODE
	sk_matrix_convolution_tilemode__repeat         = C.REPEAT_SK_MATRIX_CONVOLUTION_TILEMODE
	sk_matrix_convolution_tilemode__clamp_to_black = C.CLAMP_TO_BLACK_SK_MATRIX_CONVOLUTION_TILEMODE
)

const (
	sk_region_op__difference         = C.DIFFERENCE_SK_REGION_OP
	sk_region_op__intersect          = C.INTERSECT_SK_REGION_OP
	sk_region_op__union              = C.UNION_SK_REGION_OP
	sk_region_op__xor                = C.XOR_SK_REGION_OP
	sk_region_op__reverse_difference = C.REVERSE_DIFFERENCE_SK_REGION_OP
	sk_region_op__replace            = C.REPLACE_SK_REGION_OP
)

const (
	sk_clipop__difference = C.DIFFERENCE_SK_CLIPOP
	sk_clipop__intersect  = C.INTERSECT_SK_CLIPOP
)

const (
	sk_encoded_image_format__bmp_sk_encoded_format  = C.BMP_SK_ENCODED_FORMAT
	sk_encoded_image_format__gif_sk_encoded_format  = C.GIF_SK_ENCODED_FORMAT
	sk_encoded_image_format__ico_sk_encoded_format  = C.ICO_SK_ENCODED_FORMAT
	sk_encoded_image_format__jpeg_sk_encoded_format = C.JPEG_SK_ENCODED_FORMAT
	sk_encoded_image_format__png_sk_encoded_format  = C.PNG_SK_ENCODED_FORMAT
	sk_encoded_image_format__wbmp_sk_encoded_format = C.WBMP_SK_ENCODED_FORMAT
	sk_encoded_image_format__webp_sk_encoded_format = C.WEBP_SK_ENCODED_FORMAT
	sk_encoded_image_format__pkm_sk_encoded_format  = C.PKM_SK_ENCODED_FORMAT
	sk_encoded_image_format__ktx_sk_encoded_format  = C.KTX_SK_ENCODED_FORMAT
	sk_encoded_image_format__astc_sk_encoded_format = C.ASTC_SK_ENCODED_FORMAT
	sk_encoded_image_format__dng_sk_encoded_format  = C.DNG_SK_ENCODED_FORMAT
	sk_encoded_image_format__heif_sk_encoded_format = C.HEIF_SK_ENCODED_FORMAT
)

const (
	sk_encodedorigin__top_left_sk_encoded_origin     = C.TOP_LEFT_SK_ENCODED_ORIGIN
	sk_encodedorigin__top_right_sk_encoded_origin    = C.TOP_RIGHT_SK_ENCODED_ORIGIN
	sk_encodedorigin__bottom_right_sk_encoded_origin = C.BOTTOM_RIGHT_SK_ENCODED_ORIGIN
	sk_encodedorigin__bottom_left_sk_encoded_origin  = C.BOTTOM_LEFT_SK_ENCODED_ORIGIN
	sk_encodedorigin__left_top_sk_encoded_origin     = C.LEFT_TOP_SK_ENCODED_ORIGIN
	sk_encodedorigin__right_top_sk_encoded_origin    = C.RIGHT_TOP_SK_ENCODED_ORIGIN
	sk_encodedorigin__right_bottom_sk_encoded_origin = C.RIGHT_BOTTOM_SK_ENCODED_ORIGIN
	sk_encodedorigin__left_bottom_sk_encoded_origin  = C.LEFT_BOTTOM_SK_ENCODED_ORIGIN
)

const (
	sk_codec_result__success            = C.SUCCESS_SK_CODEC_RESULT
	sk_codec_result__incomplete_input   = C.INCOMPLETE_INPUT_SK_CODEC_RESULT
	sk_codec_result__error_in_input     = C.ERROR_IN_INPUT_SK_CODEC_RESULT
	sk_codec_result__invalid_conversion = C.INVALID_CONVERSION_SK_CODEC_RESULT
	sk_codec_result__invalid_scale      = C.INVALID_SCALE_SK_CODEC_RESULT
	sk_codec_result__invalid_parameters = C.INVALID_PARAMETERS_SK_CODEC_RESULT
	sk_codec_result__invalid_input      = C.INVALID_INPUT_SK_CODEC_RESULT
	sk_codec_result__could_not_rewind   = C.COULD_NOT_REWIND_SK_CODEC_RESULT
	sk_codec_result__internal_error     = C.INTERNAL_ERROR_SK_CODEC_RESULT
	sk_codec_result__unimplemented      = C.UNIMPLEMENTED_SK_CODEC_RESULT
)

const (
	sk_codec_zero_initialized__yes = C.YES_SK_CODEC_ZERO_INITIALIZED
	sk_codec_zero_initialized__no  = C.NO_SK_CODEC_ZERO_INITIALIZED
)

const (
	sk_transfer_function_behavior__respect = C.RESPECT_SK_TRANSFER_FUNCTION_BEHAVIOR
	sk_transfer_function_behavior__ignore  = C.IGNORE_SK_TRANSFER_FUNCTION_BEHAVIOR
)

pub struct C.sk_codec_options_t {
pub mut:
	fZeroInitialized C.sk_codec_zero_initialized_t
	fSubset          sk_irect_t
	fFrameIndex      int
	fPriorFrame      int
	fPremulBehavior  C.sk_transfer_function_behavior_t
}

pub type SkCodecOptions = C.sk_codec_options_t

const (
	sk_codec_scanline_order__top_down  = C.TOP_DOWN_SK_CODEC_SCANLINE_ORDER
	sk_codec_scanline_order__bottom_up = C.BOTTOM_UP_SK_CODEC_SCANLINE_ORDER
)

const (
	sk_path_verb__move  = C.MOVE_SK_PATH_VERB
	sk_path_verb__line  = C.LINE_SK_PATH_VERB
	sk_path_verb__quad  = C.QUAD_SK_PATH_VERB
	sk_path_verb__conic = C.CONIC_SK_PATH_VERB
	sk_path_verb__cubic = C.CUBIC_SK_PATH_VERB
	sk_path_verb__close = C.CLOSE_SK_PATH_VERB
	sk_path_verb__done  = C.DONE_SK_PATH_VERB
)

struct C.sk_path_iterator_t {
}

pub type SkPathIterator = C.sk_path_iterator_t

struct C.sk_path_rawiterator_t {
}

pub type SkPathRawiterator = C.sk_path_rawiterator_t

const (
	sk_path_add_mode__append = C.APPEND_SK_PATH_ADD_MODE
	sk_path_add_mode__extend = C.EXTEND_SK_PATH_ADD_MODE
)

const (
	sk_path_segment_mask__line  = C.LINE_SK_PATH_SEGMENT_MASK
	sk_path_segment_mask__quad  = C.QUAD_SK_PATH_SEGMENT_MASK
	sk_path_segment_mask__conic = C.CONIC_SK_PATH_SEGMENT_MASK
	sk_path_segment_mask__cubic = C.CUBIC_SK_PATH_SEGMENT_MASK
)

const (
	sk_path_effect_1d_style__translate = C.TRANSLATE_SK_PATH_EFFECT_1D_STYLE
	sk_path_effect_1d_style__rotate    = C.ROTATE_SK_PATH_EFFECT_1D_STYLE
	sk_path_effect_1d_style__morph     = C.MORPH_SK_PATH_EFFECT_1D_STYLE
)

const (
	sk_path_effect_trim_mode__normal   = C.NORMAL_SK_PATH_EFFECT_TRIM_MODE
	sk_path_effect_trim_mode__inverted = C.INVERTED_SK_PATH_EFFECT_TRIM_MODE
)

struct C.sk_path_effect_t {
}

pub type SkPathEffect = C.sk_path_effect_t

const (
	sk_stroke_cap__butt   = C.BUTT_SK_STROKE_CAP
	sk_stroke_cap__round  = C.ROUND_SK_STROKE_CAP
	sk_stroke_cap__square = C.SQUARE_SK_STROKE_CAP
)

const (
	sk_stroke_join__miter = C.MITER_SK_STROKE_JOIN
	sk_stroke_join__round = C.ROUND_SK_STROKE_JOIN
	sk_stroke_join__bevel = C.BEVEL_SK_STROKE_JOIN
)

const (
	sk_shader_tilemode__clamp  = C.CLAMP_SK_SHADER_TILEMODE
	sk_shader_tilemode__repeat = C.REPEAT_SK_SHADER_TILEMODE
	sk_shader_tilemode__mirror = C.MIRROR_SK_SHADER_TILEMODE
)

const (
	sk_blurstyle__normal_sk_blur_style = C.NORMAL_SK_BLUR_STYLE
	sk_blurstyle__solid_sk_blur_style  = C.SOLID_SK_BLUR_STYLE
	sk_blurstyle__outer_sk_blur_style  = C.OUTER_SK_BLUR_STYLE
	sk_blurstyle__inner_sk_blur_style  = C.INNER_SK_BLUR_STYLE
)

const (
	sk_path_direction__cw  = C.CW_SK_PATH_DIRECTION
	sk_path_direction__ccw = C.CCW_SK_PATH_DIRECTION
)

const (
	sk_path_arc_size__small = C.SMALL_SK_PATH_ARC_SIZE
	sk_path_arc_size__large = C.LARGE_SK_PATH_ARC_SIZE
)

const (
	sk_paint_style__fill            = C.FILL_SK_PAINT_STYLE
	sk_paint_style__stroke          = C.STROKE_SK_PAINT_STYLE
	sk_paint_style__stroke_and_fill = C.STROKE_AND_FILL_SK_PAINT_STYLE
)

const (
	sk_paint_hinting__no_hinting     = C.NO_HINTING_SK_PAINT_HINTING
	sk_paint_hinting__slight_hinting = C.SLIGHT_HINTING_SK_PAINT_HINTING
	sk_paint_hinting__normal_hinting = C.NORMAL_HINTING_SK_PAINT_HINTING
	sk_paint_hinting__full_hinting   = C.FULL_HINTING_SK_PAINT_HINTING
)

struct C.sk_colortable_t {
}

pub type SkColortable = C.sk_colortable_t

struct C.sk_pixelref_factory_t {
}

pub type SkPixelrefFactory = C.sk_pixelref_factory_t

const (
	sk_mask_format__bw      = C.BW_SK_MASK_FORMAT
	sk_mask_format__a8      = C.A8_SK_MASK_FORMAT
	sk_mask_format__three_d = C.THREE_D_SK_MASK_FORMAT
	sk_mask_format__argb32  = C.ARGB32_SK_MASK_FORMAT
	sk_mask_format__lcd16   = C.LCD16_SK_MASK_FORMAT
)

pub struct C.sk_mask_t {
pub mut:
	fImage    &byte
	fBounds   C.sk_irect_t
	fRowBytes u32
	fFormat   C.sk_mask_format_t
}

pub type SkMask = C.sk_mask_t

const (
	sk_pathop__difference         = C.DIFFERENCE_SK_PATHOP
	sk_pathop__intersect          = C.INTERSECT_SK_PATHOP
	sk_pathop__union              = C.UNION_SK_PATHOP
	sk_pathop__xor                = C.XOR_SK_PATHOP
	sk_pathop__reverse_difference = C.REVERSE_DIFFERENCE_SK_PATHOP
)

struct C.sk_opbuilder_t {
}

pub type SkOpbuilder = C.sk_opbuilder_t

const (
	sk_path_convexity__unknown = C.UNKNOWN_SK_PATH_CONVEXITY
	sk_path_convexity__convex  = C.CONVEX_SK_PATH_CONVEXITY
	sk_path_convexity__concave = C.CONCAVE_SK_PATH_CONVEXITY
)

const (
	sk_lattice_recttype__default_sk_lattice_rect_type     = C.DEFAULT_SK_LATTICE_RECT_TYPE
	sk_lattice_recttype__transparent_sk_lattice_rect_type = C.TRANSPARENT_SK_LATTICE_RECT_TYPE
	sk_lattice_recttype__fixed_color_sk_lattice_rect_type = C.FIXED_COLOR_SK_LATTICE_RECT_TYPE
)

pub struct C.sk_lattice_t {
pub mut:
	fXDivs     &int
	fYDivs     &int
	fRectTypes sk_lattice_recttype_t
	fXCount    int
	fYCount    int
	fBounds    sk_irect_t
	fColors    sk_color_t
}

pub type SkLattice = C.sk_lattice_t

struct C.sk_pathmeasure_t {
}

pub type SkPathmeasure = C.sk_pathmeasure_t

const (
	sk_pathmeasure_matrixflags__get_position    = C.GET_POSITION_SK_PATHMEASURE_MATRIXFLAGS
	sk_pathmeasure_matrixflags__get_tangent     = C.GET_TANGENT_SK_PATHMEASURE_MATRIXFLAGS
	sk_pathmeasure_matrixflags__get_pos_and_tan = C.GET_POS_AND_TAN_SK_PATHMEASURE_MATRIXFLAGS
)

const (
	sk_image_caching_hint__allow    = C.ALLOW_SK_IMAGE_CACHING_HINT
	sk_image_caching_hint__disallow = C.DISALLOW_SK_IMAGE_CACHING_HINT
)

const (
	sk_bitmap_allocflags__none_sk_bitmap_alloc_flags        = C.NONE_SK_BITMAP_ALLOC_FLAGS
	sk_bitmap_allocflags__zero_pixels_sk_bitmap_alloc_flags = C.ZERO_PIXELS_SK_BITMAP_ALLOC_FLAGS
)

pub struct C.sk_time_datetime_t {
pub mut:
	fTimeZoneMinutes i16
	fYear            u16
	fMonth           byte
	fDayOfWeek       byte
	fDay             byte
	fHour            byte
	fMinute          byte
	fSecond          byte
}

pub type SkTimeDatetime = C.sk_time_datetime_t

pub struct C.sk_document_pdf_metadata_t {
pub mut:
	fTitle           sk_string_t
	fAuthor          sk_string_t
	fSubject         sk_string_t
	fKeywords        sk_string_t
	fCreator         sk_string_t
	fProducer        sk_string_t
	fCreation        sk_time_datetime_t
	fModified        sk_time_datetime_t
	fRasterDPI       f32
	fPDFA            bool
	fEncodingQuality int
}

pub type SkDocumentPdfMetadata = C.sk_document_pdf_metadata_t

pub struct C.sk_imageinfo_t {
pub mut:
	colorspace sk_colorspace_t
	width      int
	height     int
	colorType  C.sk_colortype_t
	alphaType  C.sk_alphatype_t
}

pub type SkImageinfo = C.sk_imageinfo_t

const (
	sk_codecanimation_disposalmethod__keep_sk_codec_animation_disposal_method             = C.KEEP_SK_CODEC_ANIMATION_DISPOSAL_METHOD
	sk_codecanimation_disposalmethod__restore_bg_color_sk_codec_animation_disposal_method = C.RESTORE_BG_COLOR_SK_CODEC_ANIMATION_DISPOSAL_METHOD
	sk_codecanimation_disposalmethod__restore_previous_sk_codec_animation_disposal_method = C.RESTORE_PREVIOUS_SK_CODEC_ANIMATION_DISPOSAL_METHOD
)

pub struct C.sk_codec_frameinfo_t {
pub mut:
	fRequiredFrame  int
	fDuration       int
	fFullyReceived  bool
	fAlphaType      C.sk_alphatype_t
	fDisposalMethod C.sk_codecanimation_disposalmethod_t
}

pub type SkCodecFrameinfo = C.sk_codec_frameinfo_t

struct C.sk_xmlstreamwriter_t {
}

pub type SkXmlstreamwriter = C.sk_xmlstreamwriter_t

struct C.sk_xmlwriter_t {
}

pub type SkXmlwriter = C.sk_xmlwriter_t

struct C.sk_svgcanvas_t {
}

pub type SkSvgcanvas = C.sk_svgcanvas_t

struct C.sk_3dview_t {
}

pub type Sk3dview = C.sk_3dview_t

const (
	sk_vertices_vertex_mode__triangles      = C.TRIANGLES_SK_VERTICES_VERTEX_MODE
	sk_vertices_vertex_mode__triangle_strip = C.TRIANGLE_STRIP_SK_VERTICES_VERTEX_MODE
	sk_vertices_vertex_mode__triangle_fan   = C.TRIANGLE_FAN_SK_VERTICES_VERTEX_MODE
)

struct C.sk_vertices_t {
}

pub type SkVertices = C.sk_vertices_t

const (
	sk_gamma_named__linear            = C.LINEAR_SK_GAMMA_NAMED
	sk_gamma_named__srgb              = C.SRGB_SK_GAMMA_NAMED
	sk_gamma_named__two_dot_two_curve = C.TWO_DOT_TWO_CURVE_SK_GAMMA_NAMED
	sk_gamma_named__non_standard      = C.NON_STANDARD_SK_GAMMA_NAMED
)

const (
	sk_colorspace_type__rgb  = C.RGB_SK_COLORSPACE_TYPE
	sk_colorspace_type__cmyk = C.CMYK_SK_COLORSPACE_TYPE
	sk_colorspace_type__gray = C.GRAY_SK_COLORSPACE_TYPE
)

const (
	sk_colorspace_render_target_gamma__linear = C.LINEAR_SK_COLORSPACE_RENDER_TARGET_GAMMA
	sk_colorspace_render_target_gamma__srgb   = C.SRGB_SK_COLORSPACE_RENDER_TARGET_GAMMA
)

const (
	sk_colorspace_gamut__srgb      = C.SRGB_SK_COLORSPACE_GAMUT
	sk_colorspace_gamut__adobe_rgb = C.ADOBE_RGB_SK_COLORSPACE_GAMUT
	sk_colorspace_gamut__dcip3_d65 = C.DCIP3_D65_SK_COLORSPACE_GAMUT
	sk_colorspace_gamut__rec2020   = C.REC2020_SK_COLORSPACE_GAMUT
)

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

const (
	sk_highcontrastconfig_invertstyle__no_invert_sk_high_contrast_config_invert_style         = C.NO_INVERT_SK_HIGH_CONTRAST_CONFIG_INVERT_STYLE
	sk_highcontrastconfig_invertstyle__invert_brightness_sk_high_contrast_config_invert_style = C.INVERT_BRIGHTNESS_SK_HIGH_CONTRAST_CONFIG_INVERT_STYLE
	sk_highcontrastconfig_invertstyle__invert_lightness_sk_high_contrast_config_invert_style  = C.INVERT_LIGHTNESS_SK_HIGH_CONTRAST_CONFIG_INVERT_STYLE
)

pub struct C.sk_highcontrastconfig_t {
pub mut:
	fGrayscale   bool
	fInvertStyle C.sk_highcontrastconfig_invertstyle_t
	fContrast    f32
}

pub type SkHighcontrastconfig = C.sk_highcontrastconfig_t

const (
	sk_pngencoder_filterflags__zero_sk_pngencoder_filter_flags  = C.ZERO_SK_PNGENCODER_FILTER_FLAGS
	sk_pngencoder_filterflags__none_sk_pngencoder_filter_flags  = C.NONE_SK_PNGENCODER_FILTER_FLAGS
	sk_pngencoder_filterflags__sub_sk_pngencoder_filter_flags   = C.SUB_SK_PNGENCODER_FILTER_FLAGS
	sk_pngencoder_filterflags__up_sk_pngencoder_filter_flags    = C.UP_SK_PNGENCODER_FILTER_FLAGS
	sk_pngencoder_filterflags__avg_sk_pngencoder_filter_flags   = C.AVG_SK_PNGENCODER_FILTER_FLAGS
	sk_pngencoder_filterflags__paeth_sk_pngencoder_filter_flags = C.PAETH_SK_PNGENCODER_FILTER_FLAGS
	sk_pngencoder_filterflags__all_sk_pngencoder_filter_flags   = C.ALL_SK_PNGENCODER_FILTER_FLAGS
)

pub struct C.sk_pngencoder_options_t {
pub mut:
	fFilterFlags      C.sk_pngencoder_filterflags_t
	fZLibLevel        int
	fUnpremulBehavior C.sk_transfer_function_behavior_t
	fComments         voidptr
}

pub type SkPngencoderOptions = C.sk_pngencoder_options_t

const (
	sk_jpegencoder_downsample__downsample_420 = C.DOWNSAMPLE_420_SK_JPEGENCODER_DOWNSAMPLE
	sk_jpegencoder_downsample__downsample_422 = C.DOWNSAMPLE_422_SK_JPEGENCODER_DOWNSAMPLE
	sk_jpegencoder_downsample__downsample_444 = C.DOWNSAMPLE_444_SK_JPEGENCODER_DOWNSAMPLE
)

const (
	sk_jpegencoder_alphaoption__ignore_sk_jpegencoder_alpha_option         = C.IGNORE_SK_JPEGENCODER_ALPHA_OPTION
	sk_jpegencoder_alphaoption__blend_on_black_sk_jpegencoder_alpha_option = C.BLEND_ON_BLACK_SK_JPEGENCODER_ALPHA_OPTION
)

pub struct C.sk_jpegencoder_options_t {
pub mut:
	fQuality       int
	fDownsample    C.sk_jpegencoder_downsample_t
	fAlphaOption   C.sk_jpegencoder_alphaoption_t
	fBlendBehavior C.sk_transfer_function_behavior_t
}

pub type SkJpegencoderOptions = C.sk_jpegencoder_options_t

const (
	sk_webpencoder_compression__lossy_sk_webpencoder_comptression    = C.LOSSY_SK_WEBPENCODER_COMPTRESSION
	sk_webpencoder_compression__lossless_sk_webpencoder_comptression = C.LOSSLESS_SK_WEBPENCODER_COMPTRESSION
)

pub struct C.sk_webpencoder_options_t {
pub mut:
	fCompression      C.sk_webpencoder_compression_t
	fQuality          f32
	fUnpremulBehavior C.sk_transfer_function_behavior_t
}

pub type SkWebpencoderOptions = C.sk_webpencoder_options_t

struct C.sk_rrect_t {
}

pub type SkRrect = C.sk_rrect_t

const (
	sk_rrect_type__empty      = C.EMPTY_SK_RRECT_TYPE
	sk_rrect_type__rect       = C.RECT_SK_RRECT_TYPE
	sk_rrect_type__oval       = C.OVAL_SK_RRECT_TYPE
	sk_rrect_type__simple     = C.SIMPLE_SK_RRECT_TYPE
	sk_rrect_type__nine_patch = C.NINE_PATCH_SK_RRECT_TYPE
	sk_rrect_type__complex    = C.COMPLEX_SK_RRECT_TYPE
)

const (
	sk_rrect_corner__upper_left  = C.UPPER_LEFT_SK_RRECT_CORNER
	sk_rrect_corner__upper_right = C.UPPER_RIGHT_SK_RRECT_CORNER
	sk_rrect_corner__lower_right = C.LOWER_RIGHT_SK_RRECT_CORNER
	sk_rrect_corner__lower_left  = C.LOWER_LEFT_SK_RRECT_CORNER
)

struct C.sk_textblob_t {
}

pub type SkTextblob = C.sk_textblob_t

struct C.sk_textblob_builder_t {
}

pub type SkTextblobBuilder = C.sk_textblob_builder_t

pub struct C.sk_textblob_builder_runbuffer_t {
pub mut:
	glyphs   voidptr
	pos      voidptr
	utf8text voidptr
	clusters voidptr
}

pub type SkTextblobBuilderRunbuffer = C.sk_textblob_builder_runbuffer_t

pub struct C.sk_rsxform_t {
pub mut:
	fSCos f32
	fSSin f32
	fTX   f32
	fTY   f32
}

pub type SkRsxform = C.sk_rsxform_t
