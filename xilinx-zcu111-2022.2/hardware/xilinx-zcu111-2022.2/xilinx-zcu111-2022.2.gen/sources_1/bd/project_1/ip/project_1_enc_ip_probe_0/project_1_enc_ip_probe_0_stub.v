// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Oct 14 13:28:16 2022
// Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /tmp/tmp.rJl7ZfSWDC/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_enc_ip_probe_0/project_1_enc_ip_probe_0_stub.v
// Design      : project_1_enc_ip_probe_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axis_probe,Vivado 2022.2" *)
module project_1_enc_ip_probe_0(clk, mon_tvalid, mon_tready, mon_tlast, valid_op, 
  ready_op, last_op)
/* synthesis syn_black_box black_box_pad_pin="clk,mon_tvalid,mon_tready,mon_tlast,valid_op,ready_op,last_op" */;
  input clk;
  input mon_tvalid;
  input mon_tready;
  input mon_tlast;
  output valid_op;
  output ready_op;
  output last_op;
endmodule
