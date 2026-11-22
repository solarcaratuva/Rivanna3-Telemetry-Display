################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/others/fragment/lv_fragment.c \
../ThirdParty/lvgl/src/others/fragment/lv_fragment_manager.c 

C_DEPS += \
./ThirdParty/lvgl/src/others/fragment/lv_fragment.d \
./ThirdParty/lvgl/src/others/fragment/lv_fragment_manager.d 

OBJS += \
./ThirdParty/lvgl/src/others/fragment/lv_fragment.o \
./ThirdParty/lvgl/src/others/fragment/lv_fragment_manager.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/others/fragment/%.o: ../ThirdParty/lvgl/src/others/fragment/%.c ThirdParty/lvgl/src/others/fragment/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-others-2f-fragment

clean-ThirdParty-2f-lvgl-2f-src-2f-others-2f-fragment:
	-$(RM) ./ThirdParty/lvgl/src/others/fragment/lv_fragment.d ./ThirdParty/lvgl/src/others/fragment/lv_fragment.o ./ThirdParty/lvgl/src/others/fragment/lv_fragment_manager.d ./ThirdParty/lvgl/src/others/fragment/lv_fragment_manager.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-others-2f-fragment

