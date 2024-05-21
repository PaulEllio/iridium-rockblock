/*
IridiumRockblock.c

A STM32Cube library interface for Iridium SBD ("Short Burst Data") Communications

Created on: 03-04-2024
Author: P.Elliott

Based from IridiumRockblock -
An Arduino library for Iridium SBD ("Short Burst Data") Communications
Suggested and generously supported by Rock Seven Location Technology
(http://rock7mobile.com), makers of the brilliant RockBLOCK satellite modem.
Copyright (C) 2013-2017 Mikal Hart
*/

/* Includes ------------------------------------------------------------------*/
#include <IridiumSBD.h>
#include "stm32u5xx_hal.h"

#define BOARD_RATE  = 19200
#define SERIAL_RATE = 115200

#ifdef __cplusplus
#define IridiumSerial Serial1
#define DIAGNOSTICS false // Change this to see diagnostics

int signalQuality = -1;

// Declare the IridiumSBD object
IridiumSBD modem(IridiumSerial);

// Wrappers to IridiumSBD
int init()
{
    int err;

    // Start the console serial port
    Serial.begin(SERIAL_RATE);
    while (!Serial);

    // Start the serial port connected to the satellite modem
    IridiumSerial.begin(BOARD_RATE);

    // Begin satellite modem operation
    Serial.println(F("Starting modem..."));
    err = modem.begin();

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("Begin failed: error "));
        Serial.println(err);

        if (err == ISBD_NO_MODEM_DETECTED)
          Serial.println(F("No modem detected: check wiring."));

        return;
    }
}


int sendText(const char *message)
{
    int err;

    // Send the message
    Serial.println(F("Trying to send the message.  This might take several minutes."));
    err = modem.sendSBDText("Hello, world!");

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("sendText failed: error "));
        Serial.println(err);

        if (err == ISBD_SENDRECEIVE_TIMEOUT)
            Serial.println(F("Try again with a better view of the sky."));
    }
    else
    {
        Serial.println(F("Hey, it worked!"));
    }

    // Clear the Mobile Originated message buffer
    Serial.println(F("Clearing the MO buffer."));
    err = modem.clearBuffers(ISBD_CLEAR_MO); // Clear MO buffer

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("clearBuffers failed: error "));
        Serial.println(err);
    }

    Serial.println(F("Done!"));
}


int getSignalQuality(int &quality)
{
    // Test the signal quality.
    // This returns a number between 0 and 5.
    // 2 or better is preferred.
    int err;
    err = modem.getSignalQuality(signalQuality);

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("SignalQuality failed: error "));
        Serial.println(err);
        return;
    }

    Serial.print(F("On a scale of 0 to 5, signal quality is currently "));
    Serial.print(signalQuality);
    Serial.println(F("."));
}


int getFirmwareVersion(char *version, size_t bufferSize)
{
    // Print the firmware revision
    int err;
    char version[12];
    err = modem.getFirmwareVersion(version, sizeof(version));

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("FirmwareVersion failed: error "));
        Serial.println(err);
        return;
    }

    Serial.print(F("Firmware Version is "));
    Serial.print(version);
    Serial.println(F("."));
}


int getIMEI(char *IMEI, size_t bufferSize)
{
    // Print the IMEI
    int err;
    char IMEI[16];
    err = modem.getIMEI(IMEI, sizeof(IMEI));

    if (err != ISBD_SUCCESS)
    {
        Serial.print(F("getIMEI failed: error "));
        Serial.println(err);
        return;
    }

    Serial.print(F("IMEI is "));
    Serial.print(IMEI);
    Serial.println(F("."));
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
