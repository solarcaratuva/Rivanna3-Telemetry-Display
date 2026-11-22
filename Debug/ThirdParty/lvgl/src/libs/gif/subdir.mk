################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/gif/gif.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/gif/gif.d 

OBJS += \
./ThirdParty/lvgl/src/libs/gif/gif.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/gif/%.o: ../ThirdParty/lvgl/src/libs/gif/%.c ThirdParty/lvgl/src/libs/gif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gif

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gif:
	-$(RM) ./ThirdParty/lvgl/src/libs/gif/gif.d ./ThirdParty/lvgl/src/libs/gif/gif.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gif

