################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.c \
../ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.c \
../ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.c \
../ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.c \
../ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.c \
../ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.c \
../ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.c \
../ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.c \
../ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.c \
../ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d 

OBJS += \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o \
./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/renesas/dave2d/%.o: ../ThirdParty/lvgl/src/draw/renesas/dave2d/%.c ThirdParty/lvgl/src/draw/renesas/dave2d/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d:
	-$(RM) ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d ./ThirdParty/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d

