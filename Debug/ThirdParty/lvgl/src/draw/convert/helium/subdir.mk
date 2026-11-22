################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/convert/helium/lv_draw_buf_convert_helium.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/convert/helium/lv_draw_buf_convert_helium.d 

OBJS += \
./ThirdParty/lvgl/src/draw/convert/helium/lv_draw_buf_convert_helium.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/convert/helium/%.o: ../ThirdParty/lvgl/src/draw/convert/helium/%.c ThirdParty/lvgl/src/draw/convert/helium/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-convert-2f-helium

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-convert-2f-helium:
	-$(RM) ./ThirdParty/lvgl/src/draw/convert/helium/lv_draw_buf_convert_helium.d ./ThirdParty/lvgl/src/draw/convert/helium/lv_draw_buf_convert_helium.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-convert-2f-helium

