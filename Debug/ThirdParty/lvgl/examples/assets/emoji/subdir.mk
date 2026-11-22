################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/assets/emoji/img_emoji_F617.c 

C_DEPS += \
./ThirdParty/lvgl/examples/assets/emoji/img_emoji_F617.d 

OBJS += \
./ThirdParty/lvgl/examples/assets/emoji/img_emoji_F617.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/assets/emoji/%.o: ../ThirdParty/lvgl/examples/assets/emoji/%.c ThirdParty/lvgl/examples/assets/emoji/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-assets-2f-emoji

clean-ThirdParty-2f-lvgl-2f-examples-2f-assets-2f-emoji:
	-$(RM) ./ThirdParty/lvgl/examples/assets/emoji/img_emoji_F617.d ./ThirdParty/lvgl/examples/assets/emoji/img_emoji_F617.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-assets-2f-emoji

