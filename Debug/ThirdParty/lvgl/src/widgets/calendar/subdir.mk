################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/calendar/lv_calendar.c \
../ThirdParty/lvgl/src/widgets/calendar/lv_calendar_chinese.c \
../ThirdParty/lvgl/src/widgets/calendar/lv_calendar_header_arrow.c \
../ThirdParty/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/calendar/lv_calendar.d \
./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_chinese.d \
./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_header_arrow.d \
./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/calendar/lv_calendar.o \
./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_chinese.o \
./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_header_arrow.o \
./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/calendar/%.o: ../ThirdParty/lvgl/src/widgets/calendar/%.c ThirdParty/lvgl/src/widgets/calendar/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-calendar

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-calendar:
	-$(RM) ./ThirdParty/lvgl/src/widgets/calendar/lv_calendar.d ./ThirdParty/lvgl/src/widgets/calendar/lv_calendar.o ./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_chinese.d ./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_chinese.o ./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_header_arrow.d ./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_header_arrow.o ./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.d ./ThirdParty/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-calendar

