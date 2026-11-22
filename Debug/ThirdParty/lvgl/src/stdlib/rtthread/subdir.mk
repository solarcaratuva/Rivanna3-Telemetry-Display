################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/stdlib/rtthread/lv_mem_core_rtthread.c \
../ThirdParty/lvgl/src/stdlib/rtthread/lv_sprintf_rtthread.c \
../ThirdParty/lvgl/src/stdlib/rtthread/lv_string_rtthread.c 

C_DEPS += \
./ThirdParty/lvgl/src/stdlib/rtthread/lv_mem_core_rtthread.d \
./ThirdParty/lvgl/src/stdlib/rtthread/lv_sprintf_rtthread.d \
./ThirdParty/lvgl/src/stdlib/rtthread/lv_string_rtthread.d 

OBJS += \
./ThirdParty/lvgl/src/stdlib/rtthread/lv_mem_core_rtthread.o \
./ThirdParty/lvgl/src/stdlib/rtthread/lv_sprintf_rtthread.o \
./ThirdParty/lvgl/src/stdlib/rtthread/lv_string_rtthread.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/stdlib/rtthread/%.o: ../ThirdParty/lvgl/src/stdlib/rtthread/%.c ThirdParty/lvgl/src/stdlib/rtthread/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-rtthread

clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-rtthread:
	-$(RM) ./ThirdParty/lvgl/src/stdlib/rtthread/lv_mem_core_rtthread.d ./ThirdParty/lvgl/src/stdlib/rtthread/lv_mem_core_rtthread.o ./ThirdParty/lvgl/src/stdlib/rtthread/lv_sprintf_rtthread.d ./ThirdParty/lvgl/src/stdlib/rtthread/lv_sprintf_rtthread.o ./ThirdParty/lvgl/src/stdlib/rtthread/lv_string_rtthread.d ./ThirdParty/lvgl/src/stdlib/rtthread/lv_string_rtthread.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-stdlib-2f-rtthread

