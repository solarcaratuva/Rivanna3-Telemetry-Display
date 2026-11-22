################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/unity/unity.c 

C_DEPS += \
./ThirdParty/lvgl/tests/unity/unity.d 

OBJS += \
./ThirdParty/lvgl/tests/unity/unity.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/unity/%.o: ../ThirdParty/lvgl/tests/unity/%.c ThirdParty/lvgl/tests/unity/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-unity

clean-ThirdParty-2f-lvgl-2f-tests-2f-unity:
	-$(RM) ./ThirdParty/lvgl/tests/unity/unity.d ./ThirdParty/lvgl/tests/unity/unity.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-unity

