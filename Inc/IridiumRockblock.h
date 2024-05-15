/*
IridiumRockblock.h - Interface file

A STM32Cube library for Iridium SBD ("Short Burst Data") Communications

Author: P.Elliott
Created on: 10-04-2024

An STM32Cube library for Iridium SBD ("Short Burst Data") Communications
Suggested and generously supported by Rock Seven Location Technology
(http://rock7mobile.com), makers of the brilliant RockBLOCK satellite modem.
*/
/*
#include <WString.h> // for FlashString
#include <Stream.h> // for Stream
#include "Arduino.h" // NEED to change to stm32u5xx_hal_conf.h ??
*/

#include "IridiumSBD.h"

#ifndef IRIDIUMROCKBLOCK_H
#define IRIDIUMROCKBLOCK_H

#ifdef __cplusplus
extern "C" {
#endif

extern void init(void);
extern void sendSBDText(void);

/*
**** What are we calling here? Commands? ****

**** From https://ardupilot.org/plane/docs/common-telemetry-rockblock.html ****

int cmd_mission_start()

int cmd_nav_takeoff()

int cmd_nav_vtol_takeoff() Guessing no VTO!?

int cmd_nav_vtol_land()

int cmd_nav_land()

int cmd_nav_return_to_launch()

int cmd_do_set_mode()

int cmd_component_arm_disarm()

int cmd_control_high_latency()


**** https://docs.rockblock.rock7.com/docs/transmit-ascii-data ****

* Issue AT command *
AT\r

* Receive response *
OK\r

* Turn off Flow Control *
AT&K0\r

* Receive response *
OK\r

* Insert ASCII message into MO buffer *
AT+SBDWT=Hello World\r

* Receive response *
OK\r

* Initiate an Extended SBD Session *
AT+SBDIX\r

* Receive response *
+SBDIX: <MO status>, <MOMSN>, <MT status>, <MTMSN>, <MT length>, <MT queued>\r

* See SBDIX Key for information on each parameter *


**** From  https://github.com/ArduPilot/ardupilot/blob/master/libraries/
                   AP_Scripting/applets/RockBlock.lua ****
 -- setup RCK specific parameters
assert(param:add_table(PARAM_TABLE_KEY, PARAM_TABLE_PREFIX, 4), 'could not add param table')
--[[
  // @Param: RCK_FORCEHL
  // @DisplayName: Force enable High Latency mode
  // @Description: Automatically enables High Latency mode if not already enabled
  // @Values: 0:Disabled,1:Enabled
  // @User: Standard
--]]
RCK_FORCEHL     = bind_add_param('FORCEHL', 1, 0)


--[[
  // @Param: RCK_PERIOD
  // @DisplayName: Update rate
  // @Description: When in High Latency mode, send Rockblock updates every N seconds
  // @Range: 0 600
  // @Units: s
  // @User: Standard
--]]
RCK_PERIOD     = bind_add_param('PERIOD', 2, 30)


--[[
  // @Param: RCK_DEBUG
  // @DisplayName: Display Rockblock debugging text
  // @Description: Sends Rockblock debug text to GCS via statustexts
  // @Values: 0:Disabled,1:Enabled
  // @User: Standard
--]]
RCK_DEBUG     = bind_add_param('DEBUG', 3, 0)


--[[
  // @Param: RCK_ENABLE
  // @DisplayName: Enable Message transmission
  // @Description: Enables the Rockblock sending and recieving
  // @Values: 0:Disabled,1:Enabled
  // @User: Standard
--]]
RCK_ENABLE     = bind_add_param('ENABLE', 4, 1)



**** Allow IridiumSBD.h functions through (wrappers) ? ****

int init(); // was begin
int sendSBDText(const char *message);
int sendSBDBinary(const uint8_t *txData, size_t txDataSize);
int sendReceiveSBDText(const char *message, uint8_t *rxBuffer,
                       size_t &rxBufferSize);
int sendReceiveSBDBinary(const uint8_t *txData, size_t txDataSize,
                         uint8_t *rxBuffer, size_t &rxBufferSize);
int getSignalQuality(int &quality);
int getSystemTime(struct tm &tm);
int getFirmwareVersion(char *version, size_t bufferSize);
int getWaitingMessageCount();
bool isAsleep();
bool hasRingAsserted();
int sleep();

typedef enum
{
    DEFAULT_POWER_PROFILE = 0,
    USB_POWER_PROFILE = 1
} POWERPROFILE;

void setPowerProfile(POWERPROFILE profile); // 0 = direct connect (default), 1 = USB
void adjustATTimeout(int seconds);          // Default value = 20 seconds
void adjustSendReceiveTimeout(int seconds); // Default value = 300 seconds
// True to use workaround from Iridium Alert 5/7/13
void useMSSTMWorkaround(bool useMSSTMWorkAround);
void enableRingAlerts(bool enable);

IridiumSBD(Stream &str, int sleepPinNo = -1, int ringPinNo = -1):
    stream(str),
    sbdixInterval(ISBD_USB_SBDIX_INTERVAL),
    atTimeout(ISBD_DEFAULT_AT_TIMEOUT),
    sendReceiveTimeout(ISBD_DEFAULT_SENDRECEIVE_TIME),
    remainingMessages(-1),
    asleep(true),
    reentrant(false),
    sleepPin(sleepPinNo),
    ringPin(ringPinNo),
    msstmWorkaroundRequested(true),
    ringAlertsEnabled(ringPinNo != -1),
    ringAsserted(false),
    lastPowerOnTime(0UL),
    head(SBDRING),
    tail(SBDRING),
    nextChar(-1)
{
    if (sleepPin != -1)
    {
        pinMode(sleepPin, OUTPUT);
    }

    if (ringPin != -1)
    {
        pinMode(ringPin, INPUT);
    }
}

private:
    Stream &stream; // Communicating with the Iridium

    // Timings
    int sbdixInterval;
    int atTimeout;
    int sendReceiveTimeout;

    // State variables
    int  remainingMessages;
    bool asleep;
    bool reentrant;
    int  sleepPin;
    int  ringPin;
    bool msstmWorkaroundRequested;
    bool ringAlertsEnabled;
    bool ringAsserted;
    unsigned long lastPowerOnTime;

    // Internal utilities
    bool noBlockWait(int seconds);
    bool waitForATResponse(char *response=NULL,
                           int responseSize=0,
                           const char *prompt=NULL,
                           const char *terminator="OK\r\n"); // PE no \n??

    int  internalBegin();
    int  internalSendReceiveSBD(const char *txTxtMessage,
                                const uint8_t *txData,
                                size_t txDataSize,
                                uint8_t *rxBuffer,
                                size_t *prxBufferSize);

    int  internalGetSignalQuality(int &quality);
    int  internalMSSTMWorkaround(bool &okToProceed);
    int  internalSleep();

    int  doSBDIX(uint16_t &moCode, uint16_t &moMSN, uint16_t &mtCode,
                 uint16_t &mtMSN,  uint16_t &mtLen, uint16_t &mtRemaining);

    int  doSBDRB(uint8_t *rxBuffer, size_t *prxBufferSize); // in/out
    void power(bool on);

    void send(FlashString str, bool beginLine = true, bool endLine = true);
    void send(const char *str);
    void send(uint16_t n);

    bool cancelled(); // Call ISBDCallback and see if client cancelled the operation

    void diagprint(FlashString str);
    void diagprint(const char *str);
    void diagprint(uint16_t n);

    void consoleprint(FlashString str);
    void consoleprint(const char *str);
    void consoleprint(uint16_t n);
    void consoleprint(char c);
    void SBDRINGSeen();

    // Unsolicited SBDRING filter technology
    static const char SBDRING[];
    static const int FILTERTIMEOUT = 10;
    const char *head, *tail;
    int nextChar;
    void filterSBDRING();
    int filteredavailable();
    int filteredread();
*/
#endif /* IRIDIUMROCKBLOCK_H */
