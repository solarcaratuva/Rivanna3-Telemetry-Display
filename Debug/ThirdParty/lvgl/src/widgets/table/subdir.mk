################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/table/lv_table.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/table/lv_table.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/table/lv_table.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/table/%.o: ../ThirdParty/lvgl/src/widgets/table/%.c ThirdParty/lvgl/src/widgets/table/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-table

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-table:
	-$(RM) ./ThirdParty/lvgl/src/widgets/table/lv_table.d ./ThirdParty/lvgl/src/widgets/table/lv_table.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-table

