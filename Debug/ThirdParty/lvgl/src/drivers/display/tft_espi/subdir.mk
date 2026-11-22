################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ThirdParty/lvgl/src/drivers/display/tft_espi/lv_tft_espi.cpp 

CPP_DEPS += \
./ThirdParty/lvgl/src/drivers/display/tft_espi/lv_tft_espi.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/display/tft_espi/lv_tft_espi.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/display/tft_espi/%.o: ../ThirdParty/lvgl/src/drivers/display/tft_espi/%.cpp ThirdParty/lvgl/src/drivers/display/tft_espi/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-tft_espi

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-tft_espi:
	-$(RM) ./ThirdParty/lvgl/src/drivers/display/tft_espi/lv_tft_espi.d ./ThirdParty/lvgl/src/drivers/display/tft_espi/lv_tft_espi.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-tft_espi

