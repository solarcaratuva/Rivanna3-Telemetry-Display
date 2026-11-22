################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/porting/osal/lv_example_osal.c 

C_DEPS += \
./ThirdParty/lvgl/examples/porting/osal/lv_example_osal.d 

OBJS += \
./ThirdParty/lvgl/examples/porting/osal/lv_example_osal.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/porting/osal/%.o: ../ThirdParty/lvgl/examples/porting/osal/%.c ThirdParty/lvgl/examples/porting/osal/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-porting-2f-osal

clean-ThirdParty-2f-lvgl-2f-examples-2f-porting-2f-osal:
	-$(RM) ./ThirdParty/lvgl/examples/porting/osal/lv_example_osal.d ./ThirdParty/lvgl/examples/porting/osal/lv_example_osal.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-porting-2f-osal

