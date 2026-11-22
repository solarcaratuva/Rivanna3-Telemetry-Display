################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/opengles/lv_draw_opengles.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/opengles/lv_draw_opengles.d 

OBJS += \
./ThirdParty/lvgl/src/draw/opengles/lv_draw_opengles.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/opengles/%.o: ../ThirdParty/lvgl/src/draw/opengles/%.c ThirdParty/lvgl/src/draw/opengles/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-opengles

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-opengles:
	-$(RM) ./ThirdParty/lvgl/src/draw/opengles/lv_draw_opengles.d ./ThirdParty/lvgl/src/draw/opengles/lv_draw_opengles.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-opengles

