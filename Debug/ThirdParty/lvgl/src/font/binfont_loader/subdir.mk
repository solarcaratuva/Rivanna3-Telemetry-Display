################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/font/binfont_loader/lv_binfont_loader.c 

C_DEPS += \
./ThirdParty/lvgl/src/font/binfont_loader/lv_binfont_loader.d 

OBJS += \
./ThirdParty/lvgl/src/font/binfont_loader/lv_binfont_loader.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/font/binfont_loader/%.o: ../ThirdParty/lvgl/src/font/binfont_loader/%.c ThirdParty/lvgl/src/font/binfont_loader/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-binfont_loader

clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-binfont_loader:
	-$(RM) ./ThirdParty/lvgl/src/font/binfont_loader/lv_binfont_loader.d ./ThirdParty/lvgl/src/font/binfont_loader/lv_binfont_loader.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-binfont_loader

