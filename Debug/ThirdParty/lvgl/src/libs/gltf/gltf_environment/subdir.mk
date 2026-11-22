################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/gltf/gltf_environment/lv_gltf_ibl_sampler.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/gltf/gltf_environment/lv_gltf_ibl_sampler.d 

OBJS += \
./ThirdParty/lvgl/src/libs/gltf/gltf_environment/lv_gltf_ibl_sampler.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/gltf/gltf_environment/%.o: ../ThirdParty/lvgl/src/libs/gltf/gltf_environment/%.c ThirdParty/lvgl/src/libs/gltf/gltf_environment/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_environment

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_environment:
	-$(RM) ./ThirdParty/lvgl/src/libs/gltf/gltf_environment/lv_gltf_ibl_sampler.d ./ThirdParty/lvgl/src/libs/gltf/gltf_environment/lv_gltf_ibl_sampler.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_environment

