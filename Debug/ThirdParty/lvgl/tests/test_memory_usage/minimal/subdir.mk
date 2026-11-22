################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/test_memory_usage/minimal/logo.c \
../ThirdParty/lvgl/tests/test_memory_usage/minimal/main.c 

C_DEPS += \
./ThirdParty/lvgl/tests/test_memory_usage/minimal/logo.d \
./ThirdParty/lvgl/tests/test_memory_usage/minimal/main.d 

OBJS += \
./ThirdParty/lvgl/tests/test_memory_usage/minimal/logo.o \
./ThirdParty/lvgl/tests/test_memory_usage/minimal/main.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/test_memory_usage/minimal/%.o: ../ThirdParty/lvgl/tests/test_memory_usage/minimal/%.c ThirdParty/lvgl/tests/test_memory_usage/minimal/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-test_memory_usage-2f-minimal

clean-ThirdParty-2f-lvgl-2f-tests-2f-test_memory_usage-2f-minimal:
	-$(RM) ./ThirdParty/lvgl/tests/test_memory_usage/minimal/logo.d ./ThirdParty/lvgl/tests/test_memory_usage/minimal/logo.o ./ThirdParty/lvgl/tests/test_memory_usage/minimal/main.d ./ThirdParty/lvgl/tests/test_memory_usage/minimal/main.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-test_memory_usage-2f-minimal

