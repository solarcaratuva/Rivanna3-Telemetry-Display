################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/render/assets/img_render_arc_bg.c \
../ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888.c \
../ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888_premultiplied.c \
../ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_i1.c \
../ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_l8.c \
../ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565.c \
../ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565_swapped.c \
../ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565a8.c \
../ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb888.c \
../ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_xrgb8888.c 

C_DEPS += \
./ThirdParty/lvgl/demos/render/assets/img_render_arc_bg.d \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888.d \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888_premultiplied.d \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_i1.d \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_l8.d \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565.d \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565_swapped.d \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565a8.d \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb888.d \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_xrgb8888.d 

OBJS += \
./ThirdParty/lvgl/demos/render/assets/img_render_arc_bg.o \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888.o \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888_premultiplied.o \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_i1.o \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_l8.o \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565.o \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565_swapped.o \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565a8.o \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb888.o \
./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_xrgb8888.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/render/assets/%.o: ../ThirdParty/lvgl/demos/render/assets/%.c ThirdParty/lvgl/demos/render/assets/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-render-2f-assets

clean-ThirdParty-2f-lvgl-2f-demos-2f-render-2f-assets:
	-$(RM) ./ThirdParty/lvgl/demos/render/assets/img_render_arc_bg.d ./ThirdParty/lvgl/demos/render/assets/img_render_arc_bg.o ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888.d ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888.o ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888_premultiplied.d ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888_premultiplied.o ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_i1.d ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_i1.o ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_l8.d ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_l8.o ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565.d ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565.o ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565_swapped.d ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565_swapped.o ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565a8.d ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565a8.o ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb888.d ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_rgb888.o ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_xrgb8888.d ./ThirdParty/lvgl/demos/render/assets/img_render_lvgl_logo_xrgb8888.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-render-2f-assets

