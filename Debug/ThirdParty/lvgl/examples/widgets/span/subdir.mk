################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/span/lv_example_span_hittest.c \
../ThirdParty/lvgl/examples/widgets/span/lv_example_span_styling.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/span/lv_example_span_hittest.d \
./ThirdParty/lvgl/examples/widgets/span/lv_example_span_styling.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/span/lv_example_span_hittest.o \
./ThirdParty/lvgl/examples/widgets/span/lv_example_span_styling.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/span/%.o: ../ThirdParty/lvgl/examples/widgets/span/%.c ThirdParty/lvgl/examples/widgets/span/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-span

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-span:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/span/lv_example_span_hittest.d ./ThirdParty/lvgl/examples/widgets/span/lv_example_span_hittest.o ./ThirdParty/lvgl/examples/widgets/span/lv_example_span_styling.d ./ThirdParty/lvgl/examples/widgets/span/lv_example_span_styling.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-span

