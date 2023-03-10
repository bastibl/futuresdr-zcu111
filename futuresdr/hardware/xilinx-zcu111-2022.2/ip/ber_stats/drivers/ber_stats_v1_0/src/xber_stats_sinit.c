// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xber_stats.h"

extern XBer_stats_Config XBer_stats_ConfigTable[];

XBer_stats_Config *XBer_stats_LookupConfig(u16 DeviceId) {
	XBer_stats_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBER_STATS_NUM_INSTANCES; Index++) {
		if (XBer_stats_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBer_stats_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBer_stats_Initialize(XBer_stats *InstancePtr, u16 DeviceId) {
	XBer_stats_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBer_stats_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBer_stats_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

