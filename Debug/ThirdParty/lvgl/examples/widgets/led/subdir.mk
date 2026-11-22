################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/led/lv_example_led_brightness.c \
../ThirdParty/lvgl/examples/widgets/led/lv_example_led_color.c \
../ThirdParty/lvgl/examples/widgets/led/lv_example_led_styling.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/led/lv_example_led_brightness.d \
./ThirdParty/lvgl/examples/widgets/led/lv_example_led_color.d \
./ThirdParty/lvgl/examples/widgets/led/lv_example_led_styling.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/led/lv_example_led_brightness.o \
./ThirdParty/lvgl/examples/widgets/led/lv_example_led_color.o \
./ThirdParty/lvgl/examples/widgets/led/lv_example_led_styling.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/led/%.o: ../ThirdParty/lvgl/examples/widgets/led/%.c ThirdParty/lvgl/examples/widgets/led/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-led

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-led:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/led/lv_example_led_brightness.d ./ThirdParty/lvgl/examples/widgets/led/lv_example_led_brightness.o ./ThirdParty/lvgl/examples/widgets/led/lv_example_led_color.d ./ThirdParty/lvgl/examples/widgets/led/lv_example_led_color.o ./ThirdParty/lvgl/examples/widgets/led/lv_example_led_styling.d ./ThirdParty/lvgl/examples/widgets/led/lv_example_led_styling.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-led

