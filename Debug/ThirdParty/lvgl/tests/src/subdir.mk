################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/src/lv_test_init.c \
../ThirdParty/lvgl/tests/src/test_layout_switch.c 

C_DEPS += \
./ThirdParty/lvgl/tests/src/lv_test_init.d \
./ThirdParty/lvgl/tests/src/test_layout_switch.d 

OBJS += \
./ThirdParty/lvgl/tests/src/lv_test_init.o \
./ThirdParty/lvgl/tests/src/test_layout_switch.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/src/%.o: ../ThirdParty/lvgl/tests/src/%.c ThirdParty/lvgl/tests/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-src

clean-ThirdParty-2f-lvgl-2f-tests-2f-src:
	-$(RM) ./ThirdParty/lvgl/tests/src/lv_test_init.d ./ThirdParty/lvgl/tests/src/lv_test_init.o ./ThirdParty/lvgl/tests/src/test_layout_switch.d ./ThirdParty/lvgl/tests/src/test_layout_switch.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-src

