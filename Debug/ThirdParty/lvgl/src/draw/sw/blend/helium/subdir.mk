################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../ThirdParty/lvgl/src/draw/sw/blend/helium/lv_blend_helium.S 

OBJS += \
./ThirdParty/lvgl/src/draw/sw/blend/helium/lv_blend_helium.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/sw/blend/helium/%.o: ../ThirdParty/lvgl/src/draw/sw/blend/helium/%.S ThirdParty/lvgl/src/draw/sw/blend/helium/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	gcc -g -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-helium

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-helium:
	-$(RM) ./ThirdParty/lvgl/src/draw/sw/blend/helium/lv_blend_helium.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-helium

