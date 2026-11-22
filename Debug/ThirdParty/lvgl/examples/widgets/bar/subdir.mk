################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_bind_value.c \
../ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_img_indicator.c \
../ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_modes.c \
../ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_orientation.c \
../ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_styling.c \
../ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_value_range.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_bind_value.d \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_img_indicator.d \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_modes.d \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_orientation.d \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_styling.d \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_value_range.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_bind_value.o \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_img_indicator.o \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_modes.o \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_orientation.o \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_styling.o \
./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_value_range.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/bar/%.o: ../ThirdParty/lvgl/examples/widgets/bar/%.c ThirdParty/lvgl/examples/widgets/bar/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-bar

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-bar:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_bind_value.d ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_bind_value.o ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_img_indicator.d ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_img_indicator.o ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_modes.d ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_modes.o ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_orientation.d ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_orientation.o ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_styling.d ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_styling.o ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_value_range.d ./ThirdParty/lvgl/examples/widgets/bar/lv_example_bar_value_range.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-bar

