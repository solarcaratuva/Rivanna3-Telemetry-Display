################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/debugging/monkey/lv_monkey.c 

C_DEPS += \
./ThirdParty/lvgl/src/debugging/monkey/lv_monkey.d 

OBJS += \
./ThirdParty/lvgl/src/debugging/monkey/lv_monkey.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/debugging/monkey/%.o: ../ThirdParty/lvgl/src/debugging/monkey/%.c ThirdParty/lvgl/src/debugging/monkey/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-monkey

clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-monkey:
	-$(RM) ./ThirdParty/lvgl/src/debugging/monkey/lv_monkey.d ./ThirdParty/lvgl/src/debugging/monkey/lv_monkey.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-monkey

