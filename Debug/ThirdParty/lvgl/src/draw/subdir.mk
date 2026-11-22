################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/lv_draw.c \
../ThirdParty/lvgl/src/draw/lv_draw_3d.c \
../ThirdParty/lvgl/src/draw/lv_draw_arc.c \
../ThirdParty/lvgl/src/draw/lv_draw_blur.c \
../ThirdParty/lvgl/src/draw/lv_draw_buf.c \
../ThirdParty/lvgl/src/draw/lv_draw_image.c \
../ThirdParty/lvgl/src/draw/lv_draw_label.c \
../ThirdParty/lvgl/src/draw/lv_draw_line.c \
../ThirdParty/lvgl/src/draw/lv_draw_mask.c \
../ThirdParty/lvgl/src/draw/lv_draw_rect.c \
../ThirdParty/lvgl/src/draw/lv_draw_triangle.c \
../ThirdParty/lvgl/src/draw/lv_draw_utils.c \
../ThirdParty/lvgl/src/draw/lv_draw_vector.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/lv_draw.d \
./ThirdParty/lvgl/src/draw/lv_draw_3d.d \
./ThirdParty/lvgl/src/draw/lv_draw_arc.d \
./ThirdParty/lvgl/src/draw/lv_draw_blur.d \
./ThirdParty/lvgl/src/draw/lv_draw_buf.d \
./ThirdParty/lvgl/src/draw/lv_draw_image.d \
./ThirdParty/lvgl/src/draw/lv_draw_label.d \
./ThirdParty/lvgl/src/draw/lv_draw_line.d \
./ThirdParty/lvgl/src/draw/lv_draw_mask.d \
./ThirdParty/lvgl/src/draw/lv_draw_rect.d \
./ThirdParty/lvgl/src/draw/lv_draw_triangle.d \
./ThirdParty/lvgl/src/draw/lv_draw_utils.d \
./ThirdParty/lvgl/src/draw/lv_draw_vector.d 

OBJS += \
./ThirdParty/lvgl/src/draw/lv_draw.o \
./ThirdParty/lvgl/src/draw/lv_draw_3d.o \
./ThirdParty/lvgl/src/draw/lv_draw_arc.o \
./ThirdParty/lvgl/src/draw/lv_draw_blur.o \
./ThirdParty/lvgl/src/draw/lv_draw_buf.o \
./ThirdParty/lvgl/src/draw/lv_draw_image.o \
./ThirdParty/lvgl/src/draw/lv_draw_label.o \
./ThirdParty/lvgl/src/draw/lv_draw_line.o \
./ThirdParty/lvgl/src/draw/lv_draw_mask.o \
./ThirdParty/lvgl/src/draw/lv_draw_rect.o \
./ThirdParty/lvgl/src/draw/lv_draw_triangle.o \
./ThirdParty/lvgl/src/draw/lv_draw_utils.o \
./ThirdParty/lvgl/src/draw/lv_draw_vector.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/%.o: ../ThirdParty/lvgl/src/draw/%.c ThirdParty/lvgl/src/draw/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw

clean-ThirdParty-2f-lvgl-2f-src-2f-draw:
	-$(RM) ./ThirdParty/lvgl/src/draw/lv_draw.d ./ThirdParty/lvgl/src/draw/lv_draw.o ./ThirdParty/lvgl/src/draw/lv_draw_3d.d ./ThirdParty/lvgl/src/draw/lv_draw_3d.o ./ThirdParty/lvgl/src/draw/lv_draw_arc.d ./ThirdParty/lvgl/src/draw/lv_draw_arc.o ./ThirdParty/lvgl/src/draw/lv_draw_blur.d ./ThirdParty/lvgl/src/draw/lv_draw_blur.o ./ThirdParty/lvgl/src/draw/lv_draw_buf.d ./ThirdParty/lvgl/src/draw/lv_draw_buf.o ./ThirdParty/lvgl/src/draw/lv_draw_image.d ./ThirdParty/lvgl/src/draw/lv_draw_image.o ./ThirdParty/lvgl/src/draw/lv_draw_label.d ./ThirdParty/lvgl/src/draw/lv_draw_label.o ./ThirdParty/lvgl/src/draw/lv_draw_line.d ./ThirdParty/lvgl/src/draw/lv_draw_line.o ./ThirdParty/lvgl/src/draw/lv_draw_mask.d ./ThirdParty/lvgl/src/draw/lv_draw_mask.o ./ThirdParty/lvgl/src/draw/lv_draw_rect.d ./ThirdParty/lvgl/src/draw/lv_draw_rect.o ./ThirdParty/lvgl/src/draw/lv_draw_triangle.d ./ThirdParty/lvgl/src/draw/lv_draw_triangle.o ./ThirdParty/lvgl/src/draw/lv_draw_utils.d ./ThirdParty/lvgl/src/draw/lv_draw_utils.o ./ThirdParty/lvgl/src/draw/lv_draw_vector.d ./ThirdParty/lvgl/src/draw/lv_draw_vector.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw

