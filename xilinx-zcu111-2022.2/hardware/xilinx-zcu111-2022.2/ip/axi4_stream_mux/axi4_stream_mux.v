//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64)
//Date        : Mon Feb 26 2018
//Design      : axi4 stream mux
//Purpose     : Multiplex between ATG and MM2S channel
//Author      : mrinals
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi4_stream_mux
   (
   input  s0_axis_tvalid,
   output s0_axis_tready,
   input [63:0]  s0_axis_tdata,
   input [7:0]   s0_axis_tkeep,
   input         s0_axis_tlast,

   input  s1_axis_tvalid,
   output s1_axis_tready,
   input [63:0]  s1_axis_tdata,
   input [7:0]   s1_axis_tkeep,
   input         s1_axis_tlast,

   output   m_axis_tvalid,
   input    m_axis_tready,
   output   [63:0]  m_axis_tdata,
   output   [7:0]   m_axis_tkeep,
   output           m_axis_tlast,
   input   axis_aclk,
   input   axis_aresetn,
   input sel_atg_axi_dma

   );

   assign m_axis_tvalid = sel_atg_axi_dma?s1_axis_tvalid:s0_axis_tvalid;
   assign s1_axis_tready = sel_atg_axi_dma?m_axis_tready:1'b0;
   assign s0_axis_tready = sel_atg_axi_dma?1'b0:m_axis_tready;
   assign m_axis_tdata  = sel_atg_axi_dma?s1_axis_tdata:s0_axis_tdata;
   assign m_axis_tkeep = sel_atg_axi_dma?s1_axis_tkeep:s0_axis_tkeep;
   assign m_axis_tlast = sel_atg_axi_dma?s1_axis_tlast:s0_axis_tlast;


endmodule

