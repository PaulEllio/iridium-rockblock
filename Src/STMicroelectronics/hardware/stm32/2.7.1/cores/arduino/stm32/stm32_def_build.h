#ifndef _STM32_DEF_BUILD_
#define _STM32_DEF_BUILD_

/*
 * Hmmm both undefined ?
 * Hacked to work! PE
#if !defined(CMSIS_STARTUP_FILE)
    #warning "CMSIS_STARTUP_FILE is not defined!"
#endif

#if !defined(CUSTOM_STARTUP_FILE)
    #warning "CUSTOM_STARTUP_FILE is not defined!"
#endif

#if !defined(CMSIS_STARTUP_FILE) && !defined(CUSTOM_STARTUP_FILE)
  if defined(STM32U545xx)
    #warning "CMSIS_STARTUP_FILE is OK"
    #define CMSIS_STARTUP_FILE "startup_stm32u545xx.s"
  #else
    #error UNKNOWN CHIP // Yes here
  #endif
#else
  #warning "No CMSIS startup file defined, custom one should be used"
#endif /* !CMSIS_STARTUP_FILE && !CUSTOM_STARTUP_FILE */

#define CMSIS_STARTUP_FILE "startup_stm32u545xx.s"

#endif /* _STM32_DEF_BUILD_ */
