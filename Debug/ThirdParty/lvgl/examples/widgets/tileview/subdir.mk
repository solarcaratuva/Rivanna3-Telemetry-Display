################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/tileview/lv_example_tileview_l_shape.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/tileview/lv_example_tileview_l_shape.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/tileview/lv_example_tileview_l_shape.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/tileview/%.o: ../ThirdParty/lvgl/examples/widgets/tileview/%.c ThirdParty/lvgl/examples/widgets/tileview/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-tileview

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-tileview:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/tileview/lv_example_tileview_l_shape.d ./ThirdParty/lvgl/examples/widgets/tileview/lv_example_tileview_l_shape.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-tileview

