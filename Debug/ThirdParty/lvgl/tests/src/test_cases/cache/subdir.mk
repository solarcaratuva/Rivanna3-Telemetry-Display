################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/src/test_cases/cache/test_cache.c 

C_DEPS += \
./ThirdParty/lvgl/tests/src/test_cases/cache/test_cache.d 

OBJS += \
./ThirdParty/lvgl/tests/src/test_cases/cache/test_cache.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/src/test_cases/cache/%.o: ../ThirdParty/lvgl/tests/src/test_cases/cache/%.c ThirdParty/lvgl/tests/src/test_cases/cache/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-cache

clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-cache:
	-$(RM) ./ThirdParty/lvgl/tests/src/test_cases/cache/test_cache.d ./ThirdParty/lvgl/tests/src/test_cases/cache/test_cache.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-cache

