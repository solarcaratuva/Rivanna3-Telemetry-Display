################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/arclabel/lv_example_arclabel_curved_text.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/arclabel/lv_example_arclabel_curved_text.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/arclabel/lv_example_arclabel_curved_text.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/arclabel/%.o: ../ThirdParty/lvgl/examples/widgets/arclabel/%.c ThirdParty/lvgl/examples/widgets/arclabel/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-arclabel

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-arclabel:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/arclabel/lv_example_arclabel_curved_text.d ./ThirdParty/lvgl/examples/widgets/arclabel/lv_example_arclabel_curved_text.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-arclabel

