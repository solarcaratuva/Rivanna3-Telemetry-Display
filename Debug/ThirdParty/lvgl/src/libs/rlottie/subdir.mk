################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/rlottie/lv_rlottie.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/rlottie/lv_rlottie.d 

OBJS += \
./ThirdParty/lvgl/src/libs/rlottie/lv_rlottie.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/rlottie/%.o: ../ThirdParty/lvgl/src/libs/rlottie/%.c ThirdParty/lvgl/src/libs/rlottie/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-rlottie

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-rlottie:
	-$(RM) ./ThirdParty/lvgl/src/libs/rlottie/lv_rlottie.d ./ThirdParty/lvgl/src/libs/rlottie/lv_rlottie.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-rlottie

