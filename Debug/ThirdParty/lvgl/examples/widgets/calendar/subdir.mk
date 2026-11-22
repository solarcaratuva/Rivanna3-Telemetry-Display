################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_basic.c \
../ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_chinese.c \
../ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_highlighted_days.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_basic.d \
./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_chinese.d \
./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_highlighted_days.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_basic.o \
./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_chinese.o \
./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_highlighted_days.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/calendar/%.o: ../ThirdParty/lvgl/examples/widgets/calendar/%.c ThirdParty/lvgl/examples/widgets/calendar/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-calendar

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-calendar:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_basic.d ./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_basic.o ./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_chinese.d ./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_chinese.o ./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_highlighted_days.d ./ThirdParty/lvgl/examples/widgets/calendar/lv_example_calendar_highlighted_days.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-calendar

