################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_core.c \
../Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ctlreq.c \
../Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ioreq.c \
../Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_conf.c \
../Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_desc.c \
../Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_ep_conf.c \
../Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_if.c 

C_DEPS += \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_core.d \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ctlreq.d \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ioreq.d \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_conf.d \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_desc.d \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_ep_conf.d \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_if.d 

OBJS += \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_core.o \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ctlreq.o \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ioreq.o \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_conf.o \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_desc.o \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_ep_conf.o \
./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_if.o 


# Each subdirectory must supply rules for building sources it contributes
Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/%.o Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/%.su Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/%.cyclo: ../Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/%.c Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -DVECT_TAB_OFFSET=0x0 -DUSE_FULL_LL_DRIVER -mthumb -c -Os -DNDEBUG -w -ffunction-sections -fdata-sections -fno-threadsafe-statics --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -fno-use-cxa-atexit -w -E -CC -DSTM32U5xx -DARDUINO=10607 -DARDUINO_GENERIC_U545AGIXQ -DARDUINO_ARCH_STM32 -DBOARD_NAME="GENERIC_U545AGIXQ" -DVARIANT_H="variant_generic.h" -DSTM32U545xx -DHAL_UART_MODULE_ENABLED -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" @"Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_core.c_includes.args"

clean: clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-cores-2f-arduino-2f-stm32-2f-usb

clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-cores-2f-arduino-2f-stm32-2f-usb:
	-$(RM) ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_core.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_core.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_core.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_core.su ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ctlreq.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ctlreq.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ctlreq.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ctlreq.su ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ioreq.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ioreq.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ioreq.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usb_device_ioreq.su ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_conf.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_conf.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_conf.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_conf.su ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_desc.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_desc.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_desc.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_desc.su ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_ep_conf.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_ep_conf.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_ep_conf.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_ep_conf.su ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_if.cyclo ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_if.d ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_if.o ./Src/STMicroelectronics/hardware/stm32/2.7.1/cores/arduino/stm32/usb/usbd_if.su

.PHONY: clean-Src-2f-STMicroelectronics-2f-hardware-2f-stm32-2f-2-2e-7-2e-1-2f-cores-2f-arduino-2f-stm32-2f-usb

