/*
IridiumRockblock.h - Interface file

A STM32Cube library for Iridium SBD ("Short Burst Data") Communications

Author: P.Elliott
Created on: 10-04-2024

An STM32Cube library for Iridium SBD ("Short Burst Data") Communications
Suggested and generously supported by Rock Seven Location Technology
(http://rock7mobile.com), makers of the brilliant RockBLOCK satellite modem.
*/

#include "IridiumSBD.h"

#ifndef IRIDIUMROCKBLOCK_H
#define IRIDIUMROCKBLOCK_H

// System comms defines
#define BAUD_RATE   19200
#define SERIAL_RATE 115200


int init();

int sendText(const char *message);

//int getSignalQuality(int &quality);
int getSignalQuality(int quality);

int getFirmwareVersion(char *version, size_t bufferSize);

int getIMEI(char *IMEI, size_t bufferSize);


/*
 * OTHER CONSIDERATIONS OF CALLABLE
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

*/
#endif /* IRIDIUMROCKBLOCK_H */
