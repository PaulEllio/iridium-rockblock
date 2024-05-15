################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/variant_generic.cpp 

C_SRCS += \
../Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/PeripheralPins.c \
../Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/generic_clock.c 

C_DEPS += \
./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/PeripheralPins.d \
./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/generic_clock.d 

OBJS += \
./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/PeripheralPins.o \
./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/generic_clock.o \
./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/variant_generic.o 

CPP_DEPS += \
./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/variant_generic.d 


# Each subdirectory must supply rules for building sources it contributes
Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/%.o Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/%.su Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/%.cyclo: ../Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/%.c Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32U5xx -DARDUINO=10607 -DARDUINO_GENERIC_U575AGIXQ -DARDUINO_ARCH_STM32 '-DBOARD_NAME="GENERIC_U575AGIXQ"' '-DVARIANT_H="variant_generic.h"' -DSTM32U575xx -DHAL_UART_MODULE_ENABLED -c -O0 -ffunction-sections -fdata-sections -Wall -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -DVECT_TAB_OFFSET=0x0 -DUSE_FULL_LL_DRIVER -mthumb -c -Os -DNDEBUG -w -std=gnu++17 -ffunction-sections -fdata-sections -fno-threadsafe-statics --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/PeripheralPins.c_includes.args"
Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/%.o Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/%.su Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/%.cyclo: ../Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/%.cpp Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m33 -std=gnu++14 -g3 -DSTM32U5xx -DARDUINO=10607 -DARDUINO_GENERIC_U575AGIXQ -DARDUINO_ARCH_STM32 '-DBOARD_NAME="GENERIC_U575AGIXQ"' '-DVARIANT_H="variant_generic.h"' -DSTM32U575xx -DHAL_UART_MODULE_ENABLED -c -I"C:/1Modini/code/iridium-may8/Inc" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/avr" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/OpenAMP" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/usb" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/LL" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/cdc" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/hid" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/usb/cdc" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/usb/hid" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/ST" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/libmetal" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/virtual_driver" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/include" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/include/openamp" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/ST/STM32_USB_Device_Library" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/ST/STM32_USB_Device_Library/Core" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/tools/CMSIS/5.9.0/CMSIS/Core/Include" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/tools/CMSIS/5.9.0/CMSIS/DSP/Include" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/tools/CMSIS/5.9.0/CMSIS/DSP/PrivateInclude" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U535R(B-C-E)TxQ_U545RETxQ" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Include" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/STM32U5xx" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/STM32U5xx_HAL_Driver" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/STM32U5xx_HAL_Driver/Inc" -I"C:/1Modini/code/iridium-may8/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/STM32U5xx_HAL_Driver/Src" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-variants-2f-STM32U5xx-2f-U5F9BJYxQ_U5G9BJYxQ

clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-variants-2f-STM32U5xx-2f-U5F9BJYxQ_U5G9BJYxQ:
	-$(RM) ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/PeripheralPins.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/PeripheralPins.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/PeripheralPins.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/PeripheralPins.su ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/generic_clock.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/generic_clock.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/generic_clock.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/generic_clock.su ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/variant_generic.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/variant_generic.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/variant_generic.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U5F9BJYxQ_U5G9BJYxQ/variant_generic.su

.PHONY: clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-variants-2f-STM32U5xx-2f-U5F9BJYxQ_U5G9BJYxQ

