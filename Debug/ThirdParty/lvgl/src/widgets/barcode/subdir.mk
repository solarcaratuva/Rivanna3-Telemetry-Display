################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/barcode/lv_barcode.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/barcode/lv_barcode.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/barcode/lv_barcode.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/barcode/%.o: ../ThirdParty/lvgl/src/widgets/barcode/%.c ThirdParty/lvgl/src/widgets/barcode/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-barcode

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-barcode:
	-$(RM) ./ThirdParty/lvgl/src/widgets/barcode/lv_barcode.d ./ThirdParty/lvgl/src/widgets/barcode/lv_barcode.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-barcode

