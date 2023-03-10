// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XBER_STATS_H
#define XBER_STATS_H

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
#include "xber_stats_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Cntrl_BaseAddress;
} XBer_stats_Config;
#endif

typedef struct {
    u32 Cntrl_BaseAddress;
    u32 IsReady;
} XBer_stats;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
} XBer_stats_Mask_v;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBer_stats_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBer_stats_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBer_stats_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBer_stats_ReadReg(BaseAddress, RegOffset) \
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
int XBer_stats_Initialize(XBer_stats *InstancePtr, u16 DeviceId);
XBer_stats_Config* XBer_stats_LookupConfig(u16 DeviceId);
int XBer_stats_CfgInitialize(XBer_stats *InstancePtr, XBer_stats_Config *ConfigPtr);
#else
int XBer_stats_Initialize(XBer_stats *InstancePtr, const char* InstanceName);
int XBer_stats_Release(XBer_stats *InstancePtr);
#endif

void XBer_stats_Start(XBer_stats *InstancePtr);
u32 XBer_stats_IsDone(XBer_stats *InstancePtr);
u32 XBer_stats_IsIdle(XBer_stats *InstancePtr);
u32 XBer_stats_IsReady(XBer_stats *InstancePtr);
void XBer_stats_EnableAutoRestart(XBer_stats *InstancePtr);
void XBer_stats_DisableAutoRestart(XBer_stats *InstancePtr);

void XBer_stats_Set_num_defs(XBer_stats *InstancePtr, u32 Data);
u32 XBer_stats_Get_num_defs(XBer_stats *InstancePtr);
void XBer_stats_Set_num_blocks(XBer_stats *InstancePtr, u32 Data);
u32 XBer_stats_Get_num_blocks(XBer_stats *InstancePtr);
u32 XBer_stats_Get_k_BaseAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_k_HighAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_k_TotalBytes(XBer_stats *InstancePtr);
u32 XBer_stats_Get_k_BitWidth(XBer_stats *InstancePtr);
u32 XBer_stats_Get_k_Depth(XBer_stats *InstancePtr);
u32 XBer_stats_Write_k_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Read_k_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Write_k_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Read_k_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Get_n_BaseAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_n_HighAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_n_TotalBytes(XBer_stats *InstancePtr);
u32 XBer_stats_Get_n_BitWidth(XBer_stats *InstancePtr);
u32 XBer_stats_Get_n_Depth(XBer_stats *InstancePtr);
u32 XBer_stats_Write_n_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Read_n_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Write_n_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Read_n_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Get_mask_V_BaseAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_mask_V_HighAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_mask_V_TotalBytes(XBer_stats *InstancePtr);
u32 XBer_stats_Get_mask_V_BitWidth(XBer_stats *InstancePtr);
u32 XBer_stats_Get_mask_V_Depth(XBer_stats *InstancePtr);
u32 XBer_stats_Write_mask_V_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Read_mask_V_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Write_mask_V_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Read_mask_V_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Get_block_def_cfg_BaseAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_block_def_cfg_HighAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_block_def_cfg_TotalBytes(XBer_stats *InstancePtr);
u32 XBer_stats_Get_block_def_cfg_BitWidth(XBer_stats *InstancePtr);
u32 XBer_stats_Get_block_def_cfg_Depth(XBer_stats *InstancePtr);
u32 XBer_stats_Write_block_def_cfg_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Read_block_def_cfg_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Write_block_def_cfg_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Read_block_def_cfg_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Get_block_def_cnt_BaseAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_block_def_cnt_HighAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_block_def_cnt_TotalBytes(XBer_stats *InstancePtr);
u32 XBer_stats_Get_block_def_cnt_BitWidth(XBer_stats *InstancePtr);
u32 XBer_stats_Get_block_def_cnt_Depth(XBer_stats *InstancePtr);
u32 XBer_stats_Write_block_def_cnt_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Read_block_def_cnt_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Write_block_def_cnt_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Read_block_def_cnt_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Get_ber_stats_raw_berr_BaseAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_raw_berr_HighAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_raw_berr_TotalBytes(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_raw_berr_BitWidth(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_raw_berr_Depth(XBer_stats *InstancePtr);
u32 XBer_stats_Write_ber_stats_raw_berr_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Read_ber_stats_raw_berr_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Write_ber_stats_raw_berr_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Read_ber_stats_raw_berr_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Get_ber_stats_cor_berr_BaseAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_cor_berr_HighAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_cor_berr_TotalBytes(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_cor_berr_BitWidth(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_cor_berr_Depth(XBer_stats *InstancePtr);
u32 XBer_stats_Write_ber_stats_cor_berr_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Read_ber_stats_cor_berr_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Write_ber_stats_cor_berr_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Read_ber_stats_cor_berr_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Get_ber_stats_cor_blerr_BaseAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_cor_blerr_HighAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_cor_blerr_TotalBytes(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_cor_blerr_BitWidth(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_cor_blerr_Depth(XBer_stats *InstancePtr);
u32 XBer_stats_Write_ber_stats_cor_blerr_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Read_ber_stats_cor_blerr_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Write_ber_stats_cor_blerr_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Read_ber_stats_cor_blerr_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Get_ber_stats_iter_cnt_BaseAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_iter_cnt_HighAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_iter_cnt_TotalBytes(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_iter_cnt_BitWidth(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_iter_cnt_Depth(XBer_stats *InstancePtr);
u32 XBer_stats_Write_ber_stats_iter_cnt_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Read_ber_stats_iter_cnt_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Write_ber_stats_iter_cnt_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Read_ber_stats_iter_cnt_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Get_ber_stats_block_cnt_BaseAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_block_cnt_HighAddress(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_block_cnt_TotalBytes(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_block_cnt_BitWidth(XBer_stats *InstancePtr);
u32 XBer_stats_Get_ber_stats_block_cnt_Depth(XBer_stats *InstancePtr);
u32 XBer_stats_Write_ber_stats_block_cnt_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Read_ber_stats_block_cnt_Words(XBer_stats *InstancePtr, int offset, int *data, int length);
u32 XBer_stats_Write_ber_stats_block_cnt_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);
u32 XBer_stats_Read_ber_stats_block_cnt_Bytes(XBer_stats *InstancePtr, int offset, char *data, int length);

void XBer_stats_InterruptGlobalEnable(XBer_stats *InstancePtr);
void XBer_stats_InterruptGlobalDisable(XBer_stats *InstancePtr);
void XBer_stats_InterruptEnable(XBer_stats *InstancePtr, u32 Mask);
void XBer_stats_InterruptDisable(XBer_stats *InstancePtr, u32 Mask);
void XBer_stats_InterruptClear(XBer_stats *InstancePtr, u32 Mask);
u32 XBer_stats_InterruptGetEnabled(XBer_stats *InstancePtr);
u32 XBer_stats_InterruptGetStatus(XBer_stats *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
