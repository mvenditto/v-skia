module skia

#include "structs_factory.h"


fn C.new_sk_codec_options(zero_initialized int, subset &C.sk_irect_t, frame_index int, prior_frame int, premul_behavior int) &C.sk_codec_options_t
fn C.new_sk_mask(image &byte, bounds C.sk_irect_t, row_bytes u32, format int) &C.sk_mask_t
fn C.new_sk_imageinfo(colorspace &C.sk_colorspace_t, width int, height int, color_type int, alpha_type int) &C.sk_imageinfo_t
fn C.new_sk_codec_frameinfo(required_frame int, duration int, fully_received bool, alpha_type int, disposal_method int) &C.sk_codec_frameinfo_t
fn C.new_sk_highcontrastconfig(grayscale bool, invert_style int, contrast f32) &C.sk_highcontrastconfig_t
fn C.new_sk_pngencoder_options(filter_flags int, z_lib_level int, unpremul_behavior int, comments voidptr) &C.sk_pngencoder_options_t
fn C.new_sk_jpegencoder_options(quality int, downsample int, alpha_option int, blend_behavior int) &C.sk_jpegencoder_options_t
fn C.new_sk_webpencoder_options(compression int, quality f32, unpremul_behavior int) &C.sk_webpencoder_options_t