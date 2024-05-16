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
	arm-none-eabi-gcc -mcpu=cortex-m33 -g3 -c -I"C:/1Modini/code/iridium-rockblock-master/Inc" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/avr" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/LL" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/OpenAMP" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/libraries/Wire/src" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/libraries/Wire/src/utility" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Include" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/Templates" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/STM32U5xx_HAL_Driver" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/STM32U5xx_HAL_Driver/Inc" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/STM32U5xx_HAL_Driver/Src" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/libmetal/lib/include/metal" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/libmetal/lib/include/metal/system/generic" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/virtual_driver" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/STM32U5xx" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U535R(B-C-E)TxQ_U545RETxQ" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/tools/CMSIS/5.9.0/CMSIS/Core/Include" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/tools/xpack-arm-none-eabi-gcc/12.2.1-1.2/arm-none-eabi/include/c++/12.2.1/ext" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-cores-2f-arduino-2f-stm32

clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-cores-2f-arduino-2f-stm32:
	-$(RM) ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/startup_stm32yyxx.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/startup_stm32yyxx.o

.PHONY: clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-cores-2f-arduino-2f-stm32

