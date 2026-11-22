################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_blur.c \
../ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_modal.c \
../ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_settings.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_blur.d \
./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_modal.d \
./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_settings.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_blur.o \
./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_modal.o \
./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_settings.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/msgbox/%.o: ../ThirdParty/lvgl/examples/widgets/msgbox/%.c ThirdParty/lvgl/examples/widgets/msgbox/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-msgbox

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-msgbox:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_blur.d ./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_blur.o ./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_modal.d ./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_modal.o ./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_settings.d ./ThirdParty/lvgl/examples/widgets/msgbox/lv_example_msgbox_settings.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-msgbox

