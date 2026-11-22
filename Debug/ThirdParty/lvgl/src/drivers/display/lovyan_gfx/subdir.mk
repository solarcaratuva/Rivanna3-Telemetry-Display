################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ThirdParty/lvgl/src/drivers/display/lovyan_gfx/lv_lovyan_gfx.cpp 

CPP_DEPS += \
./ThirdParty/lvgl/src/drivers/display/lovyan_gfx/lv_lovyan_gfx.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/display/lovyan_gfx/lv_lovyan_gfx.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/display/lovyan_gfx/%.o: ../ThirdParty/lvgl/src/drivers/display/lovyan_gfx/%.cpp ThirdParty/lvgl/src/drivers/display/lovyan_gfx/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-lovyan_gfx

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-lovyan_gfx:
	-$(RM) ./ThirdParty/lvgl/src/drivers/display/lovyan_gfx/lv_lovyan_gfx.d ./ThirdParty/lvgl/src/drivers/display/lovyan_gfx/lv_lovyan_gfx.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-lovyan_gfx

