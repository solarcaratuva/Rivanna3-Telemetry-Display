################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ThirdParty/lvgl/src/fs/lv_fs_arduino_esp_littlefs.cpp \
../ThirdParty/lvgl/src/fs/lv_fs_arduino_sd.cpp 

C_SRCS += \
../ThirdParty/lvgl/src/fs/lv_fs.c \
../ThirdParty/lvgl/src/fs/lv_fs_fatfs.c \
../ThirdParty/lvgl/src/fs/lv_fs_frogfs.c \
../ThirdParty/lvgl/src/fs/lv_fs_littlefs.c \
../ThirdParty/lvgl/src/fs/lv_fs_memfs.c \
../ThirdParty/lvgl/src/fs/lv_fs_posix.c \
../ThirdParty/lvgl/src/fs/lv_fs_stdio.c \
../ThirdParty/lvgl/src/fs/lv_fs_uefi.c \
../ThirdParty/lvgl/src/fs/lv_fs_win32.c 

CPP_DEPS += \
./ThirdParty/lvgl/src/fs/lv_fs_arduino_esp_littlefs.d \
./ThirdParty/lvgl/src/fs/lv_fs_arduino_sd.d 

C_DEPS += \
./ThirdParty/lvgl/src/fs/lv_fs.d \
./ThirdParty/lvgl/src/fs/lv_fs_fatfs.d \
./ThirdParty/lvgl/src/fs/lv_fs_frogfs.d \
./ThirdParty/lvgl/src/fs/lv_fs_littlefs.d \
./ThirdParty/lvgl/src/fs/lv_fs_memfs.d \
./ThirdParty/lvgl/src/fs/lv_fs_posix.d \
./ThirdParty/lvgl/src/fs/lv_fs_stdio.d \
./ThirdParty/lvgl/src/fs/lv_fs_uefi.d \
./ThirdParty/lvgl/src/fs/lv_fs_win32.d 

OBJS += \
./ThirdParty/lvgl/src/fs/lv_fs.o \
./ThirdParty/lvgl/src/fs/lv_fs_arduino_esp_littlefs.o \
./ThirdParty/lvgl/src/fs/lv_fs_arduino_sd.o \
./ThirdParty/lvgl/src/fs/lv_fs_fatfs.o \
./ThirdParty/lvgl/src/fs/lv_fs_frogfs.o \
./ThirdParty/lvgl/src/fs/lv_fs_littlefs.o \
./ThirdParty/lvgl/src/fs/lv_fs_memfs.o \
./ThirdParty/lvgl/src/fs/lv_fs_posix.o \
./ThirdParty/lvgl/src/fs/lv_fs_stdio.o \
./ThirdParty/lvgl/src/fs/lv_fs_uefi.o \
./ThirdParty/lvgl/src/fs/lv_fs_win32.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/fs/%.o: ../ThirdParty/lvgl/src/fs/%.c ThirdParty/lvgl/src/fs/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ThirdParty/lvgl/src/fs/%.o: ../ThirdParty/lvgl/src/fs/%.cpp ThirdParty/lvgl/src/fs/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-fs

clean-ThirdParty-2f-lvgl-2f-src-2f-fs:
	-$(RM) ./ThirdParty/lvgl/src/fs/lv_fs.d ./ThirdParty/lvgl/src/fs/lv_fs.o ./ThirdParty/lvgl/src/fs/lv_fs_arduino_esp_littlefs.d ./ThirdParty/lvgl/src/fs/lv_fs_arduino_esp_littlefs.o ./ThirdParty/lvgl/src/fs/lv_fs_arduino_sd.d ./ThirdParty/lvgl/src/fs/lv_fs_arduino_sd.o ./ThirdParty/lvgl/src/fs/lv_fs_fatfs.d ./ThirdParty/lvgl/src/fs/lv_fs_fatfs.o ./ThirdParty/lvgl/src/fs/lv_fs_frogfs.d ./ThirdParty/lvgl/src/fs/lv_fs_frogfs.o ./ThirdParty/lvgl/src/fs/lv_fs_littlefs.d ./ThirdParty/lvgl/src/fs/lv_fs_littlefs.o ./ThirdParty/lvgl/src/fs/lv_fs_memfs.d ./ThirdParty/lvgl/src/fs/lv_fs_memfs.o ./ThirdParty/lvgl/src/fs/lv_fs_posix.d ./ThirdParty/lvgl/src/fs/lv_fs_posix.o ./ThirdParty/lvgl/src/fs/lv_fs_stdio.d ./ThirdParty/lvgl/src/fs/lv_fs_stdio.o ./ThirdParty/lvgl/src/fs/lv_fs_uefi.d ./ThirdParty/lvgl/src/fs/lv_fs_uefi.o ./ThirdParty/lvgl/src/fs/lv_fs_win32.d ./ThirdParty/lvgl/src/fs/lv_fs_win32.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-fs

