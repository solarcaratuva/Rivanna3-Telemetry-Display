################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../DisplayBoard/Src/app_state.c \
../DisplayBoard/Src/board_buttons.c \
../DisplayBoard/Src/board_can.c \
../DisplayBoard/Src/board_display.c \
../DisplayBoard/Src/board_touch.c \
../DisplayBoard/Src/dashboard_view.c \
../DisplayBoard/Src/rtos_tasks.c \
../DisplayBoard/Src/ui.c \
../DisplayBoard/Src/ui_bindings.c 

C_DEPS += \
./DisplayBoard/Src/app_state.d \
./DisplayBoard/Src/board_buttons.d \
./DisplayBoard/Src/board_can.d \
./DisplayBoard/Src/board_display.d \
./DisplayBoard/Src/board_touch.d \
./DisplayBoard/Src/dashboard_view.d \
./DisplayBoard/Src/rtos_tasks.d \
./DisplayBoard/Src/ui.d \
./DisplayBoard/Src/ui_bindings.d 

OBJS += \
./DisplayBoard/Src/app_state.o \
./DisplayBoard/Src/board_buttons.o \
./DisplayBoard/Src/board_can.o \
./DisplayBoard/Src/board_display.o \
./DisplayBoard/Src/board_touch.o \
./DisplayBoard/Src/dashboard_view.o \
./DisplayBoard/Src/rtos_tasks.o \
./DisplayBoard/Src/ui.o \
./DisplayBoard/Src/ui_bindings.o 


# Each subdirectory must supply rules for building sources it contributes
DisplayBoard/Src/%.o: ../DisplayBoard/Src/%.c DisplayBoard/Src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-DisplayBoard-2f-Src

clean-DisplayBoard-2f-Src:
	-$(RM) ./DisplayBoard/Src/app_state.d ./DisplayBoard/Src/app_state.o ./DisplayBoard/Src/board_buttons.d ./DisplayBoard/Src/board_buttons.o ./DisplayBoard/Src/board_can.d ./DisplayBoard/Src/board_can.o ./DisplayBoard/Src/board_display.d ./DisplayBoard/Src/board_display.o ./DisplayBoard/Src/board_touch.d ./DisplayBoard/Src/board_touch.o ./DisplayBoard/Src/dashboard_view.d ./DisplayBoard/Src/dashboard_view.o ./DisplayBoard/Src/rtos_tasks.d ./DisplayBoard/Src/rtos_tasks.o ./DisplayBoard/Src/ui.d ./DisplayBoard/Src/ui.o ./DisplayBoard/Src/ui_bindings.d ./DisplayBoard/Src/ui_bindings.o

.PHONY: clean-DisplayBoard-2f-Src

