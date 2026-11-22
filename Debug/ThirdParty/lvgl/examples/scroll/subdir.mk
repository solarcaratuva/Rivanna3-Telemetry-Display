################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_chain.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_circular.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_events.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_floating.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_infinite.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_one.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_overview.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_properties.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_rtl.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollable.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollbar_mode.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollbar_style.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_snap.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_to.c \
../ThirdParty/lvgl/examples/scroll/lv_example_scroll_translate.c 

C_DEPS += \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_chain.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_circular.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_events.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_floating.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_infinite.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_one.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_overview.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_properties.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_rtl.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollable.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollbar_mode.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollbar_style.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_snap.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_to.d \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_translate.d 

OBJS += \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_chain.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_circular.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_events.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_floating.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_infinite.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_one.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_overview.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_properties.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_rtl.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollable.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollbar_mode.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollbar_style.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_snap.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_to.o \
./ThirdParty/lvgl/examples/scroll/lv_example_scroll_translate.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/scroll/%.o: ../ThirdParty/lvgl/examples/scroll/%.c ThirdParty/lvgl/examples/scroll/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-scroll

clean-ThirdParty-2f-lvgl-2f-examples-2f-scroll:
	-$(RM) ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_chain.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_chain.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_circular.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_circular.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_events.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_events.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_floating.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_floating.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_infinite.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_infinite.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_one.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_one.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_overview.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_overview.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_properties.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_properties.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_rtl.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_rtl.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollable.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollable.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollbar_mode.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollbar_mode.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollbar_style.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_scrollbar_style.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_snap.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_snap.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_to.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_to.o ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_translate.d ./ThirdParty/lvgl/examples/scroll/lv_example_scroll_translate.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-scroll

