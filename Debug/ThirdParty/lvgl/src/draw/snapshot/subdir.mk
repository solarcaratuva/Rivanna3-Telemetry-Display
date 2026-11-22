################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/snapshot/lv_snapshot.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/snapshot/lv_snapshot.d 

OBJS += \
./ThirdParty/lvgl/src/draw/snapshot/lv_snapshot.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/snapshot/%.o: ../ThirdParty/lvgl/src/draw/snapshot/%.c ThirdParty/lvgl/src/draw/snapshot/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-snapshot

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-snapshot:
	-$(RM) ./ThirdParty/lvgl/src/draw/snapshot/lv_snapshot.d ./ThirdParty/lvgl/src/draw/snapshot/lv_snapshot.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-snapshot

