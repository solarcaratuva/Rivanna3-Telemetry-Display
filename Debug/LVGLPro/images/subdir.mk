################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGLPro/images/team_logo_data.c 

C_DEPS += \
./LVGLPro/images/team_logo_data.d 

OBJS += \
./LVGLPro/images/team_logo_data.o 


# Each subdirectory must supply rules for building sources it contributes
LVGLPro/images/%.o: ../LVGLPro/images/%.c LVGLPro/images/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-LVGLPro-2f-images

clean-LVGLPro-2f-images:
	-$(RM) ./LVGLPro/images/team_logo_data.d ./LVGLPro/images/team_logo_data.o

.PHONY: clean-LVGLPro-2f-images

