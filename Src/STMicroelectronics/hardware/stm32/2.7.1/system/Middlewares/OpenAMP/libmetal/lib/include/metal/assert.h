/*
 * Copyright (c) 2018, Xilinx Inc. and Contributors. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/*
 * @file	assert.h
 * @brief	Assertion support.
 */

#ifndef __METAL_ASSERT__H__
#define __METAL_ASSERT__H__

#ifdef METAL_FREERTOS
#include <metal/system/freertos/assert.h>
#else
// Hacked to work PE
//#include <metal/system/generic/assert.h>
#include <assert.h>
#endif

/**
 * @brief Assertion macro.
 * @param cond Condition to test.
 */
#define metal_assert(cond) metal_sys_assert(cond)

#endif /* __METAL_ASSERT_H__ */

