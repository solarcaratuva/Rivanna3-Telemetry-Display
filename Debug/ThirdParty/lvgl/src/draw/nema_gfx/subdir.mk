################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.c \
../ThirdParty/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.d \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d 

OBJS += \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.o \
./ThirdParty/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/nema_gfx/%.o: ../ThirdParty/lvgl/src/draw/nema_gfx/%.c ThirdParty/lvgl/src/draw/nema_gfx/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nema_gfx:
	-$(RM) ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_cache.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.o ./ThirdParty/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d ./ThirdParty/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

