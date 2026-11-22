################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_animation.c \
../ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_environment.c \
../ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_model.c \
../ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_node.c \
../ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_raycast.c \
../ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render.c \
../ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_camera.c \
../ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_material.c \
../ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_multi.c \
../ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_viewer.c 

C_DEPS += \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_animation.d \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_environment.d \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_model.d \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_node.d \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_raycast.d \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render.d \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_camera.d \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_material.d \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_multi.d \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_viewer.d 

OBJS += \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_animation.o \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_environment.o \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_model.o \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_node.o \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_raycast.o \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render.o \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_camera.o \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_material.o \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_multi.o \
./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_viewer.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/src/test_cases/3d/%.o: ../ThirdParty/lvgl/tests/src/test_cases/3d/%.c ThirdParty/lvgl/tests/src/test_cases/3d/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-3d

clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-3d:
	-$(RM) ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_animation.d ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_animation.o ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_environment.d ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_environment.o ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_model.d ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_model.o ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_node.d ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_node.o ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_raycast.d ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_raycast.o ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render.d ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render.o ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_camera.d ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_camera.o ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_material.d ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_material.o ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_multi.d ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_render_multi.o ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_viewer.d ./ThirdParty/lvgl/tests/src/test_cases/3d/test_gltf_viewer.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-3d

