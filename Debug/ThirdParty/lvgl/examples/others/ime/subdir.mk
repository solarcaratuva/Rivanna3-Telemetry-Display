################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/others/ime/lv_example_ime_pinyin_1.c \
../ThirdParty/lvgl/examples/others/ime/lv_example_ime_pinyin_2.c 

C_DEPS += \
./ThirdParty/lvgl/examples/others/ime/lv_example_ime_pinyin_1.d \
./ThirdParty/lvgl/examples/others/ime/lv_example_ime_pinyin_2.d 

OBJS += \
./ThirdParty/lvgl/examples/others/ime/lv_example_ime_pinyin_1.o \
./ThirdParty/lvgl/examples/others/ime/lv_example_ime_pinyin_2.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/others/ime/%.o: ../ThirdParty/lvgl/examples/others/ime/%.c ThirdParty/lvgl/examples/others/ime/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-ime

clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-ime:
	-$(RM) ./ThirdParty/lvgl/examples/others/ime/lv_example_ime_pinyin_1.d ./ThirdParty/lvgl/examples/others/ime/lv_example_ime_pinyin_1.o ./ThirdParty/lvgl/examples/others/ime/lv_example_ime_pinyin_2.d ./ThirdParty/lvgl/examples/others/ime/lv_example_ime_pinyin_2.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-ime

