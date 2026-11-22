################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ThirdParty/lvgl/src/debugging/vg_lite_tvg/vg_lite_tvg.cpp 

C_SRCS += \
../ThirdParty/lvgl/src/debugging/vg_lite_tvg/vg_lite_matrix.c 

CPP_DEPS += \
./ThirdParty/lvgl/src/debugging/vg_lite_tvg/vg_lite_tvg.d 

C_DEPS += \
./ThirdParty/lvgl/src/debugging/vg_lite_tvg/vg_lite_matrix.d 

OBJS += \
./ThirdParty/lvgl/src/debugging/vg_lite_tvg/vg_lite_matrix.o \
./ThirdParty/lvgl/src/debugging/vg_lite_tvg/vg_lite_tvg.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/debugging/vg_lite_tvg/%.o: ../ThirdParty/lvgl/src/debugging/vg_lite_tvg/%.c ThirdParty/lvgl/src/debugging/vg_lite_tvg/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ThirdParty/lvgl/src/debugging/vg_lite_tvg/%.o: ../ThirdParty/lvgl/src/debugging/vg_lite_tvg/%.cpp ThirdParty/lvgl/src/debugging/vg_lite_tvg/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-vg_lite_tvg

clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-vg_lite_tvg:
	-$(RM) ./ThirdParty/lvgl/src/debugging/vg_lite_tvg/vg_lite_matrix.d ./ThirdParty/lvgl/src/debugging/vg_lite_tvg/vg_lite_matrix.o ./ThirdParty/lvgl/src/debugging/vg_lite_tvg/vg_lite_tvg.d ./ThirdParty/lvgl/src/debugging/vg_lite_tvg/vg_lite_tvg.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-vg_lite_tvg

