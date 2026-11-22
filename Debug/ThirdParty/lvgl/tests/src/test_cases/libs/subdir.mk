################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_barcode.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_bin_decoder.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_bmp.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_ffmpeg.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_font_stress.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_freetype.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_freetype_outline.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_gif.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_gstreamer.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_libpng.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_libwebp.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_lodepng.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_memmove.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_qrcode.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_svg_decoder.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_tiny_ttf.c \
../ThirdParty/lvgl/tests/src/test_cases/libs/test_tjpgd.c 

C_DEPS += \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_barcode.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_bin_decoder.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_bmp.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_ffmpeg.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_font_stress.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_freetype.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_freetype_outline.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_gif.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_gstreamer.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_libpng.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_libwebp.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_lodepng.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_memmove.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_qrcode.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_svg_decoder.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_tiny_ttf.d \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_tjpgd.d 

OBJS += \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_barcode.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_bin_decoder.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_bmp.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_ffmpeg.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_font_stress.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_freetype.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_freetype_outline.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_gif.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_gstreamer.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_libpng.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_libwebp.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_lodepng.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_memmove.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_qrcode.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_svg_decoder.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_tiny_ttf.o \
./ThirdParty/lvgl/tests/src/test_cases/libs/test_tjpgd.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/src/test_cases/libs/%.o: ../ThirdParty/lvgl/tests/src/test_cases/libs/%.c ThirdParty/lvgl/tests/src/test_cases/libs/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-libs

clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-libs:
	-$(RM) ./ThirdParty/lvgl/tests/src/test_cases/libs/test_barcode.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_barcode.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_bin_decoder.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_bin_decoder.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_bmp.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_bmp.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_ffmpeg.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_ffmpeg.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_font_stress.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_font_stress.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_freetype.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_freetype.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_freetype_outline.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_freetype_outline.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_gif.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_gif.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_gstreamer.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_gstreamer.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_libpng.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_libpng.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_libwebp.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_libwebp.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_lodepng.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_lodepng.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_memmove.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_memmove.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_qrcode.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_qrcode.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_svg_decoder.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_svg_decoder.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_tiny_ttf.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_tiny_ttf.o ./ThirdParty/lvgl/tests/src/test_cases/libs/test_tjpgd.d ./ThirdParty/lvgl/tests/src/test_cases/libs/test_tjpgd.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-libs

