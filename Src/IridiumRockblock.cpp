/*
IridiumRockblock.cpp

A STM32Cube library interface for C to Iridium SBD ("Short Burst Data") C++ Communications

Created on: 03-04-2024
Author: P.Elliott

Based from the Arduino IDE code using library 'IridiumSBDi2c' with board set to
'SAMD boards (32-bits ARM Cortex-M0+)' -> 'Sparkfun' boards but converted to
STM32U545RET6Q processor. Read the README.txt provided for further details.

----------------------------------- Includes -----------------------------------*/
#include <IridiumSBD.h>
#include "stm32u5xx_hal.h"

#ifdef __cplusplus
#define IridiumSerial Serial1
#define DIAGNOSTICS true // Change after working

// Declare the IridiumSBD object
IridiumSBD modem(IridiumSerial);

// Wrappers to IridiumSBD methods using instance
int init()
{
    int err;

    // Start the console serial port
    Serial.begin(SERIAL_RATE);
    while (!Serial);

    // Start the serial port connected to the satellite modem
    IridiumSerial.begin(BAUD_RATE); // UART baud rate

    // Begin satellite modem operation
    Serial.println(F("Starting init (modem...)"));
    err = modem.begin();

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("init failed: error "));
        Serial.println(err);

        if (err == ISBD_NO_MODEM_DETECTED)
            Serial.println(F("No modem detected: check wiring."));

        return err;
    }

    return ISBD_SUCCESS;
}


int sendText(const char *message)
{
    int err;

    // Send the message
    Serial.println(F("Trying to send the message.  This might take several minutes."));
    err = modem.sendSBDText("Message success.");

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("sendText failed: error "));
        Serial.println(err);

        if (err == ISBD_SENDRECEIVE_TIMEOUT)
            Serial.println(F("Comms failure with sendText, no clearBuffers attempted."));

        return err;
    }
    else
    {
        Serial.println(F("sendText success."));
    }

    // Clear the Mobile Originated message buffer
    Serial.println(F("Clearing the MO buffer."));
    err = modem.clearBuffers(ISBD_CLEAR_MO); // Clear MO buffer

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("clearBuffers failed: error "));
        Serial.println(err);

        return err;
    }

    Serial.println(F("sendText clearBuffers success."));

    return ISBD_SUCCESS;
}


int getSignalQuality(int &quality)
{
    // Test the signal quality.
    // This returns a number between 0 and 5.
    // 2 or better is preferred.
    int err;
    int signalQuality = -1;

    err = modem.getSignalQuality(signalQuality);

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("SignalQuality failed: error "));
        Serial.println(err);

        return err;
    }

    Serial.print(F("On a scale of 0 to 5, signal quality is currently "));
    Serial.print(signalQuality);
    Serial.println(F("."));

    return signalQuality;
}


int getFirmwareVersion(char *version, size_t bufferSize)
{
    // Print and return the firmware revision
    int err;
    char version[12];

    err = modem.getFirmwareVersion(version, sizeof(version));

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("FirmwareVersion failed: error "));
        Serial.println(err);

        return err;
    }

    Serial.print(F("Firmware Version is "));
    Serial.print(version);
    Serial.println(F("."));

    return version;
}


int getIMEI(char *IMEI, size_t bufferSize)
{
    // Print and return the IMEI
    int err;
    char IMEI[16];

    err = modem.getIMEI(IMEI, sizeof(IMEI));

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("getIMEI failed: error "));
        Serial.println(err);

        return err;
    }

    Serial.print(F("IMEI is "));
    Serial.print(IMEI);
    Serial.println(F("."));

    return IMEI;
}


void loop()
{
}

#if DIAGNOSTICS
void ISBDConsoleCallback(IridiumSBD *device, char c)
{
    Serial.write(c);
}

void ISBDDiagsCallback(IridiumSBD *device, char c)
{
    Serial.write(c);
}
#endif

#endif // __cplusplus
