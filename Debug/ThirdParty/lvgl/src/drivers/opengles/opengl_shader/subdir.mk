################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/opengles/opengl_shader/lv_opengl_shader_manager.c \
../ThirdParty/lvgl/src/drivers/opengles/opengl_shader/lv_opengl_shader_program.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/opengles/opengl_shader/lv_opengl_shader_manager.d \
./ThirdParty/lvgl/src/drivers/opengles/opengl_shader/lv_opengl_shader_program.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/opengles/opengl_shader/lv_opengl_shader_manager.o \
./ThirdParty/lvgl/src/drivers/opengles/opengl_shader/lv_opengl_shader_program.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/opengles/opengl_shader/%.o: ../ThirdParty/lvgl/src/drivers/opengles/opengl_shader/%.c ThirdParty/lvgl/src/drivers/opengles/opengl_shader/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-opengl_shader

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-opengl_shader:
	-$(RM) ./ThirdParty/lvgl/src/drivers/opengles/opengl_shader/lv_opengl_shader_manager.d ./ThirdParty/lvgl/src/drivers/opengles/opengl_shader/lv_opengl_shader_manager.o ./ThirdParty/lvgl/src/drivers/opengles/opengl_shader/lv_opengl_shader_program.d ./ThirdParty/lvgl/src/drivers/opengles/opengl_shader/lv_opengl_shader_program.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-opengl_shader

