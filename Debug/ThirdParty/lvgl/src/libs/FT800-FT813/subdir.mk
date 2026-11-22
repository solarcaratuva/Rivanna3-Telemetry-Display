################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/FT800-FT813/EVE_commands.c \
../ThirdParty/lvgl/src/libs/FT800-FT813/EVE_supplemental.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/FT800-FT813/EVE_commands.d \
./ThirdParty/lvgl/src/libs/FT800-FT813/EVE_supplemental.d 

OBJS += \
./ThirdParty/lvgl/src/libs/FT800-FT813/EVE_commands.o \
./ThirdParty/lvgl/src/libs/FT800-FT813/EVE_supplemental.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/FT800-FT813/%.o: ../ThirdParty/lvgl/src/libs/FT800-FT813/%.c ThirdParty/lvgl/src/libs/FT800-FT813/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-FT800-2d-FT813

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-FT800-2d-FT813:
	-$(RM) ./ThirdParty/lvgl/src/libs/FT800-FT813/EVE_commands.d ./ThirdParty/lvgl/src/libs/FT800-FT813/EVE_commands.o ./ThirdParty/lvgl/src/libs/FT800-FT813/EVE_supplemental.d ./ThirdParty/lvgl/src/libs/FT800-FT813/EVE_supplemental.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-FT800-2d-FT813

