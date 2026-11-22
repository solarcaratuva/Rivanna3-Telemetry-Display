################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d.c \
../ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.c \
../ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d_img.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d.d \
./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.d \
./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d_img.d 

OBJS += \
./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d.o \
./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.o \
./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d_img.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/dma2d/%.o: ../ThirdParty/lvgl/src/draw/dma2d/%.c ThirdParty/lvgl/src/draw/dma2d/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-dma2d

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-dma2d:
	-$(RM) ./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d.d ./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d.o ./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.d ./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.o ./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d_img.d ./ThirdParty/lvgl/src/draw/dma2d/lv_draw_dma2d_img.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-dma2d

