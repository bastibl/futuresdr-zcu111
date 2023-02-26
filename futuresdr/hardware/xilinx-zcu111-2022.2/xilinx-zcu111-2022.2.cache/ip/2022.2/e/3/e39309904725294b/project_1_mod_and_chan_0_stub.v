// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Oct 14 13:27:19 2022
// Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ project_1_mod_and_chan_0_stub.v
// Design      : project_1_mod_and_chan_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mod_and_chan_4x,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, ctrl_in_V_TVALID, 
  ctrl_in_V_TREADY, ctrl_in_V_TDATA, ctrl_out_V_TVALID, ctrl_out_V_TREADY, 
  ctrl_out_V_TDATA, hard_data_V_V_TVALID, hard_data_V_V_TREADY, hard_data_V_V_TDATA, 
  chan_data_1_V_TVALID, chan_data_1_V_TREADY, chan_data_1_V_TDATA, chan_data_2_V_TVALID, 
  chan_data_2_V_TREADY, chan_data_2_V_TDATA, chan_data_3_V_TVALID, chan_data_3_V_TREADY, 
  chan_data_3_V_TDATA, chan_data_4_V_TVALID, chan_data_4_V_TREADY, chan_data_4_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ctrl_in_V_TVALID,ctrl_in_V_TREADY,ctrl_in_V_TDATA[63:0],ctrl_out_V_TVALID,ctrl_out_V_TREADY,ctrl_out_V_TDATA[63:0],hard_data_V_V_TVALID,hard_data_V_V_TREADY,hard_data_V_V_TDATA[95:0],chan_data_1_V_TVALID,chan_data_1_V_TREADY,chan_data_1_V_TDATA[39:0],chan_data_2_V_TVALID,chan_data_2_V_TREADY,chan_data_2_V_TDATA[39:0],chan_data_3_V_TVALID,chan_data_3_V_TREADY,chan_data_3_V_TDATA[39:0],chan_data_4_V_TVALID,chan_data_4_V_TREADY,chan_data_4_V_TDATA[39:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ctrl_in_V_TVALID;
  output ctrl_in_V_TREADY;
  input [63:0]ctrl_in_V_TDATA;
  output ctrl_out_V_TVALID;
  input ctrl_out_V_TREADY;
  output [63:0]ctrl_out_V_TDATA;
  input hard_data_V_V_TVALID;
  output hard_data_V_V_TREADY;
  input [95:0]hard_data_V_V_TDATA;
  output chan_data_1_V_TVALID;
  input chan_data_1_V_TREADY;
  output [39:0]chan_data_1_V_TDATA;
  output chan_data_2_V_TVALID;
  input chan_data_2_V_TREADY;
  output [39:0]chan_data_2_V_TDATA;
  output chan_data_3_V_TVALID;
  input chan_data_3_V_TREADY;
  output [39:0]chan_data_3_V_TDATA;
  output chan_data_4_V_TVALID;
  input chan_data_4_V_TREADY;
  output [39:0]chan_data_4_V_TDATA;
endmodule
