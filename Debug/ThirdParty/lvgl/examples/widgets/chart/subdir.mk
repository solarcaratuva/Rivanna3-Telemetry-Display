################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_area_gradient.c \
../ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_circular_gap.c \
../ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_cursor.c \
../ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_pressed_tooltip.c \
../ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_recolor_bars.c \
../ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_scatter.c \
../ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_scrollable.c \
../ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_series.c \
../ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_ticks_labels.c \
../ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_types.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_area_gradient.d \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_circular_gap.d \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_cursor.d \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_pressed_tooltip.d \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_recolor_bars.d \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_scatter.d \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_scrollable.d \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_series.d \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_ticks_labels.d \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_types.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_area_gradient.o \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_circular_gap.o \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_cursor.o \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_pressed_tooltip.o \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_recolor_bars.o \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_scatter.o \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_scrollable.o \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_series.o \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_ticks_labels.o \
./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_types.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/chart/%.o: ../ThirdParty/lvgl/examples/widgets/chart/%.c ThirdParty/lvgl/examples/widgets/chart/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-chart

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-chart:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_area_gradient.d ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_area_gradient.o ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_circular_gap.d ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_circular_gap.o ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_cursor.d ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_cursor.o ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_pressed_tooltip.d ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_pressed_tooltip.o ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_recolor_bars.d ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_recolor_bars.o ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_scatter.d ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_scatter.o ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_scrollable.d ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_scrollable.o ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_series.d ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_series.o ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_ticks_labels.d ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_ticks_labels.o ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_types.d ./ThirdParty/lvgl/examples/widgets/chart/lv_example_chart_types.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-chart

