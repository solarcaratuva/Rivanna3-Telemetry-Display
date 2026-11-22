################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend.c \
../ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.c \
../ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.c \
../ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.c \
../ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.c \
../ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.c \
../ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.c \
../ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.c \
../ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.c \
../ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.d \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.d \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.d \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.d \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.d \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.d \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d 

OBJS += \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.o \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.o \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.o \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.o \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.o \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.o \
./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/sw/blend/%.o: ../ThirdParty/lvgl/src/draw/sw/blend/%.c ThirdParty/lvgl/src/draw/sw/blend/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend:
	-$(RM) ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.d ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.o ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.d ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.o ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.d ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.o ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.d ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.o ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.d ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.o ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.d ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.o ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d ./ThirdParty/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend

