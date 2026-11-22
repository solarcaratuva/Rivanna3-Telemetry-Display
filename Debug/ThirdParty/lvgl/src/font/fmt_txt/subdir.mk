################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/font/fmt_txt/lv_font_fmt_txt.c 

C_DEPS += \
./ThirdParty/lvgl/src/font/fmt_txt/lv_font_fmt_txt.d 

OBJS += \
./ThirdParty/lvgl/src/font/fmt_txt/lv_font_fmt_txt.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/font/fmt_txt/%.o: ../ThirdParty/lvgl/src/font/fmt_txt/%.c ThirdParty/lvgl/src/font/fmt_txt/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-fmt_txt

clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-fmt_txt:
	-$(RM) ./ThirdParty/lvgl/src/font/fmt_txt/lv_font_fmt_txt.d ./ThirdParty/lvgl/src/font/fmt_txt/lv_font_fmt_txt.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-fmt_txt

