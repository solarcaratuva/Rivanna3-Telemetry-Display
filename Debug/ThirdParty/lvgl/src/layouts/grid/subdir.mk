################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/layouts/grid/lv_grid.c 

C_DEPS += \
./ThirdParty/lvgl/src/layouts/grid/lv_grid.d 

OBJS += \
./ThirdParty/lvgl/src/layouts/grid/lv_grid.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/layouts/grid/%.o: ../ThirdParty/lvgl/src/layouts/grid/%.c ThirdParty/lvgl/src/layouts/grid/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-layouts-2f-grid

clean-ThirdParty-2f-lvgl-2f-src-2f-layouts-2f-grid:
	-$(RM) ./ThirdParty/lvgl/src/layouts/grid/lv_grid.d ./ThirdParty/lvgl/src/layouts/grid/lv_grid.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-layouts-2f-grid

