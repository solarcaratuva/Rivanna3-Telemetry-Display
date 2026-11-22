################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGLPro/fonts/arrows_56_data.c \
../LVGLPro/fonts/caption_16_data.c \
../LVGLPro/fonts/montserrat_20_data.c \
../LVGLPro/fonts/montserrat_28_data.c \
../LVGLPro/fonts/montserrat_40_data.c \
../LVGLPro/fonts/speed_160_data.c \
../LVGLPro/fonts/value_28_data.c 

C_DEPS += \
./LVGLPro/fonts/arrows_56_data.d \
./LVGLPro/fonts/caption_16_data.d \
./LVGLPro/fonts/montserrat_20_data.d \
./LVGLPro/fonts/montserrat_28_data.d \
./LVGLPro/fonts/montserrat_40_data.d \
./LVGLPro/fonts/speed_160_data.d \
./LVGLPro/fonts/value_28_data.d 

OBJS += \
./LVGLPro/fonts/arrows_56_data.o \
./LVGLPro/fonts/caption_16_data.o \
./LVGLPro/fonts/montserrat_20_data.o \
./LVGLPro/fonts/montserrat_28_data.o \
./LVGLPro/fonts/montserrat_40_data.o \
./LVGLPro/fonts/speed_160_data.o \
./LVGLPro/fonts/value_28_data.o 


# Each subdirectory must supply rules for building sources it contributes
LVGLPro/fonts/%.o: ../LVGLPro/fonts/%.c LVGLPro/fonts/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-LVGLPro-2f-fonts

clean-LVGLPro-2f-fonts:
	-$(RM) ./LVGLPro/fonts/arrows_56_data.d ./LVGLPro/fonts/arrows_56_data.o ./LVGLPro/fonts/caption_16_data.d ./LVGLPro/fonts/caption_16_data.o ./LVGLPro/fonts/montserrat_20_data.d ./LVGLPro/fonts/montserrat_20_data.o ./LVGLPro/fonts/montserrat_28_data.d ./LVGLPro/fonts/montserrat_28_data.o ./LVGLPro/fonts/montserrat_40_data.d ./LVGLPro/fonts/montserrat_40_data.o ./LVGLPro/fonts/speed_160_data.d ./LVGLPro/fonts/speed_160_data.o ./LVGLPro/fonts/value_28_data.d ./LVGLPro/fonts/value_28_data.o

.PHONY: clean-LVGLPro-2f-fonts

