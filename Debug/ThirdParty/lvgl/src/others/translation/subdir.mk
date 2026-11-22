################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/others/translation/lv_translation.c 

C_DEPS += \
./ThirdParty/lvgl/src/others/translation/lv_translation.d 

OBJS += \
./ThirdParty/lvgl/src/others/translation/lv_translation.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/others/translation/%.o: ../ThirdParty/lvgl/src/others/translation/%.c ThirdParty/lvgl/src/others/translation/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-others-2f-translation

clean-ThirdParty-2f-lvgl-2f-src-2f-others-2f-translation:
	-$(RM) ./ThirdParty/lvgl/src/others/translation/lv_translation.d ./ThirdParty/lvgl/src/others/translation/lv_translation.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-others-2f-translation

