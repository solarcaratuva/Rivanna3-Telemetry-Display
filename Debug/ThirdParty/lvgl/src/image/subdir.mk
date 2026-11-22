################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/image/lv_bin_decoder.c \
../ThirdParty/lvgl/src/image/lv_bmp.c \
../ThirdParty/lvgl/src/image/lv_image_decoder.c \
../ThirdParty/lvgl/src/image/lv_libjpeg_turbo.c \
../ThirdParty/lvgl/src/image/lv_libpng.c \
../ThirdParty/lvgl/src/image/lv_libwebp.c \
../ThirdParty/lvgl/src/image/lv_lodepng.c \
../ThirdParty/lvgl/src/image/lv_tjpgd.c 

C_DEPS += \
./ThirdParty/lvgl/src/image/lv_bin_decoder.d \
./ThirdParty/lvgl/src/image/lv_bmp.d \
./ThirdParty/lvgl/src/image/lv_image_decoder.d \
./ThirdParty/lvgl/src/image/lv_libjpeg_turbo.d \
./ThirdParty/lvgl/src/image/lv_libpng.d \
./ThirdParty/lvgl/src/image/lv_libwebp.d \
./ThirdParty/lvgl/src/image/lv_lodepng.d \
./ThirdParty/lvgl/src/image/lv_tjpgd.d 

OBJS += \
./ThirdParty/lvgl/src/image/lv_bin_decoder.o \
./ThirdParty/lvgl/src/image/lv_bmp.o \
./ThirdParty/lvgl/src/image/lv_image_decoder.o \
./ThirdParty/lvgl/src/image/lv_libjpeg_turbo.o \
./ThirdParty/lvgl/src/image/lv_libpng.o \
./ThirdParty/lvgl/src/image/lv_libwebp.o \
./ThirdParty/lvgl/src/image/lv_lodepng.o \
./ThirdParty/lvgl/src/image/lv_tjpgd.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/image/%.o: ../ThirdParty/lvgl/src/image/%.c ThirdParty/lvgl/src/image/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-image

clean-ThirdParty-2f-lvgl-2f-src-2f-image:
	-$(RM) ./ThirdParty/lvgl/src/image/lv_bin_decoder.d ./ThirdParty/lvgl/src/image/lv_bin_decoder.o ./ThirdParty/lvgl/src/image/lv_bmp.d ./ThirdParty/lvgl/src/image/lv_bmp.o ./ThirdParty/lvgl/src/image/lv_image_decoder.d ./ThirdParty/lvgl/src/image/lv_image_decoder.o ./ThirdParty/lvgl/src/image/lv_libjpeg_turbo.d ./ThirdParty/lvgl/src/image/lv_libjpeg_turbo.o ./ThirdParty/lvgl/src/image/lv_libpng.d ./ThirdParty/lvgl/src/image/lv_libpng.o ./ThirdParty/lvgl/src/image/lv_libwebp.d ./ThirdParty/lvgl/src/image/lv_libwebp.o ./ThirdParty/lvgl/src/image/lv_lodepng.d ./ThirdParty/lvgl/src/image/lv_lodepng.o ./ThirdParty/lvgl/src/image/lv_tjpgd.d ./ThirdParty/lvgl/src/image/lv_tjpgd.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-image

