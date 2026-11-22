################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/font/freetype/lv_freetype.c \
../ThirdParty/lvgl/src/font/freetype/lv_freetype_glyph.c \
../ThirdParty/lvgl/src/font/freetype/lv_freetype_image.c \
../ThirdParty/lvgl/src/font/freetype/lv_freetype_outline.c \
../ThirdParty/lvgl/src/font/freetype/lv_ftsystem.c 

C_DEPS += \
./ThirdParty/lvgl/src/font/freetype/lv_freetype.d \
./ThirdParty/lvgl/src/font/freetype/lv_freetype_glyph.d \
./ThirdParty/lvgl/src/font/freetype/lv_freetype_image.d \
./ThirdParty/lvgl/src/font/freetype/lv_freetype_outline.d \
./ThirdParty/lvgl/src/font/freetype/lv_ftsystem.d 

OBJS += \
./ThirdParty/lvgl/src/font/freetype/lv_freetype.o \
./ThirdParty/lvgl/src/font/freetype/lv_freetype_glyph.o \
./ThirdParty/lvgl/src/font/freetype/lv_freetype_image.o \
./ThirdParty/lvgl/src/font/freetype/lv_freetype_outline.o \
./ThirdParty/lvgl/src/font/freetype/lv_ftsystem.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/font/freetype/%.o: ../ThirdParty/lvgl/src/font/freetype/%.c ThirdParty/lvgl/src/font/freetype/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-freetype

clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-freetype:
	-$(RM) ./ThirdParty/lvgl/src/font/freetype/lv_freetype.d ./ThirdParty/lvgl/src/font/freetype/lv_freetype.o ./ThirdParty/lvgl/src/font/freetype/lv_freetype_glyph.d ./ThirdParty/lvgl/src/font/freetype/lv_freetype_glyph.o ./ThirdParty/lvgl/src/font/freetype/lv_freetype_image.d ./ThirdParty/lvgl/src/font/freetype/lv_freetype_image.o ./ThirdParty/lvgl/src/font/freetype/lv_freetype_outline.d ./ThirdParty/lvgl/src/font/freetype/lv_freetype_outline.o ./ThirdParty/lvgl/src/font/freetype/lv_ftsystem.d ./ThirdParty/lvgl/src/font/freetype/lv_ftsystem.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-font-2f-freetype

