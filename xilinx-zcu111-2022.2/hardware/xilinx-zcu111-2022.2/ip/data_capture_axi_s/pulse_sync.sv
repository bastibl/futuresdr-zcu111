//////////////////////////////////////////////////////////////////////////////
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2012 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// US ExportControl: EAR 3E001
//
//
//       Owner:       Diablo
//
//       Revision:    $File: //depot/icm/proj/diablo/16t_n1/rtl/hscom_16t_n1/sync/hscom_pulse_sync.sv $
//                    $Revision: #4 $
//                    $Author: jmcgrath $
//                    $DateTime: 2016/08/26 09:32:02 $
//                    $Change: 8089274 $
//
//       Description: General purpose double-stage synchronisation and toggle
//                    protocol for the transfer of pulses (one shots) across
//                    clock domains. Works for any clock frequency 
//                    relationship between source and destination.
//                    An acknowledge is provided back to the source when the
//                    signal has been transferred to the destination domain.
//
//                    Default uses 2 FFs for syncronising signals, but this
//                    can be increased by specifying a different value for
//                    NUM_SYNC_FF parameter
//
////////////////////////////////////////////////////////////////////////////////


module pulse_sync(

  input rst_b_src,   // Active low sync reset, source clock domain
  input clk_src,     // Source clock domain
  input data_src,    // Source data signal
  input rst_b_dest,  // Active low sync reset, destination clock domain
  input clk_dst,     // Destination clock domain
  output data_dest,  // Data signal synchronized to destination domain
  output ack_src     // Acknowledge signal synchronized to source domain
  
);

// -----------------------------------------------------------------------------
//  Local Constant definitions
// -----------------------------------------------------------------------------
parameter NUM_SYNC_FF  = 3; 
parameter ENABLE_ACK   = 0;

// -----------------------------------------------------------------------------
//  Reg and Wire Declarations
// -----------------------------------------------------------------------------
wire                data_src_toggle_nxt; 
reg                 data_src_toggle_ff;  
reg                 data_sync_ff;
wire                data_sync;

wire                ack_dest_toggle_nxt;
reg                 ack_dest_toggle_ff; 
reg                 ack_sync_ff;
wire                ack_sync;
wire                data_dest_int;

// -----------------------------------------------------------------------------
// Continuous assignments
// -----------------------------------------------------------------------------

assign data_dest_int =  data_sync_ff ^ data_sync;
assign data_dest     =  data_dest_int;
assign ack_src       =  ack_sync_ff ^ ack_sync;

// Create toggle signal for data on source domain.
// This signal is then synchronized to destination domain
assign data_src_toggle_nxt = data_src ? ~data_src_toggle_ff : data_src_toggle_ff;

// Create toggle signal for ack on destination domain
// This signal is then synchronized to source domain
assign ack_dest_toggle_nxt = data_dest_int ? ~ack_dest_toggle_ff : ack_dest_toggle_ff;

// -----------------------------------------------------------------------------
//  Instantiation of 2-stage synchronizer for synthesis - from st_20t_n1_xvt_xx_770 library
// -----------------------------------------------------------------------------

always @(posedge clk_src or negedge rst_b_src) begin 
  if (~rst_b_src) begin
    ack_sync_ff        <= '0;
    data_src_toggle_ff <= 1'b0;   
  end
  else begin
    ack_sync_ff        <= (ENABLE_ACK) ? ack_sync : 1'b0; 
    data_src_toggle_ff <= data_src_toggle_nxt;   
  end  
end

always @(posedge clk_dst or negedge rst_b_dest) begin 
  if (~rst_b_dest) begin
    data_sync_ff       <= '0;    
    ack_dest_toggle_ff <= 1'b0;   
  end
  else begin
    data_sync_ff       <= data_sync; 
    ack_dest_toggle_ff <= ack_dest_toggle_nxt;   
  end  
end    

generate

if(ENABLE_ACK == 1) begin : gen_ack
// Synchroniser for ACK toggle signal
sync_nstage #(.NUM_SYNC_FF(NUM_SYNC_FF)) 
                       Isync_ack (                                 // Instantiate the synchronizer 
                                   .clk   ( clk_src             ), 
                                   .din   ( ack_dest_toggle_ff  ), 
                                   .rst_b ( rst_b_src           ), 
                                   .dout  ( ack_sync            )
                                  );
end else begin : no_ack
  assign ack_sync = 1'b0;
end
endgenerate                                  

// Synchroniser for DATA toggle signal
sync_nstage #(.NUM_SYNC_FF(NUM_SYNC_FF)) 
                       Isync_data (                                // Instantiate the synchronizer 
                                   .clk   ( clk_dst             ), 
                                   .din   ( data_src_toggle_ff  ), 
                                   .rst_b ( rst_b_dest          ), 
                                   .dout  ( data_sync           )
                                  );

// -----------------------------------------------------------------------------
// Assertions 
// -----------------------------------------------------------------------------  

`ifndef NO_ASSERT
  // Check input pulse signal is 1 cycle wide
  ERROR_pulse_sync_input_not_1_cycle:
    assert property (@(posedge clk_src) disable iff (rst_b_src !== 1'b1) data_src |=> ~data_src);
`endif


                                  
                                  
endmodule
