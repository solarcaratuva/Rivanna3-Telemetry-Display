################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/test_install/lvgl_linux-3d.c \
../ThirdParty/lvgl/tests/test_install/lvgl_linux.c 

C_DEPS += \
./ThirdParty/lvgl/tests/test_install/lvgl_linux-3d.d \
./ThirdParty/lvgl/tests/test_install/lvgl_linux.d 

OBJS += \
./ThirdParty/lvgl/tests/test_install/lvgl_linux-3d.o \
./ThirdParty/lvgl/tests/test_install/lvgl_linux.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/test_install/%.o: ../ThirdParty/lvgl/tests/test_install/%.c ThirdParty/lvgl/tests/test_install/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-test_install

clean-ThirdParty-2f-lvgl-2f-tests-2f-test_install:
	-$(RM) ./ThirdParty/lvgl/tests/test_install/lvgl_linux-3d.d ./ThirdParty/lvgl/tests/test_install/lvgl_linux-3d.o ./ThirdParty/lvgl/tests/test_install/lvgl_linux.d ./ThirdParty/lvgl/tests/test_install/lvgl_linux.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-test_install

