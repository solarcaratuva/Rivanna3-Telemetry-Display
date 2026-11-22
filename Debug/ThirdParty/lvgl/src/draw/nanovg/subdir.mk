################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_border.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_image.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_label.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_line.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_image_cache.c \
../ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_utils.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_border.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_image.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_label.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_line.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_image_cache.d \
./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_utils.d 

OBJS += \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_border.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_image.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_label.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_line.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_image_cache.o \
./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_utils.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/nanovg/%.o: ../ThirdParty/lvgl/src/draw/nanovg/%.c ThirdParty/lvgl/src/draw/nanovg/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nanovg

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nanovg:
	-$(RM) ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_blur.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_border.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_border.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_image.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_image.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_label.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_label.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_line.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_line.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.o ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.d ./ThirdParty/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.o ./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.d ./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.o ./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_image_cache.d ./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_image_cache.o ./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_utils.d ./ThirdParty/lvgl/src/draw/nanovg/lv_nanovg_utils.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nanovg

