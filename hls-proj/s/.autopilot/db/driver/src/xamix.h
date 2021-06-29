// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAMIX_H
#define XAMIX_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xamix_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XAmix_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAmix;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAmix_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAmix_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAmix_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAmix_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAmix_Initialize(XAmix *InstancePtr, u16 DeviceId);
XAmix_Config* XAmix_LookupConfig(u16 DeviceId);
int XAmix_CfgInitialize(XAmix *InstancePtr, XAmix_Config *ConfigPtr);
#else
int XAmix_Initialize(XAmix *InstancePtr, const char* InstanceName);
int XAmix_Release(XAmix *InstancePtr);
#endif

void XAmix_Start(XAmix *InstancePtr);
u32 XAmix_IsDone(XAmix *InstancePtr);
u32 XAmix_IsIdle(XAmix *InstancePtr);
u32 XAmix_IsReady(XAmix *InstancePtr);
void XAmix_EnableAutoRestart(XAmix *InstancePtr);
void XAmix_DisableAutoRestart(XAmix *InstancePtr);
u32 XAmix_Get_return(XAmix *InstancePtr);

void XAmix_Set_sample_in(XAmix *InstancePtr, u32 Data);
u32 XAmix_Get_sample_in(XAmix *InstancePtr);
void XAmix_Set_gain_lp(XAmix *InstancePtr, u32 Data);
u32 XAmix_Get_gain_lp(XAmix *InstancePtr);
void XAmix_Set_gain_bp(XAmix *InstancePtr, u32 Data);
u32 XAmix_Get_gain_bp(XAmix *InstancePtr);
void XAmix_Set_gain_hp(XAmix *InstancePtr, u32 Data);
u32 XAmix_Get_gain_hp(XAmix *InstancePtr);

void XAmix_InterruptGlobalEnable(XAmix *InstancePtr);
void XAmix_InterruptGlobalDisable(XAmix *InstancePtr);
void XAmix_InterruptEnable(XAmix *InstancePtr, u32 Mask);
void XAmix_InterruptDisable(XAmix *InstancePtr, u32 Mask);
void XAmix_InterruptClear(XAmix *InstancePtr, u32 Mask);
u32 XAmix_InterruptGetEnabled(XAmix *InstancePtr);
u32 XAmix_InterruptGetStatus(XAmix *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
