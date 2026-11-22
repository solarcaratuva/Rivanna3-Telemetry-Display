################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/sdl/lv_draw_sdl.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/sdl/lv_draw_sdl.d 

OBJS += \
./ThirdParty/lvgl/src/draw/sdl/lv_draw_sdl.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/sdl/%.o: ../ThirdParty/lvgl/src/draw/sdl/%.c ThirdParty/lvgl/src/draw/sdl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sdl

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sdl:
	-$(RM) ./ThirdParty/lvgl/src/draw/sdl/lv_draw_sdl.d ./ThirdParty/lvgl/src/draw/sdl/lv_draw_sdl.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sdl

