################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/stdlib/clib/lv_mem_core_clib.c \
../ThirdParty/lvgl/src/stdlib/clib/lv_sprintf_clib.c \
../ThirdParty/lvgl/src/stdlib/clib/lv_string_clib.c 

C_DEPS += \
./ThirdParty/lvgl/src/stdlib/clib/lv_mem_core_clib.d \
./ThirdParty/lvgl/src/stdlib/clib/lv_sprintf_clib.d \
./ThirdParty/lvgl/src/stdlib/clib/lv_string_clib.d 

OBJS += \
./ThirdParty/lvgl/src/stdlib/clib/lv_mem_core_clib.o \
./ThirdParty/lvgl/src/stdlib/clib/lv_sprintf_clib.o \
./ThirdParty/lvgl/src/stdlib/clib/lv_string_clib.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/stdlib/clib/%.o: ../ThirdParty/lvgl/src/stdlib/clib/%.c ThirdParty/lvgl/src/stdlib/clib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-clib

clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-clib:
	-$(RM) ./ThirdParty/lvgl/src/stdlib/clib/lv_mem_core_clib.d ./ThirdParty/lvgl/src/stdlib/clib/lv_mem_core_clib.o ./ThirdParty/lvgl/src/stdlib/clib/lv_sprintf_clib.d ./ThirdParty/lvgl/src/stdlib/clib/lv_sprintf_clib.o ./ThirdParty/lvgl/src/stdlib/clib/lv_string_clib.d ./ThirdParty/lvgl/src/stdlib/clib/lv_string_clib.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-clib

