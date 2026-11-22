################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/opengles/glad/src/egl.c \
../ThirdParty/lvgl/src/drivers/opengles/glad/src/gl.c \
../ThirdParty/lvgl/src/drivers/opengles/glad/src/gles2.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/opengles/glad/src/egl.d \
./ThirdParty/lvgl/src/drivers/opengles/glad/src/gl.d \
./ThirdParty/lvgl/src/drivers/opengles/glad/src/gles2.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/opengles/glad/src/egl.o \
./ThirdParty/lvgl/src/drivers/opengles/glad/src/gl.o \
./ThirdParty/lvgl/src/drivers/opengles/glad/src/gles2.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/opengles/glad/src/%.o: ../ThirdParty/lvgl/src/drivers/opengles/glad/src/%.c ThirdParty/lvgl/src/drivers/opengles/glad/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-glad-2f-src

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-glad-2f-src:
	-$(RM) ./ThirdParty/lvgl/src/drivers/opengles/glad/src/egl.d ./ThirdParty/lvgl/src/drivers/opengles/glad/src/egl.o ./ThirdParty/lvgl/src/drivers/opengles/glad/src/gl.d ./ThirdParty/lvgl/src/drivers/opengles/glad/src/gl.o ./ThirdParty/lvgl/src/drivers/opengles/glad/src/gles2.d ./ThirdParty/lvgl/src/drivers/opengles/glad/src/gles2.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-glad-2f-src

