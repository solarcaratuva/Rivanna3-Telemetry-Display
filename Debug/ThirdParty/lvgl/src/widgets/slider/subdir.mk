################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/slider/lv_slider.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/slider/lv_slider.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/slider/lv_slider.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/slider/%.o: ../ThirdParty/lvgl/src/widgets/slider/%.c ThirdParty/lvgl/src/widgets/slider/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-slider

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-slider:
	-$(RM) ./ThirdParty/lvgl/src/widgets/slider/lv_slider.d ./ThirdParty/lvgl/src/widgets/slider/lv_slider.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-slider

