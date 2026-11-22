################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/switch/lv_switch.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/switch/lv_switch.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/switch/lv_switch.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/switch/%.o: ../ThirdParty/lvgl/src/widgets/switch/%.c ThirdParty/lvgl/src/widgets/switch/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-switch

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-switch:
	-$(RM) ./ThirdParty/lvgl/src/widgets/switch/lv_switch.d ./ThirdParty/lvgl/src/widgets/switch/lv_switch.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-switch

