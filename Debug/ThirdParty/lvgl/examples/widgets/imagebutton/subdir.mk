################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/imagebutton/lv_example_imagebutton_transition.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/imagebutton/lv_example_imagebutton_transition.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/imagebutton/lv_example_imagebutton_transition.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/imagebutton/%.o: ../ThirdParty/lvgl/examples/widgets/imagebutton/%.c ThirdParty/lvgl/examples/widgets/imagebutton/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-imagebutton

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-imagebutton:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/imagebutton/lv_example_imagebutton_transition.d ./ThirdParty/lvgl/examples/widgets/imagebutton/lv_example_imagebutton_transition.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-imagebutton

