################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/startup_stm32yyxx.S 

OBJS += \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/startup_stm32yyxx.o 

S_UPPER_DEPS += \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/startup_stm32yyxx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/%.o: ../Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/%.S Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m33 -g3 -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<" @"Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/startup_stm32yyxx.S_includes.args"

clean: clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-cores-2f-arduino-2f-stm32

clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-cores-2f-arduino-2f-stm32:
	-$(RM) ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/startup_stm32yyxx.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/startup_stm32yyxx.o

.PHONY: clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-cores-2f-arduino-2f-stm32

