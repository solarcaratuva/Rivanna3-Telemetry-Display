################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_align.c \
../ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_flow.c \
../ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_grow.c \
../ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_ignore_layout.c \
../ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_internal_padding.c \
../ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_list.c \
../ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_new_track.c \
../ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_rtl.c \
../ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_win.c 

C_DEPS += \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_align.d \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_flow.d \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_grow.d \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_ignore_layout.d \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_internal_padding.d \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_list.d \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_new_track.d \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_rtl.d \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_win.d 

OBJS += \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_align.o \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_flow.o \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_grow.o \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_ignore_layout.o \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_internal_padding.o \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_list.o \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_new_track.o \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_rtl.o \
./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_win.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/layouts/flex/%.o: ../ThirdParty/lvgl/examples/layouts/flex/%.c ThirdParty/lvgl/examples/layouts/flex/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-layouts-2f-flex

clean-ThirdParty-2f-lvgl-2f-examples-2f-layouts-2f-flex:
	-$(RM) ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_align.d ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_align.o ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_flow.d ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_flow.o ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_grow.d ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_grow.o ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_ignore_layout.d ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_ignore_layout.o ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_internal_padding.d ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_internal_padding.o ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_list.d ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_list.o ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_new_track.d ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_new_track.o ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_rtl.d ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_rtl.o ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_win.d ./ThirdParty/lvgl/examples/layouts/flex/lv_example_flex_win.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-layouts-2f-flex

