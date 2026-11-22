################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/music/lv_demo_music.c \
../ThirdParty/lvgl/demos/music/lv_demo_music_list.c \
../ThirdParty/lvgl/demos/music/lv_demo_music_main.c 

C_DEPS += \
./ThirdParty/lvgl/demos/music/lv_demo_music.d \
./ThirdParty/lvgl/demos/music/lv_demo_music_list.d \
./ThirdParty/lvgl/demos/music/lv_demo_music_main.d 

OBJS += \
./ThirdParty/lvgl/demos/music/lv_demo_music.o \
./ThirdParty/lvgl/demos/music/lv_demo_music_list.o \
./ThirdParty/lvgl/demos/music/lv_demo_music_main.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/music/%.o: ../ThirdParty/lvgl/demos/music/%.c ThirdParty/lvgl/demos/music/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-music

clean-ThirdParty-2f-lvgl-2f-demos-2f-music:
	-$(RM) ./ThirdParty/lvgl/demos/music/lv_demo_music.d ./ThirdParty/lvgl/demos/music/lv_demo_music.o ./ThirdParty/lvgl/demos/music/lv_demo_music_list.d ./ThirdParty/lvgl/demos/music/lv_demo_music_list.o ./ThirdParty/lvgl/demos/music/lv_demo_music_main.d ./ThirdParty/lvgl/demos/music/lv_demo_music_main.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-music

