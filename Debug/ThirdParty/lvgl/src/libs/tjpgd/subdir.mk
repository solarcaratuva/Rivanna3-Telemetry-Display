################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/tjpgd/tjpgd.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/tjpgd/tjpgd.d 

OBJS += \
./ThirdParty/lvgl/src/libs/tjpgd/tjpgd.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/tjpgd/%.o: ../ThirdParty/lvgl/src/libs/tjpgd/%.c ThirdParty/lvgl/src/libs/tjpgd/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-tjpgd

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-tjpgd:
	-$(RM) ./ThirdParty/lvgl/src/libs/tjpgd/tjpgd.d ./ThirdParty/lvgl/src/libs/tjpgd/tjpgd.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-tjpgd

