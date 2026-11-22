################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGLPro/components/dbg_row/dbg_row_gen.c 

C_DEPS += \
./LVGLPro/components/dbg_row/dbg_row_gen.d 

OBJS += \
./LVGLPro/components/dbg_row/dbg_row_gen.o 


# Each subdirectory must supply rules for building sources it contributes
LVGLPro/components/dbg_row/%.o: ../LVGLPro/components/dbg_row/%.c LVGLPro/components/dbg_row/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-LVGLPro-2f-components-2f-dbg_row

clean-LVGLPro-2f-components-2f-dbg_row:
	-$(RM) ./LVGLPro/components/dbg_row/dbg_row_gen.d ./LVGLPro/components/dbg_row/dbg_row_gen.o

.PHONY: clean-LVGLPro-2f-components-2f-dbg_row

