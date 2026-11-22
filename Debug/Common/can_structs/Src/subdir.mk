################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Common/can_structs/Src/bps.c \
../Common/can_structs/Src/motor_controller.c \
../Common/can_structs/Src/mppt.c \
../Common/can_structs/Src/rivanna3_s.c 

C_DEPS += \
./Common/can_structs/Src/bps.d \
./Common/can_structs/Src/motor_controller.d \
./Common/can_structs/Src/mppt.d \
./Common/can_structs/Src/rivanna3_s.d 

OBJS += \
./Common/can_structs/Src/bps.o \
./Common/can_structs/Src/motor_controller.o \
./Common/can_structs/Src/mppt.o \
./Common/can_structs/Src/rivanna3_s.o 


# Each subdirectory must supply rules for building sources it contributes
Common/can_structs/Src/%.o: ../Common/can_structs/Src/%.c Common/can_structs/Src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Common-2f-can_structs-2f-Src

clean-Common-2f-can_structs-2f-Src:
	-$(RM) ./Common/can_structs/Src/bps.d ./Common/can_structs/Src/bps.o ./Common/can_structs/Src/motor_controller.d ./Common/can_structs/Src/motor_controller.o ./Common/can_structs/Src/mppt.d ./Common/can_structs/Src/mppt.o ./Common/can_structs/Src/rivanna3_s.d ./Common/can_structs/Src/rivanna3_s.o

.PHONY: clean-Common-2f-can_structs-2f-Src

