################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/others/file_explorer/lv_file_explorer.c 

C_DEPS += \
./ThirdParty/lvgl/src/others/file_explorer/lv_file_explorer.d 

OBJS += \
./ThirdParty/lvgl/src/others/file_explorer/lv_file_explorer.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/others/file_explorer/%.o: ../ThirdParty/lvgl/src/others/file_explorer/%.c ThirdParty/lvgl/src/others/file_explorer/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-others-2f-file_explorer

clean-ThirdParty-2f-lvgl-2f-src-2f-others-2f-file_explorer:
	-$(RM) ./ThirdParty/lvgl/src/others/file_explorer/lv_file_explorer.d ./ThirdParty/lvgl/src/others/file_explorer/lv_file_explorer.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-others-2f-file_explorer

