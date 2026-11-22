################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/others/translation/lv_example_translation_1.c \
../ThirdParty/lvgl/examples/others/translation/lv_example_translation_2.c 

C_DEPS += \
./ThirdParty/lvgl/examples/others/translation/lv_example_translation_1.d \
./ThirdParty/lvgl/examples/others/translation/lv_example_translation_2.d 

OBJS += \
./ThirdParty/lvgl/examples/others/translation/lv_example_translation_1.o \
./ThirdParty/lvgl/examples/others/translation/lv_example_translation_2.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/others/translation/%.o: ../ThirdParty/lvgl/examples/others/translation/%.c ThirdParty/lvgl/examples/others/translation/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-translation

clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-translation:
	-$(RM) ./ThirdParty/lvgl/examples/others/translation/lv_example_translation_1.d ./ThirdParty/lvgl/examples/others/translation/lv_example_translation_1.o ./ThirdParty/lvgl/examples/others/translation/lv_example_translation_2.d ./ThirdParty/lvgl/examples/others/translation/lv_example_translation_2.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-translation

