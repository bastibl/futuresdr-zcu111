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
//       Revision:       $Id:$
//                       $Author:$
//                       $DateTime:$
//                       $Change:$
//       Description:   Programable memory block for test capture and stimulus generation
//
//////////////////////////////////////////////////////////////////////////////


  module mem_block # ( 
    parameter integer MEM_DATA_A_WIDTH  = 32,     
    parameter integer MEM_DATA_B_WIDTH  = 256,   
    parameter integer MEM_SIZE          = 65536, 
    parameter         IS_ADC_MEM        = 1'b0,
    parameter integer MEM_PIPELINE      = 1,
    // The following handle the complexity and ensure the memory is correctly generated
    parameter integer ADDR_WIDTH_A  = clogb2(MEM_SIZE/MEM_DATA_A_WIDTH),
    parameter integer ADDR_WIDTH_B  = clogb2(MEM_SIZE/MEM_DATA_B_WIDTH)
	  ) (
		
    // True dual port memory
    
    // Port a (test axi clock)      
    input                               clka,             // port a clock
    input                               reseta_b,         // port a active low rese

    input                               mem_ena,          // Memory access enable must be high for one clock cyle when a read or a writre operation are initiated
    input                               mem_wea,          // Memory write enbale en a word wide write of width MEM_DATA_WITH 
    input  [ADDR_WIDTH_A-1:0]           mem_addra,        // Inidividual Memory address slelect , N x Memory, each mory Depth is MEM_ADDR_WIDTH  
    output [MEM_DATA_A_WIDTH-1:0]       mem_rdataa,       // Memory read data
    input  [MEM_DATA_A_WIDTH-1:0]       mem_wdataa,       // memory wdata
    
    // Port b (dac/adc clock)     
    input                               clkb,             // port b clock
    input                               resetb_b,         // port b active low reset
    
    input                               test_en,          // The following memory test mode is enabled the memory is waiting for a test trigger
    input                               test_trigger,     // Trigger memory data read out for the DAC or data capture for the ADC  
    output                              probe_mem_enb,
    output [MEM_DATA_B_WIDTH-1:0]       mem_rdatab,       // Memory read data
    input  [MEM_DATA_B_WIDTH-1:0]       mem_wdatab,       // memory wdata
    input  [ADDR_WIDTH_B-1:0]           mem_endaddr       // for the dac address where the SRAM loops-back to the first address (0).
                                                          // for the adc it's yje address where the memory stop capturig data.                               
  );
 
  // -----------------------------------------------------------------------------
  //  Local Constant and Types definitions
  // -----------------------------------------------------------------------------
  
  typedef enum logic {MEM_IDLE = 1'b0,MEM_ACCESS = 1'b1} MEM_STATE;

  // -----------------------------------------------------------------------------
  //  Register and wire delaration
  // -----------------------------------------------------------------------------
  
  reg                               mem_enb_ff;          // Generated internaly Memory access enable must be high for one clock cyle when a read or a writre operation are initiated
  reg                               mem_web_ff;          // Generated internaly Memory write nebale en a word wide write of width MEM_DATA_WIDTH 
  reg  [ADDR_WIDTH_B-1:0]           mem_addrb_ff;        // Inidividual Memory address slelect , N x Memory, each mory Depth is MEM_ADDR_WIDTH   
  MEM_STATE                         state_ff;            // Test memory state machine variable MEM_IDLE - MEM_ACCESS  
  
  wire [MEM_DATA_B_WIDTH-1:0]       mem_rdatab_i;        // intermediate variable used to pipeline Memory read data
  wire [MEM_DATA_B_WIDTH-1:0]       mem_wdatab_i;        // intermediate variable used to pipeline Memory wdata

  
  wire                               mem_enb_pp;          // piplined mem_enb_ff;
  wire                               mem_web_pp;          // piplined mem_web_ff; 
  wire  [ADDR_WIDTH_B-1:0]           mem_addrb_pp;        // piplined mem_addrb_ff;  

  // -----------------------------------------------------------------------------
  //  Test State machine
  // -----------------------------------------------------------------------------
  
  // DAC  
  // The DAC test operation is as follows:
  // The RAM is loaded via the JTAG_AXI or USB_AXI 
  // This can optionally be read-back to verify the contents. 
  // The end addresses (dac_*_endaddr) can also be set.
  // this is the address where the SRAM loops-back to the first address (0).
  // Readback is in 256-bit words at a time at a rate of clka.
  // Once the memory reaches the end address it loops around to the beginning.
  // This allows periodic waveforms to be generated.
  // When the RAM is not in use, the test_mode register can be used to de-select SRAM mode

   // ADC
  // For the ADC use-case  "end_addr" is the address where the SRAM stops capturing.
  // The SRAM test-mode is selected in the ADC test_mode register.
  // The memory capture from the ADC is triggered via a DRP write to the trigger_control: adc_event register.
  assign probe_mem_enb  = mem_enb_ff;
  always @(posedge clkb or negedge resetb_b) begin
    if(~resetb_b) begin
       state_ff     <= MEM_IDLE;
       mem_enb_ff   <= 1'b0;
       mem_addrb_ff <= '0;
       mem_web_ff   <= IS_ADC_MEM;
    end 
    else begin
       // default
       //mem_enb_ff   <= 1'b0;
       //mem_addrb_ff <= '0;
       //mem_web_ff   <= 1'b0;

       case (state_ff)         
         // Idle State. Waits here until a test is started
         MEM_IDLE: 
         begin 
           // test_trigger must a pulse synchroneous to clkb TODO "dont ignore me"
           if(test_trigger && test_en) begin 
             mem_addrb_ff <= 0;
             mem_enb_ff   <= 1'b1;
             mem_web_ff   <= IS_ADC_MEM;  // For the ADC the data are captured and the write enable is asserted 
             state_ff     <= MEM_ACCESS;  // trigger a test
           end
         end // MEM_IDLE: 
        
         // Execute the memory read in oct-words at a time
         MEM_ACCESS: 
         begin    
           // test_en is asserted
           if(test_en) begin
             // Wrap-around at the end address
             if (mem_addrb_ff == mem_endaddr) begin  
               mem_addrb_ff <= 0;
               // The ADC capture stop when end_addr is reached
               // it's achieved by deasserting mem_enb_ff   
               // However to enable the DAC read out loopback the
               // mem_enb_ff must remain asserted
               if(IS_ADC_MEM) begin
                 mem_enb_ff <= 1'b0;
                 mem_web_ff <= 1'b0;
                 state_ff   <= MEM_IDLE;                 
               end  
             end
             else begin
               // Increment through the addresses 
               mem_addrb_ff <= mem_addrb_ff + 1;                       
             end
           // test_en deasserted stop the test and return to MEM_IDLE  
           end else begin
             state_ff <= MEM_IDLE;
           end
         end  // end MEM_ACCESS: 
       endcase
    end
  end         

  // -----------------------------------------------------------------------------
  //  Memory instance
  // -----------------------------------------------------------------------------
  
   util_pipeline #(
   .WIDTH    (ADDR_WIDTH_B),
   .PIPELINE (1)) 
   Ipl_mem_addrb  (
    .clk            (clkb          ), 
    .reset_b        (resetb_b      ), 
    .enable         (test_en       ),
    .data_in        (mem_addrb_ff  ),
    .data_out       (mem_addrb_pp  )
   );

   util_pipeline #(
   .WIDTH    (1),
   .PIPELINE (1)) 
   Ipl_mem_web  (
    .clk            (clkb          ), 
    .reset_b        (resetb_b      ), 
    .enable         (test_en       ),
    .data_in        (mem_web_ff    ),
    .data_out       (mem_web_pp    )
   );

   util_pipeline #(
   .WIDTH    (1),
   .PIPELINE (1)) 
   Ipl_mem_enb  (
    .clk            (clkb          ), 
    .reset_b        (resetb_b      ), 
    .enable         (test_en       ),
    .data_in        (mem_enb_ff    ),
    .data_out       (mem_enb_pp    )
   );


  // xpm_memory_tdpram: True Dual Port RAM 
  xpm_memory_tdpram # (
  // Common module parameters
  .MEMORY_SIZE        (MEM_SIZE),                // positive integer nultiple of MEM_DATA_A_WIDTH and MEM_DATA_B_WIDTH  
  .MEMORY_PRIMITIVE   ("auto"),                  // string; "auto", "distributed", "block" or "ultra";
  .CLOCKING_MODE      ("independent_clock"),     // string; "common_clock", "independent_clock" 
  .MEMORY_INIT_FILE   ("none"),                  // string; "none" or "<filename>.mem" 
  .MEMORY_INIT_PARAM  (""    ),                  // string;
  .USE_MEM_INIT       (1),                       // integer; 0,1
  .WAKEUP_TIME        ("disable_sleep"),         // string; "disable_sleep" or "use_sleep_pin" 
  .MESSAGE_CONTROL    (0),                       // integer; 0,1
  .ECC_MODE           ("no_ecc"),                // string; "no_ecc", "encode_only", "decode_only" or "both_encode_and_decode" 
  .AUTO_SLEEP_TIME    (0),                       // Do not Change

  // Port A module parameters
  .WRITE_DATA_WIDTH_A (MEM_DATA_A_WIDTH),        //positive integer
  .READ_DATA_WIDTH_A  (MEM_DATA_A_WIDTH),        //positive integer
  .BYTE_WRITE_WIDTH_A (MEM_DATA_A_WIDTH),        //integer; 8, 9, or WRITE_DATA_WIDTH_A value: write full word MEM_DATA_A_WITH 
  .ADDR_WIDTH_A       (ADDR_WIDTH_A),            //positive integer
  .READ_RESET_VALUE_A ("0"),                     //string
  .READ_LATENCY_A     (2),                       //non-negative integer if set to 0 vivado infer distributed memory if set to 1 select block memory with
  .WRITE_MODE_A       ("no_change"),             //string; "write_first", "read_first", "no_change" 

  // Port B module parameters
  .WRITE_DATA_WIDTH_B (MEM_DATA_B_WIDTH),        //positive integer
  .READ_DATA_WIDTH_B  (MEM_DATA_B_WIDTH),        //positive integer
  .BYTE_WRITE_WIDTH_B (MEM_DATA_B_WIDTH),        //integer; 8, 9, or WRITE_DATA_WIDTH_B value
  .ADDR_WIDTH_B       (ADDR_WIDTH_B),            //positive integer
  .READ_RESET_VALUE_B ("0"),                     //vector of READ_DATA_WIDTH_B bits
  .READ_LATENCY_B     (2),                       //non-negative integer
  .WRITE_MODE_B       ("no_change")              //string; "write_first", "read_first", "no_change" 

   ) Ixpm_memory_tdpram (

  // Common module ports
  .sleep          (1'b0),
  // Port A module ports
  .clka           (clka          ),
  .rsta           (~reseta_b     ),
  .ena            (mem_ena       ),
  .regcea         (1'b1          ),   
  .wea            (mem_wea       ),  
  .addra          (mem_addra     ),
  .dina           (mem_wdataa    ),
  .injectsbiterra (1'b0          ),
  .injectdbiterra (1'b0          ),
  .douta          (mem_rdataa    ),
  .sbiterra       (              ),
  .dbiterra       (              ),

  // Port B module ports
  .clkb           (clkb          ),
  .rstb           (~resetb_b     ),
  .enb            (mem_enb_pp    ),
  .regceb         (test_en       ),
  .web            (mem_web_pp    ),
  .addrb          (mem_addrb_pp  ),
  .dinb           (mem_wdatab_i  ),
  .injectsbiterrb (1'b0          ),
  .injectdbiterrb (1'b0          ),
  .doutb          (mem_rdatab_i  ),
  .sbiterrb       (              ),
  .dbiterrb       (              )
 );
 
  // -----------------------------------------------------------------------------
  //  Output pipeline
  // -----------------------------------------------------------------------------
  
  util_pipeline #(
   .WIDTH    (MEM_DATA_B_WIDTH),
   .PIPELINE (MEM_PIPELINE)) 
   Ipl_mem_rdatab  (
    .clk            (clkb        ), 
    .reset_b        (resetb_b    ), 
    .enable         (test_en     ),
    .data_in        (mem_rdatab_i),
    .data_out       (mem_rdatab  )
   );
   
   util_pipeline #(
   .WIDTH    (MEM_DATA_B_WIDTH),
   .PIPELINE (MEM_PIPELINE)) 
   Ipl_mem_wdatab  (
    .clk            (clkb        ), 
    .reset_b        (resetb_b    ), 
    .enable         (test_en     ),
    .data_in        (mem_wdatab  ),
    .data_out       (mem_wdatab_i)
   );

  
  // -----------------------------------------------------------------------------
  //  Tasks/Functions
  // -----------------------------------------------------------------------------

  // Return max width of a and b
  function automatic integer max_width;
    input integer a;
    input integer b;
    begin
      if(a > b) max_width = a;
      else      max_width = b;
    end
  endfunction

  // Return min width of a and b
  function automatic integer min_width;
    input integer a;
    input integer b;
    begin
      if(a < b) min_width = a;
      else      min_width = b;
    end
  endfunction

  // function called clogb2 that returns an integer which has the
  // value of the ceiling of the log base 2

  function integer clogb2 (input integer bit_depth);
    begin
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
	  	   bit_depth = bit_depth >> 1;
	  end
  endfunction
endmodule
