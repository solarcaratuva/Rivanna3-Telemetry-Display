################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/gltf/lv_demo_gltf.c 

C_DEPS += \
./ThirdParty/lvgl/demos/gltf/lv_demo_gltf.d 

OBJS += \
./ThirdParty/lvgl/demos/gltf/lv_demo_gltf.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/gltf/%.o: ../ThirdParty/lvgl/demos/gltf/%.c ThirdParty/lvgl/demos/gltf/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-gltf

clean-ThirdParty-2f-lvgl-2f-demos-2f-gltf:
	-$(RM) ./ThirdParty/lvgl/demos/gltf/lv_demo_gltf.d ./ThirdParty/lvgl/demos/gltf/lv_demo_gltf.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-gltf

