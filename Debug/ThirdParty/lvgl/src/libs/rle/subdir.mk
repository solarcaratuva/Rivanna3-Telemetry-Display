################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/rle/lv_rle.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/rle/lv_rle.d 

OBJS += \
./ThirdParty/lvgl/src/libs/rle/lv_rle.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/rle/%.o: ../ThirdParty/lvgl/src/libs/rle/%.c ThirdParty/lvgl/src/libs/rle/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-rle

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-rle:
	-$(RM) ./ThirdParty/lvgl/src/libs/rle/lv_rle.d ./ThirdParty/lvgl/src/libs/rle/lv_rle.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-rle

