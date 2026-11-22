################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_bind_section.c \
../ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_compass.c \
../ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_heart_rate.c \
../ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_label_recolor.c \
../ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_modes.c \
../ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_needles.c \
../ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_range.c \
../ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_styling.c \
../ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_sunset_sunrise.c \
../ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_ticks.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_bind_section.d \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_compass.d \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_heart_rate.d \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_label_recolor.d \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_modes.d \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_needles.d \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_range.d \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_styling.d \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_sunset_sunrise.d \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_ticks.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_bind_section.o \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_compass.o \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_heart_rate.o \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_label_recolor.o \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_modes.o \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_needles.o \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_range.o \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_styling.o \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_sunset_sunrise.o \
./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_ticks.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/scale/%.o: ../ThirdParty/lvgl/examples/widgets/scale/%.c ThirdParty/lvgl/examples/widgets/scale/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-scale

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-scale:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_bind_section.d ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_bind_section.o ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_compass.d ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_compass.o ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_heart_rate.d ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_heart_rate.o ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_label_recolor.d ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_label_recolor.o ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_modes.d ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_modes.o ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_needles.d ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_needles.o ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_range.d ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_range.o ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_styling.d ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_styling.o ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_sunset_sunrise.d ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_sunset_sunrise.o ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_ticks.d ./ThirdParty/lvgl/examples/widgets/scale/lv_example_scale_ticks.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-scale

