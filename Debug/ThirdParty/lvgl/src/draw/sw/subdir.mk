################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_blur.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_border.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_box_shadow.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_fill.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_grad.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_img.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_line.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_mask.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_mask_rect.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_transform.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_triangle.c \
../ThirdParty/lvgl/src/draw/sw/lv_draw_sw_vector.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_blur.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_border.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_fill.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_grad.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_img.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_line.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_mask.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_transform.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_triangle.d \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_vector.d 

OBJS += \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_blur.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_border.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_fill.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_grad.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_img.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_line.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_mask.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_transform.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_triangle.o \
./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_vector.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/sw/%.o: ../ThirdParty/lvgl/src/draw/sw/%.c ThirdParty/lvgl/src/draw/sw/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw:
	-$(RM) ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_arc.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_arc.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_blur.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_blur.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_border.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_border.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_fill.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_fill.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_grad.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_grad.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_img.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_img.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_letter.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_letter.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_line.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_line.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_mask.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_mask.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_transform.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_transform.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_triangle.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_triangle.o ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_vector.d ./ThirdParty/lvgl/src/draw/sw/lv_draw_sw_vector.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw

