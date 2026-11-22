################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/convert/lv_draw_buf_convert.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/convert/lv_draw_buf_convert.d 

OBJS += \
./ThirdParty/lvgl/src/draw/convert/lv_draw_buf_convert.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/convert/%.o: ../ThirdParty/lvgl/src/draw/convert/%.c ThirdParty/lvgl/src/draw/convert/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-convert

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-convert:
	-$(RM) ./ThirdParty/lvgl/src/draw/convert/lv_draw_buf_convert.d ./ThirdParty/lvgl/src/draw/convert/lv_draw_buf_convert.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-convert

