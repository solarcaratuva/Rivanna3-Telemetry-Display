################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/makefiles/test.c 

C_DEPS += \
./ThirdParty/lvgl/tests/makefiles/test.d 

OBJS += \
./ThirdParty/lvgl/tests/makefiles/test.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/makefiles/%.o: ../ThirdParty/lvgl/tests/makefiles/%.c ThirdParty/lvgl/tests/makefiles/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-makefiles

clean-ThirdParty-2f-lvgl-2f-tests-2f-makefiles:
	-$(RM) ./ThirdParty/lvgl/tests/makefiles/test.d ./ThirdParty/lvgl/tests/makefiles/test.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-makefiles

