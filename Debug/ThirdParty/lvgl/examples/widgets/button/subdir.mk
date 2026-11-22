################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/button/lv_example_button_basic.c \
../ThirdParty/lvgl/examples/widgets/button/lv_example_button_event.c \
../ThirdParty/lvgl/examples/widgets/button/lv_example_button_states.c \
../ThirdParty/lvgl/examples/widgets/button/lv_example_button_styling.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/button/lv_example_button_basic.d \
./ThirdParty/lvgl/examples/widgets/button/lv_example_button_event.d \
./ThirdParty/lvgl/examples/widgets/button/lv_example_button_states.d \
./ThirdParty/lvgl/examples/widgets/button/lv_example_button_styling.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/button/lv_example_button_basic.o \
./ThirdParty/lvgl/examples/widgets/button/lv_example_button_event.o \
./ThirdParty/lvgl/examples/widgets/button/lv_example_button_states.o \
./ThirdParty/lvgl/examples/widgets/button/lv_example_button_styling.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/button/%.o: ../ThirdParty/lvgl/examples/widgets/button/%.c ThirdParty/lvgl/examples/widgets/button/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-button

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-button:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/button/lv_example_button_basic.d ./ThirdParty/lvgl/examples/widgets/button/lv_example_button_basic.o ./ThirdParty/lvgl/examples/widgets/button/lv_example_button_event.d ./ThirdParty/lvgl/examples/widgets/button/lv_example_button_event.o ./ThirdParty/lvgl/examples/widgets/button/lv_example_button_states.d ./ThirdParty/lvgl/examples/widgets/button/lv_example_button_states.o ./ThirdParty/lvgl/examples/widgets/button/lv_example_button_styling.d ./ThirdParty/lvgl/examples/widgets/button/lv_example_button_styling.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-button

