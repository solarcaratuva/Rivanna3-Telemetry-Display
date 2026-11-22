################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/stdlib/micropython/lv_mem_core_micropython.c 

C_DEPS += \
./ThirdParty/lvgl/src/stdlib/micropython/lv_mem_core_micropython.d 

OBJS += \
./ThirdParty/lvgl/src/stdlib/micropython/lv_mem_core_micropython.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/stdlib/micropython/%.o: ../ThirdParty/lvgl/src/stdlib/micropython/%.c ThirdParty/lvgl/src/stdlib/micropython/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-micropython

clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-micropython:
	-$(RM) ./ThirdParty/lvgl/src/stdlib/micropython/lv_mem_core_micropython.d ./ThirdParty/lvgl/src/stdlib/micropython/lv_mem_core_micropython.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-micropython

