# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2016.4
# Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
# 
# ==============================================================

proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XBer_kernel" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_CNTRL_BASEADDR" \
        "C_S_AXI_CNTRL_HIGHADDR"

    xdefine_config_file $drv_handle "xber_kernel_g.c" "XBer_kernel" \
        "DEVICE_ID" \
        "C_S_AXI_CNTRL_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XBer_kernel" \
        "DEVICE_ID" \
        "C_S_AXI_CNTRL_BASEADDR" \
        "C_S_AXI_CNTRL_HIGHADDR"
}

