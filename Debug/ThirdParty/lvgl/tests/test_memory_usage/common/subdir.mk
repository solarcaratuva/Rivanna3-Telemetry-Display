################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/test_memory_usage/common/app_widgets.c \
../ThirdParty/lvgl/tests/test_memory_usage/common/rom_stubs.c 

C_DEPS += \
./ThirdParty/lvgl/tests/test_memory_usage/common/app_widgets.d \
./ThirdParty/lvgl/tests/test_memory_usage/common/rom_stubs.d 

OBJS += \
./ThirdParty/lvgl/tests/test_memory_usage/common/app_widgets.o \
./ThirdParty/lvgl/tests/test_memory_usage/common/rom_stubs.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/test_memory_usage/common/%.o: ../ThirdParty/lvgl/tests/test_memory_usage/common/%.c ThirdParty/lvgl/tests/test_memory_usage/common/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-test_memory_usage-2f-common

clean-ThirdParty-2f-lvgl-2f-tests-2f-test_memory_usage-2f-common:
	-$(RM) ./ThirdParty/lvgl/tests/test_memory_usage/common/app_widgets.d ./ThirdParty/lvgl/tests/test_memory_usage/common/app_widgets.o ./ThirdParty/lvgl/tests/test_memory_usage/common/rom_stubs.d ./ThirdParty/lvgl/tests/test_memory_usage/common/rom_stubs.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-test_memory_usage-2f-common

