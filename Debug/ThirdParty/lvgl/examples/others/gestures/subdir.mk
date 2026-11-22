################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/others/gestures/lv_example_gestures.c 

C_DEPS += \
./ThirdParty/lvgl/examples/others/gestures/lv_example_gestures.d 

OBJS += \
./ThirdParty/lvgl/examples/others/gestures/lv_example_gestures.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/others/gestures/%.o: ../ThirdParty/lvgl/examples/others/gestures/%.c ThirdParty/lvgl/examples/others/gestures/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-gestures

clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-gestures:
	-$(RM) ./ThirdParty/lvgl/examples/others/gestures/lv_example_gestures.d ./ThirdParty/lvgl/examples/others/gestures/lv_example_gestures.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-gestures

