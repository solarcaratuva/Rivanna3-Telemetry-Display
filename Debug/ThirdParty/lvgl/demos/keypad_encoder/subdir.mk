################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.c 

C_DEPS += \
./ThirdParty/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.d 

OBJS += \
./ThirdParty/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/keypad_encoder/%.o: ../ThirdParty/lvgl/demos/keypad_encoder/%.c ThirdParty/lvgl/demos/keypad_encoder/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-keypad_encoder

clean-ThirdParty-2f-lvgl-2f-demos-2f-keypad_encoder:
	-$(RM) ./ThirdParty/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.d ./ThirdParty/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-keypad_encoder

