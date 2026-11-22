################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/src/test_cases_perf/test_chart.c \
../ThirdParty/lvgl/tests/src/test_cases_perf/test_label.c \
../ThirdParty/lvgl/tests/src/test_cases_perf/test_math.c 

C_DEPS += \
./ThirdParty/lvgl/tests/src/test_cases_perf/test_chart.d \
./ThirdParty/lvgl/tests/src/test_cases_perf/test_label.d \
./ThirdParty/lvgl/tests/src/test_cases_perf/test_math.d 

OBJS += \
./ThirdParty/lvgl/tests/src/test_cases_perf/test_chart.o \
./ThirdParty/lvgl/tests/src/test_cases_perf/test_label.o \
./ThirdParty/lvgl/tests/src/test_cases_perf/test_math.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/src/test_cases_perf/%.o: ../ThirdParty/lvgl/tests/src/test_cases_perf/%.c ThirdParty/lvgl/tests/src/test_cases_perf/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases_perf

clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases_perf:
	-$(RM) ./ThirdParty/lvgl/tests/src/test_cases_perf/test_chart.d ./ThirdParty/lvgl/tests/src/test_cases_perf/test_chart.o ./ThirdParty/lvgl/tests/src/test_cases_perf/test_label.d ./ThirdParty/lvgl/tests/src/test_cases_perf/test_label.o ./ThirdParty/lvgl/tests/src/test_cases_perf/test_math.d ./ThirdParty/lvgl/tests/src/test_cases_perf/test_math.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases_perf

