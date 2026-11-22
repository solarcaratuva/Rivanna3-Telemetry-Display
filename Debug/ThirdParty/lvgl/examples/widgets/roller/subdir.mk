################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_bind_value.c \
../ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_event.c \
../ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_fade_mask.c \
../ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_options.c \
../ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_styling.c \
../ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_visible_rows.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_bind_value.d \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_event.d \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_fade_mask.d \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_options.d \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_styling.d \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_visible_rows.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_bind_value.o \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_event.o \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_fade_mask.o \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_options.o \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_styling.o \
./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_visible_rows.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/roller/%.o: ../ThirdParty/lvgl/examples/widgets/roller/%.c ThirdParty/lvgl/examples/widgets/roller/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-roller

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-roller:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_bind_value.d ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_bind_value.o ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_event.d ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_event.o ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_fade_mask.d ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_fade_mask.o ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_options.d ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_options.o ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_styling.d ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_styling.o ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_visible_rows.d ./ThirdParty/lvgl/examples/widgets/roller/lv_example_roller_visible_rows.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-roller

