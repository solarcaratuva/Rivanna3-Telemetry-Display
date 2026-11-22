################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/src/test_helpers/refr/lv_test_refr.c 

C_DEPS += \
./ThirdParty/lvgl/tests/src/test_helpers/refr/lv_test_refr.d 

OBJS += \
./ThirdParty/lvgl/tests/src/test_helpers/refr/lv_test_refr.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/src/test_helpers/refr/%.o: ../ThirdParty/lvgl/tests/src/test_helpers/refr/%.c ThirdParty/lvgl/tests/src/test_helpers/refr/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_helpers-2f-refr

clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_helpers-2f-refr:
	-$(RM) ./ThirdParty/lvgl/tests/src/test_helpers/refr/lv_test_refr.d ./ThirdParty/lvgl/tests/src/test_helpers/refr/lv_test_refr.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_helpers-2f-refr

