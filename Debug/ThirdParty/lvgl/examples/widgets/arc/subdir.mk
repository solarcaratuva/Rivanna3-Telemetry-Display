################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_bind_value.c \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_change_rate.c \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_event.c \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_img_indicator.c \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_knob_widget.c \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_mode.c \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_pie_chart.c \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_rotation.c \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_set_angles.c \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_styling.c \
../ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_value_range.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_bind_value.d \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_change_rate.d \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_event.d \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_img_indicator.d \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_knob_widget.d \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_mode.d \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_pie_chart.d \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_rotation.d \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_set_angles.d \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_styling.d \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_value_range.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_bind_value.o \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_change_rate.o \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_event.o \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_img_indicator.o \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_knob_widget.o \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_mode.o \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_pie_chart.o \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_rotation.o \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_set_angles.o \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_styling.o \
./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_value_range.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/arc/%.o: ../ThirdParty/lvgl/examples/widgets/arc/%.c ThirdParty/lvgl/examples/widgets/arc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-arc

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-arc:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_bind_value.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_bind_value.o ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_change_rate.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_change_rate.o ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_event.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_event.o ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_img_indicator.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_img_indicator.o ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_knob_widget.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_knob_widget.o ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_mode.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_mode.o ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_pie_chart.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_pie_chart.o ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_rotation.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_rotation.o ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_set_angles.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_set_angles.o ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_styling.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_styling.o ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_value_range.d ./ThirdParty/lvgl/examples/widgets/arc/lv_example_arc_value_range.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-arc

