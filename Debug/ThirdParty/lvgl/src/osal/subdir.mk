################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/osal/lv_cmsis_rtos2.c \
../ThirdParty/lvgl/src/osal/lv_freertos.c \
../ThirdParty/lvgl/src/osal/lv_linux.c \
../ThirdParty/lvgl/src/osal/lv_mqx.c \
../ThirdParty/lvgl/src/osal/lv_os.c \
../ThirdParty/lvgl/src/osal/lv_os_none.c \
../ThirdParty/lvgl/src/osal/lv_pthread.c \
../ThirdParty/lvgl/src/osal/lv_rtthread.c \
../ThirdParty/lvgl/src/osal/lv_sdl2.c \
../ThirdParty/lvgl/src/osal/lv_windows.c 

C_DEPS += \
./ThirdParty/lvgl/src/osal/lv_cmsis_rtos2.d \
./ThirdParty/lvgl/src/osal/lv_freertos.d \
./ThirdParty/lvgl/src/osal/lv_linux.d \
./ThirdParty/lvgl/src/osal/lv_mqx.d \
./ThirdParty/lvgl/src/osal/lv_os.d \
./ThirdParty/lvgl/src/osal/lv_os_none.d \
./ThirdParty/lvgl/src/osal/lv_pthread.d \
./ThirdParty/lvgl/src/osal/lv_rtthread.d \
./ThirdParty/lvgl/src/osal/lv_sdl2.d \
./ThirdParty/lvgl/src/osal/lv_windows.d 

OBJS += \
./ThirdParty/lvgl/src/osal/lv_cmsis_rtos2.o \
./ThirdParty/lvgl/src/osal/lv_freertos.o \
./ThirdParty/lvgl/src/osal/lv_linux.o \
./ThirdParty/lvgl/src/osal/lv_mqx.o \
./ThirdParty/lvgl/src/osal/lv_os.o \
./ThirdParty/lvgl/src/osal/lv_os_none.o \
./ThirdParty/lvgl/src/osal/lv_pthread.o \
./ThirdParty/lvgl/src/osal/lv_rtthread.o \
./ThirdParty/lvgl/src/osal/lv_sdl2.o \
./ThirdParty/lvgl/src/osal/lv_windows.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/osal/%.o: ../ThirdParty/lvgl/src/osal/%.c ThirdParty/lvgl/src/osal/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-osal

clean-ThirdParty-2f-lvgl-2f-src-2f-osal:
	-$(RM) ./ThirdParty/lvgl/src/osal/lv_cmsis_rtos2.d ./ThirdParty/lvgl/src/osal/lv_cmsis_rtos2.o ./ThirdParty/lvgl/src/osal/lv_freertos.d ./ThirdParty/lvgl/src/osal/lv_freertos.o ./ThirdParty/lvgl/src/osal/lv_linux.d ./ThirdParty/lvgl/src/osal/lv_linux.o ./ThirdParty/lvgl/src/osal/lv_mqx.d ./ThirdParty/lvgl/src/osal/lv_mqx.o ./ThirdParty/lvgl/src/osal/lv_os.d ./ThirdParty/lvgl/src/osal/lv_os.o ./ThirdParty/lvgl/src/osal/lv_os_none.d ./ThirdParty/lvgl/src/osal/lv_os_none.o ./ThirdParty/lvgl/src/osal/lv_pthread.d ./ThirdParty/lvgl/src/osal/lv_pthread.o ./ThirdParty/lvgl/src/osal/lv_rtthread.d ./ThirdParty/lvgl/src/osal/lv_rtthread.o ./ThirdParty/lvgl/src/osal/lv_sdl2.d ./ThirdParty/lvgl/src/osal/lv_sdl2.o ./ThirdParty/lvgl/src/osal/lv_windows.d ./ThirdParty/lvgl/src/osal/lv_windows.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-osal

