################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/stdlib/builtin/lv_mem_core_builtin.c \
../ThirdParty/lvgl/src/stdlib/builtin/lv_sprintf_builtin.c \
../ThirdParty/lvgl/src/stdlib/builtin/lv_string_builtin.c \
../ThirdParty/lvgl/src/stdlib/builtin/lv_tlsf.c 

C_DEPS += \
./ThirdParty/lvgl/src/stdlib/builtin/lv_mem_core_builtin.d \
./ThirdParty/lvgl/src/stdlib/builtin/lv_sprintf_builtin.d \
./ThirdParty/lvgl/src/stdlib/builtin/lv_string_builtin.d \
./ThirdParty/lvgl/src/stdlib/builtin/lv_tlsf.d 

OBJS += \
./ThirdParty/lvgl/src/stdlib/builtin/lv_mem_core_builtin.o \
./ThirdParty/lvgl/src/stdlib/builtin/lv_sprintf_builtin.o \
./ThirdParty/lvgl/src/stdlib/builtin/lv_string_builtin.o \
./ThirdParty/lvgl/src/stdlib/builtin/lv_tlsf.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/stdlib/builtin/%.o: ../ThirdParty/lvgl/src/stdlib/builtin/%.c ThirdParty/lvgl/src/stdlib/builtin/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-builtin

clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-builtin:
	-$(RM) ./ThirdParty/lvgl/src/stdlib/builtin/lv_mem_core_builtin.d ./ThirdParty/lvgl/src/stdlib/builtin/lv_mem_core_builtin.o ./ThirdParty/lvgl/src/stdlib/builtin/lv_sprintf_builtin.d ./ThirdParty/lvgl/src/stdlib/builtin/lv_sprintf_builtin.o ./ThirdParty/lvgl/src/stdlib/builtin/lv_string_builtin.d ./ThirdParty/lvgl/src/stdlib/builtin/lv_string_builtin.o ./ThirdParty/lvgl/src/stdlib/builtin/lv_tlsf.d ./ThirdParty/lvgl/src/stdlib/builtin/lv_tlsf.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-builtin

