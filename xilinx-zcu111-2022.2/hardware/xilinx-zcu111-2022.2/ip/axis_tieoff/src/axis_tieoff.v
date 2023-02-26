`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////


module axis_tieoff #(
   parameter HAS_TLAST = 1,
   parameter HAS_TKEEP = 1,
   parameter HAS_TSTRB = 1,
   parameter HAS_TREADY = 1,
   parameter TUSER_WIDTH = 1,
   parameter TID_WIDTH = 1,
   parameter TDEST_WIDTH = 1,
   parameter TDATA_NUM_BYTES = 1 
  )(
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TID" *)
  input [TID_WIDTH-1:0] s_tid, // Transfer ID tag (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDEST" *)
  input [TDEST_WIDTH-1:0] s_tdest, // Transfer Destination (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
  input [(TDATA_NUM_BYTES*8)-1:0] s_tdata, // Transfer Data (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *)
  input [TDATA_NUM_BYTES-1:0] s_tstrb, // Transfer Data Byte Strobes (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *)
  input [TDATA_NUM_BYTES-1:0] s_tkeep, // Transfer Null Byte Indicators (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *)
  input s_tlast, // Packet Boundary Indicator (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *)
  input [TUSER_WIDTH-1:0] s_tuser, // Transfer user sideband (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
  input s_tvalid, // Transfer valid (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *)
  output s_tready, // Transfer ready (optional)
  
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *)
  output [TID_WIDTH-1:0] m_tid, // Transfer ID tag (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDEST" *)
  output [TDEST_WIDTH-1:0] m_tdest, // Transfer Destination (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
  output [(TDATA_NUM_BYTES*8)-1:0] m_tdata, // Transfer Data (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *)
  output [TDATA_NUM_BYTES-1:0] m_tstrb, // Transfer Data Byte Strobes (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *)
  output [TDATA_NUM_BYTES-1:0] m_tkeep, // Transfer Null Byte Indicators (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
  output m_tlast, // Packet Boundary Indicator (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *)
  output [TUSER_WIDTH-1:0] m_tuser, // Transfer user sideband (optional)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
  output m_tvalid, // Transfer valid (required)
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
  input m_tready, // Transfer ready (optional)
  
  //  additional ports here
  input aclk,
  input aresetn
);

//  user logic here
  assign s_tready = 1'b0;
  
  assign m_tid = 'b0;
  assign m_tdest = 'b0;
  assign m_tdata = 'b0;
  assign m_tstrb = 'b0;
  assign m_tkeep = 'b0;
  assign m_tlast = 'b0;
  assign m_tuser = 'b0;
  assign m_tvalid = 'b0;

endmodule

