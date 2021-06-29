// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xamix.h"

extern XAmix_Config XAmix_ConfigTable[];

XAmix_Config *XAmix_LookupConfig(u16 DeviceId) {
	XAmix_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAMIX_NUM_INSTANCES; Index++) {
		if (XAmix_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAmix_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAmix_Initialize(XAmix *InstancePtr, u16 DeviceId) {
	XAmix_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAmix_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAmix_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

