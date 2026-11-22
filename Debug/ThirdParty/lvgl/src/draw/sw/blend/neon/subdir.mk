################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.c \
../ThirdParty/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.d \
./ThirdParty/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.d 

OBJS += \
./ThirdParty/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.o \
./ThirdParty/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/sw/blend/neon/%.o: ../ThirdParty/lvgl/src/draw/sw/blend/neon/%.c ThirdParty/lvgl/src/draw/sw/blend/neon/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-neon

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-neon:
	-$(RM) ./ThirdParty/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.d ./ThirdParty/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb565.o ./ThirdParty/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.d ./ThirdParty/lvgl/src/draw/sw/blend/neon/lv_draw_sw_blend_neon_to_rgb888.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-neon

