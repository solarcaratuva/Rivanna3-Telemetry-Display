################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/others/imgfont/lv_example_imgfont_1.c 

C_DEPS += \
./ThirdParty/lvgl/examples/others/imgfont/lv_example_imgfont_1.d 

OBJS += \
./ThirdParty/lvgl/examples/others/imgfont/lv_example_imgfont_1.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/others/imgfont/%.o: ../ThirdParty/lvgl/examples/others/imgfont/%.c ThirdParty/lvgl/examples/others/imgfont/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-imgfont

clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-imgfont:
	-$(RM) ./ThirdParty/lvgl/examples/others/imgfont/lv_example_imgfont_1.d ./ThirdParty/lvgl/examples/others/imgfont/lv_example_imgfont_1.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-imgfont

