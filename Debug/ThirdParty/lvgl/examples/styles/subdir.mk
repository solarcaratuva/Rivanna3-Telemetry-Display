################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/styles/lv_example_style_arc.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_background.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_blur.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_border.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_drop_shadow.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_gradient_buttons.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_gradient_conic.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_gradient_radial.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_image.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_line.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_local.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_margin.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_modal.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_multiple.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_opacity_transform.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_outline.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_padding.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_parts_states.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_shadow.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_size_position.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_text.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_theme.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_transform_card.c \
../ThirdParty/lvgl/examples/styles/lv_example_style_transition.c 

C_DEPS += \
./ThirdParty/lvgl/examples/styles/lv_example_style_arc.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_background.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_blur.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_border.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_drop_shadow.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_buttons.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_conic.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_radial.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_image.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_line.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_local.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_margin.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_modal.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_multiple.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_opacity_transform.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_outline.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_padding.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_parts_states.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_shadow.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_size_position.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_text.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_theme.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_transform_card.d \
./ThirdParty/lvgl/examples/styles/lv_example_style_transition.d 

OBJS += \
./ThirdParty/lvgl/examples/styles/lv_example_style_arc.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_background.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_blur.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_border.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_drop_shadow.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_buttons.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_conic.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_radial.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_image.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_line.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_local.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_margin.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_modal.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_multiple.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_opacity_transform.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_outline.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_padding.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_parts_states.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_shadow.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_size_position.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_text.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_theme.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_transform_card.o \
./ThirdParty/lvgl/examples/styles/lv_example_style_transition.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/styles/%.o: ../ThirdParty/lvgl/examples/styles/%.c ThirdParty/lvgl/examples/styles/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-styles

clean-ThirdParty-2f-lvgl-2f-examples-2f-styles:
	-$(RM) ./ThirdParty/lvgl/examples/styles/lv_example_style_arc.d ./ThirdParty/lvgl/examples/styles/lv_example_style_arc.o ./ThirdParty/lvgl/examples/styles/lv_example_style_background.d ./ThirdParty/lvgl/examples/styles/lv_example_style_background.o ./ThirdParty/lvgl/examples/styles/lv_example_style_blur.d ./ThirdParty/lvgl/examples/styles/lv_example_style_blur.o ./ThirdParty/lvgl/examples/styles/lv_example_style_border.d ./ThirdParty/lvgl/examples/styles/lv_example_style_border.o ./ThirdParty/lvgl/examples/styles/lv_example_style_drop_shadow.d ./ThirdParty/lvgl/examples/styles/lv_example_style_drop_shadow.o ./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_buttons.d ./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_buttons.o ./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_conic.d ./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_conic.o ./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_radial.d ./ThirdParty/lvgl/examples/styles/lv_example_style_gradient_radial.o ./ThirdParty/lvgl/examples/styles/lv_example_style_image.d ./ThirdParty/lvgl/examples/styles/lv_example_style_image.o ./ThirdParty/lvgl/examples/styles/lv_example_style_line.d ./ThirdParty/lvgl/examples/styles/lv_example_style_line.o ./ThirdParty/lvgl/examples/styles/lv_example_style_local.d ./ThirdParty/lvgl/examples/styles/lv_example_style_local.o ./ThirdParty/lvgl/examples/styles/lv_example_style_margin.d ./ThirdParty/lvgl/examples/styles/lv_example_style_margin.o ./ThirdParty/lvgl/examples/styles/lv_example_style_modal.d ./ThirdParty/lvgl/examples/styles/lv_example_style_modal.o ./ThirdParty/lvgl/examples/styles/lv_example_style_multiple.d ./ThirdParty/lvgl/examples/styles/lv_example_style_multiple.o ./ThirdParty/lvgl/examples/styles/lv_example_style_opacity_transform.d ./ThirdParty/lvgl/examples/styles/lv_example_style_opacity_transform.o ./ThirdParty/lvgl/examples/styles/lv_example_style_outline.d ./ThirdParty/lvgl/examples/styles/lv_example_style_outline.o ./ThirdParty/lvgl/examples/styles/lv_example_style_padding.d ./ThirdParty/lvgl/examples/styles/lv_example_style_padding.o ./ThirdParty/lvgl/examples/styles/lv_example_style_parts_states.d ./ThirdParty/lvgl/examples/styles/lv_example_style_parts_states.o ./ThirdParty/lvgl/examples/styles/lv_example_style_shadow.d ./ThirdParty/lvgl/examples/styles/lv_example_style_shadow.o ./ThirdParty/lvgl/examples/styles/lv_example_style_size_position.d ./ThirdParty/lvgl/examples/styles/lv_example_style_size_position.o ./ThirdParty/lvgl/examples/styles/lv_example_style_text.d ./ThirdParty/lvgl/examples/styles/lv_example_style_text.o ./ThirdParty/lvgl/examples/styles/lv_example_style_theme.d ./ThirdParty/lvgl/examples/styles/lv_example_style_theme.o ./ThirdParty/lvgl/examples/styles/lv_example_style_transform_card.d ./ThirdParty/lvgl/examples/styles/lv_example_style_transform_card.o ./ThirdParty/lvgl/examples/styles/lv_example_style_transition.d ./ThirdParty/lvgl/examples/styles/lv_example_style_transition.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-styles

