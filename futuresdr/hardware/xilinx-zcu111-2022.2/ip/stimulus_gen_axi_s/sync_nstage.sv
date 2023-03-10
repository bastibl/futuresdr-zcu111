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
//       Owner:       Olympus
//
//       Revision:    $File: //depot/icm/proj/diablo/16t_n1/rtl/hscom_16t_n1/sync/hscom_sync_w_rst.sv $
//                    $Revision: #2 $
//                    $Author: jmcgrath $
//                    $DateTime: 2015/05/25 09:35:31 $
//                    $Change: 5949869 $
//
//       Description: 
//                    General purpose synchroniser with reset.
//                    Default uses 2 FFs, but this can be increased by specifying
//                    a different value for NUM_SYNC_FF parameter.
//                    The reset value for the FFs is specified by the RST_VAL
//                    parameter. Default is 0.
//
////////////////////////////////////////////////////////////////////////////////


module sync_nstage (
  input   rst_b,         // Reset (active low)
  input   clk,           // Destination clock domain
  input   din,           // Asynchronous input signal
  output  dout           // Synchronized output signal
  );


 // -----------------------------------------------------------------------------
//  Local Constant definitions
// -----------------------------------------------------------------------------

parameter RST_VAL      = 1'b0;   
parameter NUM_SYNC_FF  = 3;   


// -----------------------------------------------------------------------------
//  Register and Wire Declaration
// -----------------------------------------------------------------------------

reg [NUM_SYNC_FF-1:0] data_sync_ff;

always @(posedge clk or negedge rst_b) begin 
  if (~rst_b) begin
    data_sync_ff       <= {NUM_SYNC_FF{RST_VAL}};   
  end
  else begin
    data_sync_ff       <= {data_sync_ff[NUM_SYNC_FF-2:0],din}; 
  end  
end    

assign dout = data_sync_ff[NUM_SYNC_FF-1];

endmodule
