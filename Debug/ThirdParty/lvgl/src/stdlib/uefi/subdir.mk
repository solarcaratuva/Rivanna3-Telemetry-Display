################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/stdlib/uefi/lv_mem_core_uefi.c 

C_DEPS += \
./ThirdParty/lvgl/src/stdlib/uefi/lv_mem_core_uefi.d 

OBJS += \
./ThirdParty/lvgl/src/stdlib/uefi/lv_mem_core_uefi.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/stdlib/uefi/%.o: ../ThirdParty/lvgl/src/stdlib/uefi/%.c ThirdParty/lvgl/src/stdlib/uefi/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-uefi

clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-uefi:
	-$(RM) ./ThirdParty/lvgl/src/stdlib/uefi/lv_mem_core_uefi.d ./ThirdParty/lvgl/src/stdlib/uefi/lv_mem_core_uefi.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-uefi

