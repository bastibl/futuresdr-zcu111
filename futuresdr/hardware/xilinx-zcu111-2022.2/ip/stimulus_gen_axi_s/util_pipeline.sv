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
//       Owner:       Caher
//
//       Revision:    $File: //depot/icm/proj/diablo/16t_n1/rtl/hscom_16t_n1/util/hscom_util_pipeline.sv $
//                    $Revision: #2 $
//                    $Author: jmcgrath $
//                    $DateTime: 2015/06/02 07:46:39 $
//                    $Change: 5957795 $
//       
//       Description:
//                    Adds a parameterisble number of delays between input and
//                    output. Can be 0 for no delay
//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


module util_pipeline(clk, reset_b, enable, data_in, data_out);

    parameter WIDTH       = 6;
    parameter PIPELINE    = 0;

    input                   clk, reset_b;
    input                   enable;
    input  [WIDTH-1:0]      data_in;
    output [WIDTH-1:0]      data_out;


// -----------------------------------------------------------------------------
// Reg and Wire Declartions
// -----------------------------------------------------------------------------


// -----------------------------------------------------------------------------
// Pipeline the adder by adding additional stages
// -----------------------------------------------------------------------------

    generate
    if(PIPELINE > 0) begin : pl_out

        reg [PIPELINE-1:0] [WIDTH-1:0] pl_mem;

        // Generate an array of memory - with each register connected to the previous
        always@(posedge clk or negedge reset_b) begin
          if(~reset_b) begin
            for(int i=0; i<PIPELINE; i++) begin
              pl_mem[i] <= '0;
            end
          end else begin
            if(enable) begin
              pl_mem[0] <= data_in;
              for(int i=1; i<PIPELINE; i++) begin
                pl_mem[i] <= pl_mem[i-1];
              end
            end
          end
        end

        assign data_out = pl_mem[PIPELINE-1];

    end else begin

        // no extra pipe-lining - feed input direct to the output
        assign data_out = data_in;

    end
    endgenerate

endmodule

// vim: set ai! ts=2 expandtab bs=2 nu hls ruler :
