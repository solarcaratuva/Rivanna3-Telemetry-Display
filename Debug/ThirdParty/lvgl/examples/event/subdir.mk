################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/event/lv_example_event_bubble.c \
../ThirdParty/lvgl/examples/event/lv_example_event_button.c \
../ThirdParty/lvgl/examples/event/lv_example_event_click.c \
../ThirdParty/lvgl/examples/event/lv_example_event_draw.c \
../ThirdParty/lvgl/examples/event/lv_example_event_streak.c \
../ThirdParty/lvgl/examples/event/lv_example_event_trickle.c 

C_DEPS += \
./ThirdParty/lvgl/examples/event/lv_example_event_bubble.d \
./ThirdParty/lvgl/examples/event/lv_example_event_button.d \
./ThirdParty/lvgl/examples/event/lv_example_event_click.d \
./ThirdParty/lvgl/examples/event/lv_example_event_draw.d \
./ThirdParty/lvgl/examples/event/lv_example_event_streak.d \
./ThirdParty/lvgl/examples/event/lv_example_event_trickle.d 

OBJS += \
./ThirdParty/lvgl/examples/event/lv_example_event_bubble.o \
./ThirdParty/lvgl/examples/event/lv_example_event_button.o \
./ThirdParty/lvgl/examples/event/lv_example_event_click.o \
./ThirdParty/lvgl/examples/event/lv_example_event_draw.o \
./ThirdParty/lvgl/examples/event/lv_example_event_streak.o \
./ThirdParty/lvgl/examples/event/lv_example_event_trickle.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/event/%.o: ../ThirdParty/lvgl/examples/event/%.c ThirdParty/lvgl/examples/event/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-event

clean-ThirdParty-2f-lvgl-2f-examples-2f-event:
	-$(RM) ./ThirdParty/lvgl/examples/event/lv_example_event_bubble.d ./ThirdParty/lvgl/examples/event/lv_example_event_bubble.o ./ThirdParty/lvgl/examples/event/lv_example_event_button.d ./ThirdParty/lvgl/examples/event/lv_example_event_button.o ./ThirdParty/lvgl/examples/event/lv_example_event_click.d ./ThirdParty/lvgl/examples/event/lv_example_event_click.o ./ThirdParty/lvgl/examples/event/lv_example_event_draw.d ./ThirdParty/lvgl/examples/event/lv_example_event_draw.o ./ThirdParty/lvgl/examples/event/lv_example_event_streak.d ./ThirdParty/lvgl/examples/event/lv_example_event_streak.o ./ThirdParty/lvgl/examples/event/lv_example_event_trickle.d ./ThirdParty/lvgl/examples/event/lv_example_event_trickle.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-event

