################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/ime/lv_ime_pinyin.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/ime/lv_ime_pinyin.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/ime/lv_ime_pinyin.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/ime/%.o: ../ThirdParty/lvgl/src/widgets/ime/%.c ThirdParty/lvgl/src/widgets/ime/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-ime

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-ime:
	-$(RM) ./ThirdParty/lvgl/src/widgets/ime/lv_ime_pinyin.d ./ThirdParty/lvgl/src/widgets/ime/lv_ime_pinyin.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-ime

