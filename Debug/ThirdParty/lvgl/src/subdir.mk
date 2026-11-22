################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/lv_init.c 

C_DEPS += \
./ThirdParty/lvgl/src/lv_init.d 

OBJS += \
./ThirdParty/lvgl/src/lv_init.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/%.o: ../ThirdParty/lvgl/src/%.c ThirdParty/lvgl/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src

clean-ThirdParty-2f-lvgl-2f-src:
	-$(RM) ./ThirdParty/lvgl/src/lv_init.d ./ThirdParty/lvgl/src/lv_init.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src

