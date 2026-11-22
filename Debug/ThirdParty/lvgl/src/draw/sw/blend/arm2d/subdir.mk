################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/sw/blend/arm2d/lv_blend_arm2d.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/sw/blend/arm2d/lv_blend_arm2d.d 

OBJS += \
./ThirdParty/lvgl/src/draw/sw/blend/arm2d/lv_blend_arm2d.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/sw/blend/arm2d/%.o: ../ThirdParty/lvgl/src/draw/sw/blend/arm2d/%.c ThirdParty/lvgl/src/draw/sw/blend/arm2d/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-arm2d

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-arm2d:
	-$(RM) ./ThirdParty/lvgl/src/draw/sw/blend/arm2d/lv_blend_arm2d.d ./ThirdParty/lvgl/src/draw/sw/blend/arm2d/lv_blend_arm2d.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-arm2d

