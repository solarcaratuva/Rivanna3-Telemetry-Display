################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_dmabuf.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_egl.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_shm.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_dmabuf.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_keyboard.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_pointer.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_seat.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_touch.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_window.c \
../ThirdParty/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_dmabuf.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_egl.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_shm.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_dmabuf.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_keyboard.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_pointer.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_seat.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_touch.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_window.d \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_dmabuf.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_egl.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_shm.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_dmabuf.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_keyboard.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_pointer.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_seat.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_touch.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_window.o \
./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/wayland/%.o: ../ThirdParty/lvgl/src/drivers/wayland/%.c ThirdParty/lvgl/src/drivers/wayland/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-wayland

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-wayland:
	-$(RM) ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_dmabuf.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_dmabuf.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_egl.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_egl.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_g2d.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_shm.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_backend_shm.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_dmabuf.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_dmabuf.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_keyboard.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_keyboard.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_pointer.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_pointer.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_seat.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_seat.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_touch.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_touch.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_window.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_window.o ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.d ./ThirdParty/lvgl/src/drivers/wayland/lv_wayland_xdg_shell.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-wayland

