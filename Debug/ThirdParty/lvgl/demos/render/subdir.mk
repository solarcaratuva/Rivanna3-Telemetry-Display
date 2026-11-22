################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/render/lv_demo_render.c 

C_DEPS += \
./ThirdParty/lvgl/demos/render/lv_demo_render.d 

OBJS += \
./ThirdParty/lvgl/demos/render/lv_demo_render.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/render/%.o: ../ThirdParty/lvgl/demos/render/%.c ThirdParty/lvgl/demos/render/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-render

clean-ThirdParty-2f-lvgl-2f-demos-2f-render:
	-$(RM) ./ThirdParty/lvgl/demos/render/lv_demo_render.d ./ThirdParty/lvgl/demos/render/lv_demo_render.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-render

