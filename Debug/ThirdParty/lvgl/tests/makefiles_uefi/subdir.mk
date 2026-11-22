################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/makefiles_uefi/test.c 

C_DEPS += \
./ThirdParty/lvgl/tests/makefiles_uefi/test.d 

OBJS += \
./ThirdParty/lvgl/tests/makefiles_uefi/test.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/makefiles_uefi/%.o: ../ThirdParty/lvgl/tests/makefiles_uefi/%.c ThirdParty/lvgl/tests/makefiles_uefi/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-makefiles_uefi

clean-ThirdParty-2f-lvgl-2f-tests-2f-makefiles_uefi:
	-$(RM) ./ThirdParty/lvgl/tests/makefiles_uefi/test.d ./ThirdParty/lvgl/tests/makefiles_uefi/test.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-makefiles_uefi

