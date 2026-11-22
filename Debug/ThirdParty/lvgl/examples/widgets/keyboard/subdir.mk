################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_custom_draw.c \
../ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_custom_map.c \
../ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_modes.c \
../ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_popovers.c \
../ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_textarea.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_custom_draw.d \
./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_custom_map.d \
./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_modes.d \
./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_popovers.d \
./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_textarea.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_custom_draw.o \
./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_custom_map.o \
./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_modes.o \
./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_popovers.o \
./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_textarea.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/keyboard/%.o: ../ThirdParty/lvgl/examples/widgets/keyboard/%.c ThirdParty/lvgl/examples/widgets/keyboard/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-keyboard

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-keyboard:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_custom_draw.d ./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_custom_draw.o ./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_custom_map.d ./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_custom_map.o ./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_modes.d ./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_modes.o ./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_popovers.d ./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_popovers.o ./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_textarea.d ./ThirdParty/lvgl/examples/widgets/keyboard/lv_example_keyboard_textarea.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-keyboard

