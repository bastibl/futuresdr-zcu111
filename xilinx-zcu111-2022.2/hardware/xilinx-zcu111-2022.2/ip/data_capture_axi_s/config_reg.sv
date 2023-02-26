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
//       Owner:          
//       Revision:       $Id: //depot/icm/proj/diablo/16t_n1/rtl/hsadc_16t_n1/testchip/jtag/hsadc_tc_drp_jtag_if.sv#18 $
//                       $Author: dmelinn $
//                       $DateTime: 2015/06/10 10:05:36 $
//                       $Change: 5977047 $
//       Description:    This the JTAG interface to the DRP bus.
//                       Accessed via special JTAG instruction
//////////////////////////////////////////////////////////////////////////////

//`include "hsadc_tc_top_constants.sv"

module config_reg #( 
  parameter DATA_W             = 32,
  parameter SELF_CLEARING_ADDR = 1,  // do not set to any locatio exept 0 (0 is reserved for read only)
  parameter NUM_CFG            = 32 ,// must be a power of 2 
  parameter ADDR_W = $clog2(NUM_CFG)) (
  input                                       clk,
  input                                       reset_b,  
  
  input  [ADDR_W-1:0]                         addr,        // Address                                          
  input  [DATA_W-1:0]                         wdata,       // Data in 
  output   [DATA_W-1:0]                       rdata,       // Data out

  input                                       en,          // Eanble register access
  input                                       we,          // Write Enable input for DRP, synchronous to JTAG clock
  input    [DATA_W-1:0]                       mem_id_code, // memory id code contains hardware information (read only)   
  output   [NUM_CFG-1:0] [DATA_W-1:0]         cfg_reg,     // config register out 
  output                                      rdy          // data rdy 
  );
  
  // -----------------------------------------------------------------------------
  // Register and Wire Definition
  // -----------------------------------------------------------------------------

  reg [NUM_CFG-1:0] [DATA_W-1:0] cfg_reg_ff;      // configuration registers
  reg                            rdy_ff;          // data ready (optional)
  reg [DATA_W-1:0]               rdata_ff;        // registred read data                     
	wire                           rd_en;           // read enable
  wire                           we_i;            // gate address 0 write to make it read only  

  // -----------------------------------------------------------------------------
  // Read data procedure
  // -----------------------------------------------------------------------------
  
  assign rd_en = ~we&en;  // read en
  always @(posedge clk or negedge reset_b) begin
	  if(~reset_b) begin
      rdata_ff <= '0;
    end 
    else if (rd_en) begin
      rdata_ff <= cfg_reg_ff[addr];
    end
  end  
  
  // -----------------------------------------------------------------------------
  // Write data and rdy procedure
  // -----------------------------------------------------------------------------
  
   // write enable gate for address 0 (read only)
   assign we_i = we && (addr != {ADDR_W{1'b0}});  

/*
* TODO this code conflicts with code below - remove
    always @(posedge clk or negedge reset_b) begin
	  if(~reset_b) begin
      cfg_reg_ff <= '0;
    end 
    else if (en) begin
      rdy_ff <= 1'b1;
      if(we) begin
        cfg_reg_ff[addr] <= wdata;
      end  
    end  
  end
*/
  
  always @(posedge clk or negedge reset_b) begin
	  if(~reset_b) begin
      cfg_reg_ff <= '0;
      rdy_ff <= 1'b0;
    end 
    else begin
      // read only contains id code
      cfg_reg_ff[0] <= mem_id_code;
      rdy_ff <= 1'b0;
      // The Full register is self clearing (reserved for pulse)
      if (|cfg_reg_ff[SELF_CLEARING_ADDR] == 1'b1) begin
        cfg_reg_ff[SELF_CLEARING_ADDR] <= '0; 
      end
      else if (en) begin
        rdy_ff <= 1'b1;
        if(we_i) begin
          cfg_reg_ff[addr] <= wdata;
        end  
      end
    end  
  end
  
  // -----------------------------------------------------------------------------
  // Output  Assignement
  // -----------------------------------------------------------------------------
  
  assign rdy      =  rdy_ff;
  assign cfg_reg  =  cfg_reg_ff;
  assign rdata    =  rdata_ff;
   
  // -----------------------------------------------------------------------------
  // Function definition
  // -----------------------------------------------------------------------------
  
	// function called clogb2 that returns an integer which has the
	// value of the ceiling of the log base 2
  // TODO: not used here 
  function integer clogb2 (input integer bit_depth);
	begin
	  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
		  bit_depth = bit_depth >> 1;
		end
  endfunction

endmodule   // hsadc_drp_jtag_if

// vim: set ai! ts=2 expandtab bs nu hls ruler :

