################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/version.c 

C_DEPS += \
./Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/version.d 

OBJS += \
./Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/version.o 


# Each subdirectory must supply rules for building sources it contributes
Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/%.o Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/%.su Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/%.cyclo: ../Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/%.c Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -DVECT_TAB_OFFSET=0x0 -DUSE_FULL_LL_DRIVER -mthumb -c -Os -DNDEBUG -w -ffunction-sections -fdata-sections -fno-threadsafe-statics --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -fno-use-cxa-atexit -w -E -CC -DSTM32U5xx -DARDUINO=10607 -DARDUINO_GENERIC_U545AGIXQ -DARDUINO_ARCH_STM32 -DBOARD_NAME="GENERIC_U545AGIXQ" -DVARIANT_H="variant_generic.h" -DSTM32U545xx -DHAL_UART_MODULE_ENABLED -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/version.c_includes.args"

clean: clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-system-2f-Middlewares-2f-OpenAMP-2f-open-2d-amp-2f-lib

clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-system-2f-Middlewares-2f-OpenAMP-2f-open-2d-amp-2f-lib:
	-$(RM) ./Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/version.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/version.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/version.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/system/Middlewares/OpenAMP/open-amp/lib/version.su

.PHONY: clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-system-2f-Middlewares-2f-OpenAMP-2f-open-2d-amp-2f-lib

