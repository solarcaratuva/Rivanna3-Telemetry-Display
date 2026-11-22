################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Common/Libs/Src/telemetry_decode.c \
../Common/Libs/Src/telemetry_values.c 

C_DEPS += \
./Common/Libs/Src/telemetry_decode.d \
./Common/Libs/Src/telemetry_values.d 

OBJS += \
./Common/Libs/Src/telemetry_decode.o \
./Common/Libs/Src/telemetry_values.o 


# Each subdirectory must supply rules for building sources it contributes
Common/Libs/Src/%.o: ../Common/Libs/Src/%.c Common/Libs/Src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Common-2f-Libs-2f-Src

clean-Common-2f-Libs-2f-Src:
	-$(RM) ./Common/Libs/Src/telemetry_decode.d ./Common/Libs/Src/telemetry_decode.o ./Common/Libs/Src/telemetry_values.d ./Common/Libs/Src/telemetry_values.o

.PHONY: clean-Common-2f-Libs-2f-Src

