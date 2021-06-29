// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xamix.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAmix_CfgInitialize(XAmix *InstancePtr, XAmix_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAmix_Start(XAmix *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAmix_IsDone(XAmix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAmix_IsIdle(XAmix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAmix_IsReady(XAmix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAmix_EnableAutoRestart(XAmix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAmix_DisableAutoRestart(XAmix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XAmix_Get_return(XAmix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XAmix_Set_sample_in(XAmix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_SAMPLE_IN_DATA, Data);
}

u32 XAmix_Get_sample_in(XAmix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_SAMPLE_IN_DATA);
    return Data;
}

void XAmix_Set_gain_lp(XAmix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_GAIN_LP_DATA, Data);
}

u32 XAmix_Get_gain_lp(XAmix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_GAIN_LP_DATA);
    return Data;
}

void XAmix_Set_gain_bp(XAmix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_GAIN_BP_DATA, Data);
}

u32 XAmix_Get_gain_bp(XAmix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_GAIN_BP_DATA);
    return Data;
}

void XAmix_Set_gain_hp(XAmix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_GAIN_HP_DATA, Data);
}

u32 XAmix_Get_gain_hp(XAmix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_GAIN_HP_DATA);
    return Data;
}

void XAmix_InterruptGlobalEnable(XAmix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_GIE, 1);
}

void XAmix_InterruptGlobalDisable(XAmix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_GIE, 0);
}

void XAmix_InterruptEnable(XAmix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_IER);
    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_IER, Register | Mask);
}

void XAmix_InterruptDisable(XAmix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_IER);
    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAmix_InterruptClear(XAmix *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAmix_WriteReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_ISR, Mask);
}

u32 XAmix_InterruptGetEnabled(XAmix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_IER);
}

u32 XAmix_InterruptGetStatus(XAmix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAmix_ReadReg(InstancePtr->Control_BaseAddress, XAMIX_CONTROL_ADDR_ISR);
}

