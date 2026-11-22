################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/benchmark/lv_demo_benchmark.c 

C_DEPS += \
./ThirdParty/lvgl/demos/benchmark/lv_demo_benchmark.d 

OBJS += \
./ThirdParty/lvgl/demos/benchmark/lv_demo_benchmark.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/benchmark/%.o: ../ThirdParty/lvgl/demos/benchmark/%.c ThirdParty/lvgl/demos/benchmark/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-benchmark

clean-ThirdParty-2f-lvgl-2f-demos-2f-benchmark:
	-$(RM) ./ThirdParty/lvgl/demos/benchmark/lv_demo_benchmark.d ./ThirdParty/lvgl/demos/benchmark/lv_demo_benchmark.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-benchmark

