#ifndef _BOARD_H_
#define _BOARD_H_

/*
 * Core and peripherals registers definitions
*/
#include "interrupt.h"
#include "analog.h"
#include "backup.h"
#include "clock.h"
#include "core_callback.h"
#include "digital_io.h"
#include "dwt.h"
#include "hw_config.h"
#include "otp.h"
#include "timer.h"
#include "uart.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */
void board_init(void) ; // NB: was just init but changed to differ board_init PE?
#ifdef __cplusplus
}
#endif /* __cplusplus */
#endif /* _BOARD_H_ */
