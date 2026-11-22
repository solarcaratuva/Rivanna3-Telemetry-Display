################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/stdlib/lv_mem.c 

C_DEPS += \
./ThirdParty/lvgl/src/stdlib/lv_mem.d 

OBJS += \
./ThirdParty/lvgl/src/stdlib/lv_mem.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/stdlib/%.o: ../ThirdParty/lvgl/src/stdlib/%.c ThirdParty/lvgl/src/stdlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib

clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib:
	-$(RM) ./ThirdParty/lvgl/src/stdlib/lv_mem.d ./ThirdParty/lvgl/src/stdlib/lv_mem.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib

