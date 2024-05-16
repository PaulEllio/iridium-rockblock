################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Src/IridiumSBD.cpp 

C_SRCS += \
../Src/IridiumRockblock.c \
../Src/syscalls.c \
../Src/sysmem.c 

C_DEPS += \
./Src/IridiumRockblock.d \
./Src/syscalls.d \
./Src/sysmem.d 

OBJS += \
./Src/IridiumRockblock.o \
./Src/IridiumSBD.o \
./Src/syscalls.o \
./Src/sysmem.o 

CPP_DEPS += \
./Src/IridiumSBD.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -c -I"C:/1Modini/code/iridium-rockblock-master/Inc" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/avr" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/LL" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/OpenAMP" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/libraries/Wire/src" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/libraries/Wire/src/utility" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Include" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/Templates" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/STM32U5xx_HAL_Driver" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/STM32U5xx_HAL_Driver/Inc" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/libmetal/lib/include/metal" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/virtual_driver" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/STM32U5xx" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U535R(B-C-E)TxQ_U545RETxQ" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/tools/CMSIS/5.9.0/CMSIS/Core/Include" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/tools/xpack-arm-none-eabi-gcc/12.2.1-1.2/arm-none-eabi/include/c++/12.2.1/ext" -O0 -ffunction-sections -fdata-sections -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -DVECT_TAB_OFFSET=0x0 -DUSE_FULL_LL_DRIVER -mthumb -c -Os -DNDEBUG -w -ffunction-sections -fdata-sections -fno-threadsafe-statics --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -fno-use-cxa-atexit -w -E -CC -DSTM32U5xx -DARDUINO=10607 -DARDUINO_GENERIC_U545AGIXQ -DARDUINO_ARCH_STM32 -DBOARD_NAME="GENERIC_U545AGIXQ" -DVARIANT_H="variant_generic.h" -DSTM32U545xx -DHAL_UART_MODULE_ENABLED -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.cpp Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m33 -std=gnu++14 -g3 -c -I"C:/1Modini/code/iridium-rockblock-master/Inc" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/avr" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/LL" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/OpenAMP" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/libraries/Wire/src" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/libraries/Wire/src/utility" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Include" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Include/Templates" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/STM32U5xx_HAL_Driver" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Drivers/STM32U5xx_HAL_Driver/Inc" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/libmetal/lib/include/metal" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/virtual_driver" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/system/STM32U5xx" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/hardware/stm32/2.7.1/variants/STM32U5xx/U535R(B-C-E)TxQ_U545RETxQ" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/tools/CMSIS/5.9.0/CMSIS/Core/Include" -I"C:/1Modini/code/iridium-rockblock-master/Src/STMicroelectronics/tools/xpack-arm-none-eabi-gcc/12.2.1-1.2/arm-none-eabi/include/c++/12.2.1/ext" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -DVECT_TAB_OFFSET=0x0 -DUSE_FULL_LL_DRIVER -mthumb -c -Os -DNDEBUG -w -std=gnu++17 -ffunction-sections -fdata-sections -fno-threadsafe-statics --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -fno-use-cxa-atexit -w -E -CC -DSTM32U5xx -DARDUINO=10607 -DARDUINO_GENERIC_U545AGIXQ -DARDUINO_ARCH_STM32 -DBOARD_NAME="GENERIC_U545AGIXQ" -DVARIANT_H="variant_generic.h" -DSTM32U545xx -DHAL_UART_MODULE_ENABLED -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/IridiumRockblock.cyclo ./Src/IridiumRockblock.d ./Src/IridiumRockblock.o ./Src/IridiumRockblock.su ./Src/IridiumSBD.cyclo ./Src/IridiumSBD.d ./Src/IridiumSBD.o ./Src/IridiumSBD.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su

.PHONY: clean-Src

