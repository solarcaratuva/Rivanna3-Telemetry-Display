################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/adc.c \
../Core/Src/app_freertos.c \
../Core/Src/cordic.c \
../Core/Src/crc.c \
../Core/Src/dac.c \
../Core/Src/dcache.c \
../Core/Src/dma2d.c \
../Core/Src/fdcan.c \
../Core/Src/gpio.c \
../Core/Src/gpu2d.c \
../Core/Src/hash.c \
../Core/Src/i2c.c \
../Core/Src/icache.c \
../Core/Src/lptim.c \
../Core/Src/ltdc.c \
../Core/Src/main.c \
../Core/Src/memorymap.c \
../Core/Src/octospi.c \
../Core/Src/rng.c \
../Core/Src/rtc.c \
../Core/Src/sdmmc.c \
../Core/Src/spi.c \
../Core/Src/stm32u5xx_hal_msp.c \
../Core/Src/stm32u5xx_hal_timebase_tim.c \
../Core/Src/stm32u5xx_it.c \
../Core/Src/system_stm32u5xx.c \
../Core/Src/tim.c \
../Core/Src/usart.c \
../Core/Src/usb_otg.c 

C_DEPS += \
./Core/Src/adc.d \
./Core/Src/app_freertos.d \
./Core/Src/cordic.d \
./Core/Src/crc.d \
./Core/Src/dac.d \
./Core/Src/dcache.d \
./Core/Src/dma2d.d \
./Core/Src/fdcan.d \
./Core/Src/gpio.d \
./Core/Src/gpu2d.d \
./Core/Src/hash.d \
./Core/Src/i2c.d \
./Core/Src/icache.d \
./Core/Src/lptim.d \
./Core/Src/ltdc.d \
./Core/Src/main.d \
./Core/Src/memorymap.d \
./Core/Src/octospi.d \
./Core/Src/rng.d \
./Core/Src/rtc.d \
./Core/Src/sdmmc.d \
./Core/Src/spi.d \
./Core/Src/stm32u5xx_hal_msp.d \
./Core/Src/stm32u5xx_hal_timebase_tim.d \
./Core/Src/stm32u5xx_it.d \
./Core/Src/system_stm32u5xx.d \
./Core/Src/tim.d \
./Core/Src/usart.d \
./Core/Src/usb_otg.d 

OBJS += \
./Core/Src/adc.o \
./Core/Src/app_freertos.o \
./Core/Src/cordic.o \
./Core/Src/crc.o \
./Core/Src/dac.o \
./Core/Src/dcache.o \
./Core/Src/dma2d.o \
./Core/Src/fdcan.o \
./Core/Src/gpio.o \
./Core/Src/gpu2d.o \
./Core/Src/hash.o \
./Core/Src/i2c.o \
./Core/Src/icache.o \
./Core/Src/lptim.o \
./Core/Src/ltdc.o \
./Core/Src/main.o \
./Core/Src/memorymap.o \
./Core/Src/octospi.o \
./Core/Src/rng.o \
./Core/Src/rtc.o \
./Core/Src/sdmmc.o \
./Core/Src/spi.o \
./Core/Src/stm32u5xx_hal_msp.o \
./Core/Src/stm32u5xx_hal_timebase_tim.o \
./Core/Src/stm32u5xx_it.o \
./Core/Src/system_stm32u5xx.o \
./Core/Src/tim.o \
./Core/Src/usart.o \
./Core/Src/usb_otg.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/adc.d ./Core/Src/adc.o ./Core/Src/app_freertos.d ./Core/Src/app_freertos.o ./Core/Src/cordic.d ./Core/Src/cordic.o ./Core/Src/crc.d ./Core/Src/crc.o ./Core/Src/dac.d ./Core/Src/dac.o ./Core/Src/dcache.d ./Core/Src/dcache.o ./Core/Src/dma2d.d ./Core/Src/dma2d.o ./Core/Src/fdcan.d ./Core/Src/fdcan.o ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpu2d.d ./Core/Src/gpu2d.o ./Core/Src/hash.d ./Core/Src/hash.o ./Core/Src/i2c.d ./Core/Src/i2c.o ./Core/Src/icache.d ./Core/Src/icache.o ./Core/Src/lptim.d ./Core/Src/lptim.o ./Core/Src/ltdc.d ./Core/Src/ltdc.o ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/memorymap.d ./Core/Src/memorymap.o ./Core/Src/octospi.d ./Core/Src/octospi.o ./Core/Src/rng.d ./Core/Src/rng.o ./Core/Src/rtc.d ./Core/Src/rtc.o ./Core/Src/sdmmc.d ./Core/Src/sdmmc.o ./Core/Src/spi.d ./Core/Src/spi.o ./Core/Src/stm32u5xx_hal_msp.d ./Core/Src/stm32u5xx_hal_msp.o ./Core/Src/stm32u5xx_hal_timebase_tim.d ./Core/Src/stm32u5xx_hal_timebase_tim.o ./Core/Src/stm32u5xx_it.d ./Core/Src/stm32u5xx_it.o ./Core/Src/system_stm32u5xx.d ./Core/Src/system_stm32u5xx.o ./Core/Src/tim.d ./Core/Src/tim.o ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usb_otg.d ./Core/Src/usb_otg.o

.PHONY: clean-Core-2f-Src

