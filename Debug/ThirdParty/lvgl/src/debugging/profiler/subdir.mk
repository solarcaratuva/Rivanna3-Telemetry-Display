################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/debugging/profiler/lv_profiler_builtin.c \
../ThirdParty/lvgl/src/debugging/profiler/lv_profiler_builtin_posix.c 

C_DEPS += \
./ThirdParty/lvgl/src/debugging/profiler/lv_profiler_builtin.d \
./ThirdParty/lvgl/src/debugging/profiler/lv_profiler_builtin_posix.d 

OBJS += \
./ThirdParty/lvgl/src/debugging/profiler/lv_profiler_builtin.o \
./ThirdParty/lvgl/src/debugging/profiler/lv_profiler_builtin_posix.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/debugging/profiler/%.o: ../ThirdParty/lvgl/src/debugging/profiler/%.c ThirdParty/lvgl/src/debugging/profiler/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-profiler

clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-profiler:
	-$(RM) ./ThirdParty/lvgl/src/debugging/profiler/lv_profiler_builtin.d ./ThirdParty/lvgl/src/debugging/profiler/lv_profiler_builtin.o ./ThirdParty/lvgl/src/debugging/profiler/lv_profiler_builtin_posix.d ./ThirdParty/lvgl/src/debugging/profiler/lv_profiler_builtin_posix.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-profiler

