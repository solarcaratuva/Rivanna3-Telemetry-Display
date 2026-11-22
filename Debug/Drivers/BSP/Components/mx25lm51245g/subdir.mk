################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Components/mx25lm51245g/mx25lm51245g.c 

C_DEPS += \
./Drivers/BSP/Components/mx25lm51245g/mx25lm51245g.d 

OBJS += \
./Drivers/BSP/Components/mx25lm51245g/mx25lm51245g.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/mx25lm51245g/%.o: ../Drivers/BSP/Components/mx25lm51245g/%.c Drivers/BSP/Components/mx25lm51245g/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Drivers-2f-BSP-2f-Components-2f-mx25lm51245g

clean-Drivers-2f-BSP-2f-Components-2f-mx25lm51245g:
	-$(RM) ./Drivers/BSP/Components/mx25lm51245g/mx25lm51245g.d ./Drivers/BSP/Components/mx25lm51245g/mx25lm51245g.o

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-mx25lm51245g

