################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/font/tiny_ttf/lv_tiny_ttf.c 

C_DEPS += \
./ThirdParty/lvgl/src/font/tiny_ttf/lv_tiny_ttf.d 

OBJS += \
./ThirdParty/lvgl/src/font/tiny_ttf/lv_tiny_ttf.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/font/tiny_ttf/%.o: ../ThirdParty/lvgl/src/font/tiny_ttf/%.c ThirdParty/lvgl/src/font/tiny_ttf/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-tiny_ttf

clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-tiny_ttf:
	-$(RM) ./ThirdParty/lvgl/src/font/tiny_ttf/lv_tiny_ttf.d ./ThirdParty/lvgl/src/font/tiny_ttf/lv_tiny_ttf.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-tiny_ttf

