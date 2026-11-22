################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_bind_state.c \
../ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_bind_value.c \
../ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_event.c \
../ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_img_indicator.c \
../ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_modes.c \
../ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_reversed_direction.c \
../ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_styling.c \
../ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_value_range_orientation.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_bind_state.d \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_bind_value.d \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_event.d \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_img_indicator.d \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_modes.d \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_reversed_direction.d \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_styling.d \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_value_range_orientation.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_bind_state.o \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_bind_value.o \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_event.o \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_img_indicator.o \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_modes.o \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_reversed_direction.o \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_styling.o \
./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_value_range_orientation.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/slider/%.o: ../ThirdParty/lvgl/examples/widgets/slider/%.c ThirdParty/lvgl/examples/widgets/slider/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-slider

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-slider:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_bind_state.d ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_bind_state.o ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_bind_value.d ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_bind_value.o ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_event.d ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_event.o ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_img_indicator.d ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_img_indicator.o ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_modes.d ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_modes.o ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_reversed_direction.d ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_reversed_direction.o ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_styling.d ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_styling.o ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_value_range_orientation.d ./ThirdParty/lvgl/examples/widgets/slider/lv_example_slider_value_range_orientation.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-slider

