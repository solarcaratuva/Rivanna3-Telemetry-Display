################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/font/font_manager/lv_font_manager.c \
../ThirdParty/lvgl/src/font/font_manager/lv_font_manager_recycle.c 

C_DEPS += \
./ThirdParty/lvgl/src/font/font_manager/lv_font_manager.d \
./ThirdParty/lvgl/src/font/font_manager/lv_font_manager_recycle.d 

OBJS += \
./ThirdParty/lvgl/src/font/font_manager/lv_font_manager.o \
./ThirdParty/lvgl/src/font/font_manager/lv_font_manager_recycle.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/font/font_manager/%.o: ../ThirdParty/lvgl/src/font/font_manager/%.c ThirdParty/lvgl/src/font/font_manager/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-font_manager

clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-font_manager:
	-$(RM) ./ThirdParty/lvgl/src/font/font_manager/lv_font_manager.d ./ThirdParty/lvgl/src/font/font_manager/lv_font_manager.o ./ThirdParty/lvgl/src/font/font_manager/lv_font_manager_recycle.d ./ThirdParty/lvgl/src/font/font_manager/lv_font_manager_recycle.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-font_manager

