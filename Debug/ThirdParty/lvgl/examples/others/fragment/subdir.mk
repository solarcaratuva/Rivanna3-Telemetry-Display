################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/others/fragment/lv_example_fragment_1.c \
../ThirdParty/lvgl/examples/others/fragment/lv_example_fragment_2.c 

C_DEPS += \
./ThirdParty/lvgl/examples/others/fragment/lv_example_fragment_1.d \
./ThirdParty/lvgl/examples/others/fragment/lv_example_fragment_2.d 

OBJS += \
./ThirdParty/lvgl/examples/others/fragment/lv_example_fragment_1.o \
./ThirdParty/lvgl/examples/others/fragment/lv_example_fragment_2.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/others/fragment/%.o: ../ThirdParty/lvgl/examples/others/fragment/%.c ThirdParty/lvgl/examples/others/fragment/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-fragment

clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-fragment:
	-$(RM) ./ThirdParty/lvgl/examples/others/fragment/lv_example_fragment_1.d ./ThirdParty/lvgl/examples/others/fragment/lv_example_fragment_1.o ./ThirdParty/lvgl/examples/others/fragment/lv_example_fragment_2.d ./ThirdParty/lvgl/examples/others/fragment/lv_example_fragment_2.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-fragment

