#include "sk_types.h"
#include <stdlib.h>

sk_codec_options_t* new_sk_codec_options(int fZeroInitialized, sk_irect_t* fSubset, int fFrameIndex, int fPriorFrame, int fPremulBehavior) {
	sk_codec_options_t *x = (sk_codec_options_t*)malloc(sizeof(sk_codec_options_t));
	x->fZeroInitialized = (sk_codec_zero_initialized_t)fZeroInitialized;
	x->fSubset = fSubset;
	x->fFrameIndex = fFrameIndex;
	x->fPriorFrame = fPriorFrame;
	x->fPremulBehavior = (sk_transfer_function_behavior_t)fPremulBehavior;
	return x;
}

sk_mask_t* new_sk_mask(uint8_t* fImage, sk_irect_t fBounds, uint32_t fRowBytes, int fFormat) {
	sk_mask_t *x = (sk_mask_t*)malloc(sizeof(sk_mask_t));
	x->fImage = fImage;
	x->fBounds = fBounds;
	x->fRowBytes = fRowBytes;
	x->fFormat = (sk_mask_format_t)fFormat;
	return x;
}

sk_imageinfo_t* new_sk_imageinfo(sk_colorspace_t* colorspace, int32_t width, int32_t height, int colorType, int alphaType) {
	sk_imageinfo_t *x = (sk_imageinfo_t*)malloc(sizeof(sk_imageinfo_t));
	x->colorspace = colorspace;
	x->width = width;
	x->height = height;
	x->colorType = (sk_colortype_t)colorType;
	x->alphaType = (sk_alphatype_t)alphaType;
	return x;
}

sk_codec_frameinfo_t* new_sk_codec_frameinfo(int fRequiredFrame, int fDuration, bool fFullyReceived, int fAlphaType, int fDisposalMethod) {
	sk_codec_frameinfo_t *x = (sk_codec_frameinfo_t*)malloc(sizeof(sk_codec_frameinfo_t));
	x->fRequiredFrame = fRequiredFrame;
	x->fDuration = fDuration;
	x->fFullyReceived = fFullyReceived;
	x->fAlphaType = (sk_alphatype_t)fAlphaType;
	x->fDisposalMethod = (sk_codecanimation_disposalmethod_t)fDisposalMethod;
	return x;
}

sk_highcontrastconfig_t* new_sk_highcontrastconfig(bool fGrayscale, int fInvertStyle, float fContrast) {
	sk_highcontrastconfig_t *x = (sk_highcontrastconfig_t*)malloc(sizeof(sk_highcontrastconfig_t));
	x->fGrayscale = fGrayscale;
	x->fInvertStyle = (sk_highcontrastconfig_invertstyle_t)fInvertStyle;
	x->fContrast = fContrast;
	return x;
}

sk_pngencoder_options_t* new_sk_pngencoder_options(int fFilterFlags, int fZLibLevel, int fUnpremulBehavior, void* fComments) {
	sk_pngencoder_options_t *x = (sk_pngencoder_options_t*)malloc(sizeof(sk_pngencoder_options_t));
	x->fFilterFlags = (sk_pngencoder_filterflags_t)fFilterFlags;
	x->fZLibLevel = fZLibLevel;
	x->fUnpremulBehavior = (sk_transfer_function_behavior_t)fUnpremulBehavior;
	x->fComments = fComments;
	return x;
}

sk_jpegencoder_options_t* new_sk_jpegencoder_options(int fQuality, int fDownsample, int fAlphaOption, int fBlendBehavior) {
	sk_jpegencoder_options_t *x = (sk_jpegencoder_options_t*)malloc(sizeof(sk_jpegencoder_options_t));
	x->fQuality = fQuality;
	x->fDownsample = (sk_jpegencoder_downsample_t)fDownsample;
	x->fAlphaOption = (sk_jpegencoder_alphaoption_t)fAlphaOption;
	x->fBlendBehavior = (sk_transfer_function_behavior_t)fBlendBehavior;
	return x;
}

sk_webpencoder_options_t* new_sk_webpencoder_options(int fCompression, float fQuality, int fUnpremulBehavior) {
	sk_webpencoder_options_t *x = (sk_webpencoder_options_t*)malloc(sizeof(sk_webpencoder_options_t));
	x->fCompression = (sk_webpencoder_compression_t)fCompression;
	x->fQuality = fQuality;
	x->fUnpremulBehavior = (sk_transfer_function_behavior_t)fUnpremulBehavior;
	return x;
}
