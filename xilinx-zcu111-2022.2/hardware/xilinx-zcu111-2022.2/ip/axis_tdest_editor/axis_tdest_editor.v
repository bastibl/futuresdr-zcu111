`timescale 1ps/1ps

module axis_tdest_editor #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter integer C_S_AXIS_TDATA_WIDTH = 64,
   parameter integer C_M_AXIS_TDATA_WIDTH = 64,
   parameter integer C_AXIS_TID_WIDTH     = 1,
   parameter integer C_AXIS_TDEST_WIDTH   = 4,
   parameter integer C_S_AXIS_TUSER_WIDTH = 3,
   parameter integer C_M_AXIS_TUSER_WIDTH = 1,
   parameter [3:0]   C_TDEST_VAL    = 4'h0 
  )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESET,

   // Slave side
   input  wire                              S_AXIS_TVALID,
   output wire                              S_AXIS_TREADY,
   input  wire [C_S_AXIS_TDATA_WIDTH-1:0]   S_AXIS_TDATA,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TSTRB,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TKEEP,
   input  wire                              S_AXIS_TLAST,
   input  wire [C_AXIS_TID_WIDTH-1:0]       S_AXIS_TID,
   input  wire [C_S_AXIS_TUSER_WIDTH-1:0]   S_AXIS_TUSER,

   // Master side
   output wire                              M_AXIS_TVALID,
   input  wire                              M_AXIS_TREADY,
   output wire [C_M_AXIS_TDATA_WIDTH-1:0]   M_AXIS_TDATA,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TSTRB,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TKEEP,
   output wire                              M_AXIS_TLAST,
   output wire [C_AXIS_TID_WIDTH-1:0]       M_AXIS_TID,
   output wire [C_AXIS_TDEST_WIDTH-1:0]     M_AXIS_TDEST,
   output wire [C_M_AXIS_TUSER_WIDTH-1:0]   M_AXIS_TUSER
   );



assign M_AXIS_TDATA = S_AXIS_TDATA;
assign M_AXIS_TKEEP = S_AXIS_TKEEP;
assign M_AXIS_TLAST = S_AXIS_TLAST;
assign M_AXIS_TSTRB = S_AXIS_TSTRB;
assign M_AXIS_TVALID = S_AXIS_TVALID;
assign M_AXIS_TSTRB  = S_AXIS_TSTRB;
assign M_AXIS_TID    = S_AXIS_TID;
assign M_AXIS_TDEST  = C_TDEST_VAL;
assign M_AXIS_TUSER  = S_AXIS_TUSER;

assign S_AXIS_TREADY = M_AXIS_TREADY;

endmodule 


