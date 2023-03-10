// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1.0
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xmonitor.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMonitor_CfgInitialize(XMonitor *InstancePtr, XMonitor_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Cntrl_BaseAddress = ConfigPtr->Cntrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMonitor_Start(XMonitor *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_AP_CTRL) & 0x80;
    XMonitor_WriteReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMonitor_IsDone(XMonitor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMonitor_IsIdle(XMonitor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMonitor_IsReady(XMonitor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMonitor_EnableAutoRestart(XMonitor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMonitor_WriteReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_AP_CTRL, 0x80);
}

void XMonitor_DisableAutoRestart(XMonitor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMonitor_WriteReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_AP_CTRL, 0);
}

void XMonitor_Set_num_blocks_V(XMonitor *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMonitor_WriteReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_NUM_BLOCKS_V_DATA, Data);
}

u32 XMonitor_Get_num_blocks_V(XMonitor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_NUM_BLOCKS_V_DATA);
    return Data;
}

u32 XMonitor_Get_first_V(XMonitor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_FIRST_V_DATA);
    return Data;
}

u32 XMonitor_Get_last_V(XMonitor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_LAST_V_DATA);
    return Data;
}

u32 XMonitor_Get_stalled_V(XMonitor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_STALLED_V_DATA);
    return Data;
}

void XMonitor_InterruptGlobalEnable(XMonitor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMonitor_WriteReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_GIE, 1);
}

void XMonitor_InterruptGlobalDisable(XMonitor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMonitor_WriteReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_GIE, 0);
}

void XMonitor_InterruptEnable(XMonitor *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_IER);
    XMonitor_WriteReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_IER, Register | Mask);
}

void XMonitor_InterruptDisable(XMonitor *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_IER);
    XMonitor_WriteReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_IER, Register & (~Mask));
}

void XMonitor_InterruptClear(XMonitor *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMonitor_WriteReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_ISR, Mask);
}

u32 XMonitor_InterruptGetEnabled(XMonitor *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_IER);
}

u32 XMonitor_InterruptGetStatus(XMonitor *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMonitor_ReadReg(InstancePtr->Cntrl_BaseAddress, XMONITOR_CNTRL_ADDR_ISR);
}

