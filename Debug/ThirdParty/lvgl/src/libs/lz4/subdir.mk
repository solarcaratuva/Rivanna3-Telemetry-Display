################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/lz4/lz4.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/lz4/lz4.d 

OBJS += \
./ThirdParty/lvgl/src/libs/lz4/lz4.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/lz4/%.o: ../ThirdParty/lvgl/src/libs/lz4/%.c ThirdParty/lvgl/src/libs/lz4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-lz4

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-lz4:
	-$(RM) ./ThirdParty/lvgl/src/libs/lz4/lz4.d ./ThirdParty/lvgl/src/libs/lz4/lz4.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-lz4

