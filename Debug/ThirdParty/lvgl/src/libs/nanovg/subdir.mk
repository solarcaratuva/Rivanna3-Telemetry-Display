################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/nanovg/nanovg.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/nanovg/nanovg.d 

OBJS += \
./ThirdParty/lvgl/src/libs/nanovg/nanovg.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/nanovg/%.o: ../ThirdParty/lvgl/src/libs/nanovg/%.c ThirdParty/lvgl/src/libs/nanovg/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-nanovg

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-nanovg:
	-$(RM) ./ThirdParty/lvgl/src/libs/nanovg/nanovg.d ./ThirdParty/lvgl/src/libs/nanovg/nanovg.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-nanovg

