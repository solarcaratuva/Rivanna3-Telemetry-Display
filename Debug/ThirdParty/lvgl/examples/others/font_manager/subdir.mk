################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_1.c \
../ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_2.c \
../ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_3.c 

C_DEPS += \
./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_1.d \
./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_2.d \
./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_3.d 

OBJS += \
./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_1.o \
./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_2.o \
./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_3.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/others/font_manager/%.o: ../ThirdParty/lvgl/examples/others/font_manager/%.c ThirdParty/lvgl/examples/others/font_manager/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-font_manager

clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-font_manager:
	-$(RM) ./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_1.d ./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_1.o ./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_2.d ./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_2.o ./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_3.d ./ThirdParty/lvgl/examples/others/font_manager/lv_example_font_manager_3.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-font_manager

