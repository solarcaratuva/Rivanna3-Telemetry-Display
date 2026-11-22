################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ThirdParty/lvgl/src/libs/gltf/math/lv_gltf_math.cpp 

C_SRCS += \
../ThirdParty/lvgl/src/libs/gltf/math/lv_3dmath.c 

CPP_DEPS += \
./ThirdParty/lvgl/src/libs/gltf/math/lv_gltf_math.d 

C_DEPS += \
./ThirdParty/lvgl/src/libs/gltf/math/lv_3dmath.d 

OBJS += \
./ThirdParty/lvgl/src/libs/gltf/math/lv_3dmath.o \
./ThirdParty/lvgl/src/libs/gltf/math/lv_gltf_math.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/gltf/math/%.o: ../ThirdParty/lvgl/src/libs/gltf/math/%.c ThirdParty/lvgl/src/libs/gltf/math/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ThirdParty/lvgl/src/libs/gltf/math/%.o: ../ThirdParty/lvgl/src/libs/gltf/math/%.cpp ThirdParty/lvgl/src/libs/gltf/math/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-math

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-math:
	-$(RM) ./ThirdParty/lvgl/src/libs/gltf/math/lv_3dmath.d ./ThirdParty/lvgl/src/libs/gltf/math/lv_3dmath.o ./ThirdParty/lvgl/src/libs/gltf/math/lv_gltf_math.d ./ThirdParty/lvgl/src/libs/gltf/math/lv_gltf_math.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-math

