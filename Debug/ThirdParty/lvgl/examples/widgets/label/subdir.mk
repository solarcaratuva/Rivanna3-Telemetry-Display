################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/label/lv_example_label_bind_text.c \
../ThirdParty/lvgl/examples/widgets/label/lv_example_label_long_mode.c \
../ThirdParty/lvgl/examples/widgets/label/lv_example_label_recolor.c \
../ThirdParty/lvgl/examples/widgets/label/lv_example_label_set_text_newline.c \
../ThirdParty/lvgl/examples/widgets/label/lv_example_label_styling.c \
../ThirdParty/lvgl/examples/widgets/label/lv_example_label_text_align.c \
../ThirdParty/lvgl/examples/widgets/label/lv_example_label_translation.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_bind_text.d \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_long_mode.d \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_recolor.d \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_set_text_newline.d \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_styling.d \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_text_align.d \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_translation.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_bind_text.o \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_long_mode.o \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_recolor.o \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_set_text_newline.o \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_styling.o \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_text_align.o \
./ThirdParty/lvgl/examples/widgets/label/lv_example_label_translation.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/label/%.o: ../ThirdParty/lvgl/examples/widgets/label/%.c ThirdParty/lvgl/examples/widgets/label/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-label

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-label:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_bind_text.d ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_bind_text.o ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_long_mode.d ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_long_mode.o ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_recolor.d ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_recolor.o ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_set_text_newline.d ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_set_text_newline.o ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_styling.d ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_styling.o ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_text_align.d ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_text_align.o ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_translation.d ./ThirdParty/lvgl/examples/widgets/label/lv_example_label_translation.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-label

