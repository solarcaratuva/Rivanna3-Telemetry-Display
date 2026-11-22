################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/get_started/get_started_hello_world/lv_example_get_started_hello_world.c 

C_DEPS += \
./ThirdParty/lvgl/examples/get_started/get_started_hello_world/lv_example_get_started_hello_world.d 

OBJS += \
./ThirdParty/lvgl/examples/get_started/get_started_hello_world/lv_example_get_started_hello_world.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/get_started/get_started_hello_world/%.o: ../ThirdParty/lvgl/examples/get_started/get_started_hello_world/%.c ThirdParty/lvgl/examples/get_started/get_started_hello_world/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-get_started-2f-get_started_hello_world

clean-ThirdParty-2f-lvgl-2f-examples-2f-get_started-2f-get_started_hello_world:
	-$(RM) ./ThirdParty/lvgl/examples/get_started/get_started_hello_world/lv_example_get_started_hello_world.d ./ThirdParty/lvgl/examples/get_started/get_started_hello_world/lv_example_get_started_hello_world.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-get_started-2f-get_started_hello_world

