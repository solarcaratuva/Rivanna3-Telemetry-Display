################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGLPro/components/card/card_gen.c 

C_DEPS += \
./LVGLPro/components/card/card_gen.d 

OBJS += \
./LVGLPro/components/card/card_gen.o 


# Each subdirectory must supply rules for building sources it contributes
LVGLPro/components/card/%.o: ../LVGLPro/components/card/%.c LVGLPro/components/card/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-LVGLPro-2f-components-2f-card

clean-LVGLPro-2f-components-2f-card:
	-$(RM) ./LVGLPro/components/card/card_gen.d ./LVGLPro/components/card/card_gen.o

.PHONY: clean-LVGLPro-2f-components-2f-card

