################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGLPro/rivanna_ui.c \
../LVGLPro/rivanna_ui_gen.c 

C_DEPS += \
./LVGLPro/rivanna_ui.d \
./LVGLPro/rivanna_ui_gen.d 

OBJS += \
./LVGLPro/rivanna_ui.o \
./LVGLPro/rivanna_ui_gen.o 


# Each subdirectory must supply rules for building sources it contributes
LVGLPro/%.o: ../LVGLPro/%.c LVGLPro/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-LVGLPro

clean-LVGLPro:
	-$(RM) ./LVGLPro/rivanna_ui.d ./LVGLPro/rivanna_ui.o ./LVGLPro/rivanna_ui_gen.d ./LVGLPro/rivanna_ui_gen.o

.PHONY: clean-LVGLPro

