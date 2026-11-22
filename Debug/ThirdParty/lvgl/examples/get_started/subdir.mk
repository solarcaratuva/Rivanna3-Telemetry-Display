################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/get_started/lv_example_get_started_button.c 

C_DEPS += \
./ThirdParty/lvgl/examples/get_started/lv_example_get_started_button.d 

OBJS += \
./ThirdParty/lvgl/examples/get_started/lv_example_get_started_button.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/get_started/%.o: ../ThirdParty/lvgl/examples/get_started/%.c ThirdParty/lvgl/examples/get_started/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-get_started

clean-ThirdParty-2f-lvgl-2f-examples-2f-get_started:
	-$(RM) ./ThirdParty/lvgl/examples/get_started/lv_example_get_started_button.d ./ThirdParty/lvgl/examples/get_started/lv_example_get_started_button.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-get_started

