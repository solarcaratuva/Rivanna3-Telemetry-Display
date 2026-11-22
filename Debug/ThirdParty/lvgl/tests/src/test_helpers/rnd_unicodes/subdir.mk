################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/src/test_helpers/rnd_unicodes/lv_rnd_unicodes.c 

C_DEPS += \
./ThirdParty/lvgl/tests/src/test_helpers/rnd_unicodes/lv_rnd_unicodes.d 

OBJS += \
./ThirdParty/lvgl/tests/src/test_helpers/rnd_unicodes/lv_rnd_unicodes.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/src/test_helpers/rnd_unicodes/%.o: ../ThirdParty/lvgl/tests/src/test_helpers/rnd_unicodes/%.c ThirdParty/lvgl/tests/src/test_helpers/rnd_unicodes/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_helpers-2f-rnd_unicodes

clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_helpers-2f-rnd_unicodes:
	-$(RM) ./ThirdParty/lvgl/tests/src/test_helpers/rnd_unicodes/lv_rnd_unicodes.d ./ThirdParty/lvgl/tests/src/test_helpers/rnd_unicodes/lv_rnd_unicodes.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_helpers-2f-rnd_unicodes

