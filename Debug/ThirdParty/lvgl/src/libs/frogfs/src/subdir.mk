################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/frogfs/src/decomp_raw.c \
../ThirdParty/lvgl/src/libs/frogfs/src/frogfs.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/frogfs/src/decomp_raw.d \
./ThirdParty/lvgl/src/libs/frogfs/src/frogfs.d 

OBJS += \
./ThirdParty/lvgl/src/libs/frogfs/src/decomp_raw.o \
./ThirdParty/lvgl/src/libs/frogfs/src/frogfs.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/frogfs/src/%.o: ../ThirdParty/lvgl/src/libs/frogfs/src/%.c ThirdParty/lvgl/src/libs/frogfs/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-frogfs-2f-src

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-frogfs-2f-src:
	-$(RM) ./ThirdParty/lvgl/src/libs/frogfs/src/decomp_raw.d ./ThirdParty/lvgl/src/libs/frogfs/src/decomp_raw.o ./ThirdParty/lvgl/src/libs/frogfs/src/frogfs.d ./ThirdParty/lvgl/src/libs/frogfs/src/frogfs.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-frogfs-2f-src

