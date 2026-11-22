################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGLPro/screens/driver_gen.c \
../LVGLPro/screens/startup_gen.c \
../LVGLPro/screens/telemetry_data_gen.c 

C_DEPS += \
./LVGLPro/screens/driver_gen.d \
./LVGLPro/screens/startup_gen.d \
./LVGLPro/screens/telemetry_data_gen.d 

OBJS += \
./LVGLPro/screens/driver_gen.o \
./LVGLPro/screens/startup_gen.o \
./LVGLPro/screens/telemetry_data_gen.o 


# Each subdirectory must supply rules for building sources it contributes
LVGLPro/screens/%.o: ../LVGLPro/screens/%.c LVGLPro/screens/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-LVGLPro-2f-screens

clean-LVGLPro-2f-screens:
	-$(RM) ./LVGLPro/screens/driver_gen.d ./LVGLPro/screens/driver_gen.o ./LVGLPro/screens/startup_gen.d ./LVGLPro/screens/startup_gen.o ./LVGLPro/screens/telemetry_data_gen.d ./LVGLPro/screens/telemetry_data_gen.o

.PHONY: clean-LVGLPro-2f-screens

