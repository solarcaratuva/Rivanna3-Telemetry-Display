################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/barcode/code128.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/barcode/code128.d 

OBJS += \
./ThirdParty/lvgl/src/libs/barcode/code128.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/barcode/%.o: ../ThirdParty/lvgl/src/libs/barcode/%.c ThirdParty/lvgl/src/libs/barcode/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-barcode

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-barcode:
	-$(RM) ./ThirdParty/lvgl/src/libs/barcode/code128.d ./ThirdParty/lvgl/src/libs/barcode/code128.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-barcode

