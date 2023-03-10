// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Oct 14 13:28:32 2022
// Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ project_1_enc_add_keep_0_stub.v
// Design      : project_1_enc_add_keep_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "add_keep_128,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, ctrl_V_V_TVALID, 
  ctrl_V_V_TREADY, ctrl_V_V_TDATA, din_TVALID, din_TREADY, din_TDATA, din_TLAST, dout_TVALID, 
  dout_TREADY, dout_TDATA, dout_TLAST, dout_TKEEP)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ctrl_V_V_TVALID,ctrl_V_V_TREADY,ctrl_V_V_TDATA[15:0],din_TVALID,din_TREADY,din_TDATA[127:0],din_TLAST[0:0],dout_TVALID,dout_TREADY,dout_TDATA[127:0],dout_TLAST[0:0],dout_TKEEP[15:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ctrl_V_V_TVALID;
  output ctrl_V_V_TREADY;
  input [15:0]ctrl_V_V_TDATA;
  input din_TVALID;
  output din_TREADY;
  input [127:0]din_TDATA;
  input [0:0]din_TLAST;
  output dout_TVALID;
  input dout_TREADY;
  output [127:0]dout_TDATA;
  output [0:0]dout_TLAST;
  output [15:0]dout_TKEEP;
endmodule
