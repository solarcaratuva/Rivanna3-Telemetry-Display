################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/keyboard/lv_keyboard.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/keyboard/lv_keyboard.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/keyboard/lv_keyboard.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/keyboard/%.o: ../ThirdParty/lvgl/src/widgets/keyboard/%.c ThirdParty/lvgl/src/widgets/keyboard/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-keyboard

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-keyboard:
	-$(RM) ./ThirdParty/lvgl/src/widgets/keyboard/lv_keyboard.d ./ThirdParty/lvgl/src/widgets/keyboard/lv_keyboard.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-keyboard

