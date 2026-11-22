################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/qrcode/qrcode_basic/lv_example_qrcode_basic.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/qrcode/qrcode_basic/lv_example_qrcode_basic.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/qrcode/qrcode_basic/lv_example_qrcode_basic.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/qrcode/qrcode_basic/%.o: ../ThirdParty/lvgl/examples/libs/qrcode/qrcode_basic/%.c ThirdParty/lvgl/examples/libs/qrcode/qrcode_basic/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-qrcode-2f-qrcode_basic

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-qrcode-2f-qrcode_basic:
	-$(RM) ./ThirdParty/lvgl/examples/libs/qrcode/qrcode_basic/lv_example_qrcode_basic.d ./ThirdParty/lvgl/examples/libs/qrcode/qrcode_basic/lv_example_qrcode_basic.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-qrcode-2f-qrcode_basic

