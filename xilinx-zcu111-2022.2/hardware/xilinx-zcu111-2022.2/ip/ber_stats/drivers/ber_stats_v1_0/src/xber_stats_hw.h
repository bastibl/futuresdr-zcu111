// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// CNTRL
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x600 : Data signal of num_defs
//         bit 31~0 - num_defs[31:0] (Read/Write)
// 0x604 : reserved
// 0x608 : Data signal of num_blocks
//         bit 31~0 - num_blocks[31:0] (Read/Write)
// 0x60c : reserved
// 0x080 ~
// 0x0ff : Memory 'k' (32 * 32b)
//         Word n : bit [31:0] - k[n]
// 0x100 ~
// 0x17f : Memory 'n' (32 * 32b)
//         Word n : bit [31:0] - n[n]
// 0x200 ~
// 0x3ff : Memory 'mask_V' (32 * 128b)
//         Word 4n   : bit [31:0] - mask_V[n][31: 0]
//         Word 4n+1 : bit [31:0] - mask_V[n][63:32]
//         Word 4n+2 : bit [31:0] - mask_V[n][95:64]
//         Word 4n+3 : bit [31:0] - mask_V[n][127:96]
// 0x400 ~
// 0x4ff : Memory 'block_def_cfg' (64 * 32b)
//         Word n : bit [31:0] - block_def_cfg[n]
// 0x500 ~
// 0x5ff : Memory 'block_def_cnt' (64 * 32b)
//         Word n : bit [31:0] - block_def_cnt[n]
// 0x680 ~
// 0x6ff : Memory 'ber_stats_raw_berr' (32 * 32b)
//         Word n : bit [31:0] - ber_stats_raw_berr[n]
// 0x700 ~
// 0x77f : Memory 'ber_stats_cor_berr' (32 * 32b)
//         Word n : bit [31:0] - ber_stats_cor_berr[n]
// 0x780 ~
// 0x7ff : Memory 'ber_stats_cor_blerr' (32 * 32b)
//         Word n : bit [31:0] - ber_stats_cor_blerr[n]
// 0x800 ~
// 0x87f : Memory 'ber_stats_iter_cnt' (32 * 32b)
//         Word n : bit [31:0] - ber_stats_iter_cnt[n]
// 0x880 ~
// 0x8ff : Memory 'ber_stats_block_cnt' (32 * 32b)
//         Word n : bit [31:0] - ber_stats_block_cnt[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XBER_STATS_CNTRL_ADDR_AP_CTRL                  0x000
#define XBER_STATS_CNTRL_ADDR_GIE                      0x004
#define XBER_STATS_CNTRL_ADDR_IER                      0x008
#define XBER_STATS_CNTRL_ADDR_ISR                      0x00c
#define XBER_STATS_CNTRL_ADDR_NUM_DEFS_DATA            0x600
#define XBER_STATS_CNTRL_BITS_NUM_DEFS_DATA            32
#define XBER_STATS_CNTRL_ADDR_NUM_BLOCKS_DATA          0x608
#define XBER_STATS_CNTRL_BITS_NUM_BLOCKS_DATA          32
#define XBER_STATS_CNTRL_ADDR_K_BASE                   0x080
#define XBER_STATS_CNTRL_ADDR_K_HIGH                   0x0ff
#define XBER_STATS_CNTRL_WIDTH_K                       32
#define XBER_STATS_CNTRL_DEPTH_K                       32
#define XBER_STATS_CNTRL_ADDR_N_BASE                   0x100
#define XBER_STATS_CNTRL_ADDR_N_HIGH                   0x17f
#define XBER_STATS_CNTRL_WIDTH_N                       32
#define XBER_STATS_CNTRL_DEPTH_N                       32
#define XBER_STATS_CNTRL_ADDR_MASK_V_BASE              0x200
#define XBER_STATS_CNTRL_ADDR_MASK_V_HIGH              0x3ff
#define XBER_STATS_CNTRL_WIDTH_MASK_V                  128
#define XBER_STATS_CNTRL_DEPTH_MASK_V                  32
#define XBER_STATS_CNTRL_ADDR_BLOCK_DEF_CFG_BASE       0x400
#define XBER_STATS_CNTRL_ADDR_BLOCK_DEF_CFG_HIGH       0x4ff
#define XBER_STATS_CNTRL_WIDTH_BLOCK_DEF_CFG           32
#define XBER_STATS_CNTRL_DEPTH_BLOCK_DEF_CFG           64
#define XBER_STATS_CNTRL_ADDR_BLOCK_DEF_CNT_BASE       0x500
#define XBER_STATS_CNTRL_ADDR_BLOCK_DEF_CNT_HIGH       0x5ff
#define XBER_STATS_CNTRL_WIDTH_BLOCK_DEF_CNT           32
#define XBER_STATS_CNTRL_DEPTH_BLOCK_DEF_CNT           64
#define XBER_STATS_CNTRL_ADDR_BER_STATS_RAW_BERR_BASE  0x680
#define XBER_STATS_CNTRL_ADDR_BER_STATS_RAW_BERR_HIGH  0x6ff
#define XBER_STATS_CNTRL_WIDTH_BER_STATS_RAW_BERR      32
#define XBER_STATS_CNTRL_DEPTH_BER_STATS_RAW_BERR      32
#define XBER_STATS_CNTRL_ADDR_BER_STATS_COR_BERR_BASE  0x700
#define XBER_STATS_CNTRL_ADDR_BER_STATS_COR_BERR_HIGH  0x77f
#define XBER_STATS_CNTRL_WIDTH_BER_STATS_COR_BERR      32
#define XBER_STATS_CNTRL_DEPTH_BER_STATS_COR_BERR      32
#define XBER_STATS_CNTRL_ADDR_BER_STATS_COR_BLERR_BASE 0x780
#define XBER_STATS_CNTRL_ADDR_BER_STATS_COR_BLERR_HIGH 0x7ff
#define XBER_STATS_CNTRL_WIDTH_BER_STATS_COR_BLERR     32
#define XBER_STATS_CNTRL_DEPTH_BER_STATS_COR_BLERR     32
#define XBER_STATS_CNTRL_ADDR_BER_STATS_ITER_CNT_BASE  0x800
#define XBER_STATS_CNTRL_ADDR_BER_STATS_ITER_CNT_HIGH  0x87f
#define XBER_STATS_CNTRL_WIDTH_BER_STATS_ITER_CNT      32
#define XBER_STATS_CNTRL_DEPTH_BER_STATS_ITER_CNT      32
#define XBER_STATS_CNTRL_ADDR_BER_STATS_BLOCK_CNT_BASE 0x880
#define XBER_STATS_CNTRL_ADDR_BER_STATS_BLOCK_CNT_HIGH 0x8ff
#define XBER_STATS_CNTRL_WIDTH_BER_STATS_BLOCK_CNT     32
#define XBER_STATS_CNTRL_DEPTH_BER_STATS_BLOCK_CNT     32

