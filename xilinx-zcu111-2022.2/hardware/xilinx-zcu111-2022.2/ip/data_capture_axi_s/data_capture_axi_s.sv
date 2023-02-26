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
//       Description:    Programable stimulus gen block
//
//////////////////////////////////////////////////////////////////////////////
module data_capture_axi_s # (
  // Parameters of Axi lite Master Bus Interface 
  parameter integer C_S_AXI_ADDR_WIDTH          = 32,                                 // MAX value is 32 
  parameter integer C_S_AXI_DATA_WIDTH          = 32,                                 // MAX value is 32
 
  // AXI stream slave interface (ADC)
  parameter integer C_S_AXIS_TDATA_WIDTH        = 128,                                // Also set the True DUAL port memory data width ( This number be a multiple C_M_AXI_DATA_WIDTH)   
  
  // Number of individual AXI stream slave interface (Number of DAC slice also number of DAC memory ). Must be a power of 2
  parameter integer C_NUM_AXI_STREAM_S          = 4,                                  // Number of AXI stream (Global not per tile)
  parameter integer C_NUM_TILES                 = 4,                                  // Number of DAC tiles
  parameter integer C_MEM_PIPELINE              = 1,                                  // Number of pipeline stage on the memory port b (high speed clock side)
  parameter integer C_MEM_SIZE                  = 65536                               // 64kbit must be a power of 2 an multiple of C_S_AXI_DATA_WIDTH and C_S_AXIS_TDATA_WIDTH 
  )(
  
    // AXI Lite slave interface
		input                                                             s_axi_aclk,      // Global Clock Signal
    input                                                             s_axi_aresetn,   // Global Reset Signal. This Signal is Active LOW

		input [C_S_AXI_ADDR_WIDTH-1:0]                                    s_axi_awaddr, 	 // Write address (issued by master, acceped by Slave)
		input [2:0]                                                       s_axi_awprot,    // Write channel Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
    input                                                             s_axi_awvalid,   // Write address valid. This signal indicates that the master signaling valid write address and control information.		    		
		output                                                            s_axi_awready,   // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals.

		
		input [C_S_AXI_DATA_WIDTH-1:0]                                    s_axi_wdata,     // Write data (issued by master, acceped by Slave) 
		input [(C_S_AXI_DATA_WIDTH/8)-1:0]                                s_axi_wstrb,     // Write strobes. This signal indicates which byte lanes hold  valid data. There is one write strobe bit for each eight bits of the write data bus. 


	    input                                                             s_axi_wvalid,    // Write valid. This signal indicates that valid write data and strobes are available.
		output                                                            s_axi_wready, 	 // Write ready. This signal indicates that the slave can accept the write data.


		output [1:0]                                                      s_axi_bresp,		 // Write response. This signal indicates the status of the write transaction.

        output                                                            s_axi_bvalid,    // Write response valid. This signal indicates that the channel is signaling a valid write response.
		input                                                             s_axi_bready,    // Response ready. This signal indicates that the master can accept a write response.
		input  [C_S_AXI_ADDR_WIDTH-1:0]                                   s_axi_araddr,    // Read address (issued by master, acceped by Slave) 
		input  [2:0]                                                      s_axi_arprot, 	 // Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access
		input                                                             s_axi_arvalid,   // Read address valid. This signal indicates that the channel is signaling valid read address and control information.
		output                                                            s_axi_arready,   // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
		output [C_S_AXI_DATA_WIDTH-1:0]                                   s_axi_rdata,     // Read data (issued by slave)
		output [1:0]                                                      s_axi_rresp,     // Read response. This signal indicates the status of the read transfert
		output                                                            s_axi_rvalid, 	 // Read valid. This signal indicates that the channel is signaling the required read data.
		input                                                             s_axi_rready, 	 // Read ready. This signal indicates that the master can accept the read data and response information.
    
    // source clock from dac tiles or external source    
    input  [C_NUM_TILES-1:0]                                          tiles_clk_in,    // clock from all the N tiles the selected clock will be used by the memory and will be output as m_axis_aclk along the data to drive the DAC 
    input                                                             ext_clk_in,      // option to used an external clock. same purpose as above 
    
    output                                                            s_axis_aclk,     // axi stream slave clock [i]
    output                                                            s_axis_aresetn,  // axi stream slave active low 5reset [i]
    
    // adc0_debug interface
    output [15:0]                                                     adc0_cmn_control,
    // adc1_debug interface
    output [15:0]                                                     adc1_cmn_control,
    // adc2_debug interface
    output [15:0]                                                     adc2_cmn_control, 
    // adc3_debug interface
    output [15:0]                                                     adc3_cmn_control,    
             
    
    // Tile 0
    output                                                            s00_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s00_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s00_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s00_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s00_axis_tvalid, // axi stream slave data out valid 
    
    output                                                            s01_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s01_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s01_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s01_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s01_axis_tvalid, // axi stream slave data out valid 
 
    output                                                            s02_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s02_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s02_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s02_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s02_axis_tvalid, // axi stream slave data out valid 
    
    output                                                            s03_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s03_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s03_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s03_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s03_axis_tvalid, // axi stream slave data out valid 
    
    // Tile 1
    output                                                            s10_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s10_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s10_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s10_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s10_axis_tvalid, // axi stream slave data out valid 
    
    output                                                            s11_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s11_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s11_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s11_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s11_axis_tvalid, // axi stream slave data out valid 
    
    output                                                            s12_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s12_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s12_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s12_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s12_axis_tvalid, // axi stream slave data out valid 
    
    output                                                            s13_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s13_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s13_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s13_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s13_axis_tvalid, // axi stream slave data out valid 

    // Tile 2
    output                                                            s20_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s20_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s20_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s20_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s20_axis_tvalid, // axi stream slave data out valid 
    
    output                                                            s21_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s21_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s21_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s21_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s21_axis_tvalid, // axi stream slave data out valid 
 
    output                                                            s22_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s22_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s22_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s22_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s22_axis_tvalid, // axi stream slave data out valid 
    
    output                                                            s23_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s23_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s23_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s23_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s23_axis_tvalid, // axi stream slave data out valid 
    
    // Tile 3
    output                                                            s30_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s30_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s30_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s30_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s30_axis_tvalid, // axi stream slave data out valid 
    
    output                                                            s31_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s31_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s31_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s31_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s31_axis_tvalid, // axi stream slave data out valid 
    
    output                                                            s32_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s32_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s32_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s32_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s32_axis_tvalid, // axi stream slave data out valid 
    
    output                                                            s33_axis_tready, // axi stream slave ready to accept data in [i]
    input  [C_S_AXIS_TDATA_WIDTH-1:0]                                 s33_axis_tdata,  // axi stream slave data out
    input  [(C_S_AXIS_TDATA_WIDTH/8)-1:0]                             s33_axis_tstrb,   // axi stream slave byte qualifier[i]    
    input                                                             s33_axis_tlast,   // axi stream slave indicates boundary of last packet
    input                                                             s33_axis_tvalid  // axi stream slave data out valid 

 
  );


// -----------------------------------------------------------------------------
// Local Constant
// -----------------------------------------------------------------------------

localparam integer C_NUM_MEMORY_BLOCK  = C_NUM_AXI_STREAM_S;                     // Number of memory block is the number C_NUM_AXI_STREAM_S: it's also the number of DAC slice
localparam integer C_NUM_MEM_CFG_BLOCK = C_NUM_MEMORY_BLOCK+1;                   // Number of memory blocks and number of configuration registers 
localparam integer SELECT_MEM_WIDTH    = $clog2(C_NUM_MEMORY_BLOCK)+1;           // N memory blocks +1 to allow for configuration register block to be addressed    

// MEM_SIZE must be a common power of 2 multiple of C_S_AXI_DATA_WIDTH and C_S_AXIS_TDATA_WIDTH 
localparam integer MEM_ADDR_WIDTHA    = $clog2(C_MEM_SIZE/C_S_AXI_DATA_WIDTH);   // Dual port memory port A address width 
localparam integer MEM_ADDR_WIDTHB    = $clog2(C_MEM_SIZE/C_S_AXIS_TDATA_WIDTH); // Dual port memory port B address width
localparam integer NUM_CFG_REG        = 32;                                      // Number of 32 bit configuration register
localparam integer CFG_ADDR_WIDTH     = $clog2(NUM_CFG_REG);                     // Config register address space width

localparam integer CLK_SEL_WIDTH = $clog2(C_NUM_TILES) + 1;                      // width of the variable used to select the clk to be used as m_axis_aclk                                

// -----------------------------------------------------------------------------
// Register and wire declaration
// -----------------------------------------------------------------------------

wire  [C_NUM_MEM_CFG_BLOCK-1:0]                                  mem_en;                // Memory access enable must be high for one clock cyle when a read or a writre operation are initiated
wire                                                             mem_we;                // Memory write enbale en a word wide write of width MEM_DATA_WITH 
wire  [C_NUM_MEM_CFG_BLOCK-1:0] [MEM_ADDR_WIDTHA-1:0]            mem_addr;              // Inidividual Memory address slelect , N x Memory, each mory Depth is MEM_ADDR_WIDTH  
wire                            [C_S_AXI_DATA_WIDTH-1:0]         mem_wdata;             // Inidividual Memory address slelect , N x Memory, each mory Depth is MEM_ADDR_WIDTH  
wire  [C_NUM_MEM_CFG_BLOCK-1:0] [C_S_AXI_DATA_WIDTH-1:0]         mem_rdata;             // Inidividual Memory address slelect , N x Memory, each mory Depth is MEM_ADDR_WIDTH  

wire  [NUM_CFG_REG-1:0]         [C_S_AXI_DATA_WIDTH-1:0]         cfg_reg; 
wire                                                             test_trigger_async;    // pulse to trigger the test from s_axi_aclk
wire                                                             test_trigger_sync;     // test_trigger_async synchronized to s_axis_aclk

wire  [C_NUM_MEMORY_BLOCK-1:0]                                   test_en_async;         // enable test stimulus generation (loopback) from s_axi_aclk
wire  [C_NUM_MEMORY_BLOCK-1:0]                                   test_en_sync;          // test_en_async synchronized

wire  [C_NUM_MEMORY_BLOCK-1:0]  [MEM_ADDR_WIDTHB-1:0]            mem_endaddr;    
wire  [CLK_SEL_WIDTH-1:0]                                        clk_sel;               // slect source clock tile
wire                                                             tile_clk;              // clock from one of the enabeled tile 
wire  [CLK_SEL_WIDTH-2:0]                                        tile_clk_sel;          // selct the tile clk to be used as m_axis_aclk 

wire   [C_NUM_AXI_STREAM_S-1:0]                                  s_axis_tready;         // axi stream slave ready to accept data in [i]
wire   [C_NUM_AXI_STREAM_S-1:0] [C_S_AXIS_TDATA_WIDTH-1:0]       s_axis_tdata;          // axi stream slave data out


// -----------------------------------------------------------------------------
// MEMORY Axi slave interface
// -----------------------------------------------------------------------------

axi_s_mem_if # ( .C_S_AXI_DATA_WIDTH  (C_S_AXI_DATA_WIDTH     ), // 32                               
		             .C_S_AXI_ADDR_WIDTH  (C_S_AXI_ADDR_WIDTH     ), // 32                                
                 .C_NUM_MEMORY_BLOCK  (C_NUM_MEM_CFG_BLOCK    ), // 4 memory and one configuration register                            
                 .SELECT_MEM_WIDTH    (SELECT_MEM_WIDTH       ), // select one of the 4 memory or the config register
                 .C_MEMORY_ADDR_WIDTH (MEM_ADDR_WIDTHA        ), // MEM_SIZE/C_S_AXI_DATA_WIDTH 
                 .C_MEMORY_DATA_WITH  (C_S_AXI_DATA_WIDTH     )  // 32                          
               ) Iaxi_s_mem_if (
	                 .mem_en              (mem_en        ),   
                   .mem_we              (mem_we        ),     
                   .mem_addr            (mem_addr      ),    
                   .mem_rdata           (mem_rdata     ),  
                   .mem_wdata           (mem_wdata     ),
                   .s_axi_aclk          (s_axi_aclk    ),    
                   .s_axi_aresetn       (s_axi_aresetn ),  
                   .s_axi_awaddr        (s_axi_awaddr  ), 	
		               .s_axi_awprot        (s_axi_awprot  ),    
                   .s_axi_awvalid       (s_axi_awvalid ),      		
		               .s_axi_awready       (s_axi_awready ),   		
                   .s_axi_wdata         (s_axi_wdata   ),  
                   .s_axi_wstrb         (s_axi_wstrb   ),     
	                 .s_axi_wvalid        (s_axi_wvalid  ),    
	                 .s_axi_wready        (s_axi_wready  ), 
	                 .s_axi_bresp         (s_axi_bresp   ),		 
                   .s_axi_bvalid        (s_axi_bvalid  ),    
		               .s_axi_bready        (s_axi_bready  ), 
                   .s_axi_araddr        (s_axi_araddr  ),    
		               .s_axi_arprot        (s_axi_arprot  ), 	 
		               .s_axi_arvalid       (s_axi_arvalid ),  
                   .s_axi_arready       (s_axi_arready ),   
                   .s_axi_rdata         (s_axi_rdata   ),    
                   .s_axi_rresp         (s_axi_rresp   ),     
                   .s_axi_rvalid        (s_axi_rvalid  ), 	 
                   .s_axi_rready  	    (s_axi_rready  )
                );

// -----------------------------------------------------------------------------
// Test Stimulus Gen 
// -----------------------------------------------------------------------------
        
// N x Stimulus Capture memory block
generate
  genvar I;
  for (I=0; I < C_NUM_AXI_STREAM_S ; I++) 
  begin: stim_capture
     mem_block # ( .MEM_DATA_A_WIDTH (C_S_AXI_DATA_WIDTH  ),      // 32     
                   .MEM_DATA_B_WIDTH (C_S_AXIS_TDATA_WIDTH),      // 128     
                   .MEM_SIZE         (C_MEM_SIZE          ),      // power of 2 common multiple of C_S_AXI_DATA_WIDTH and C_S_AXIS_TDATA_WIDTH
                   .MEM_PIPELINE     (C_MEM_PIPELINE      ),
                   .IS_ADC_MEM       (1'b1                ),      // This am ADC memory (data capture memory)
                   .ADDR_WIDTH_A     (MEM_ADDR_WIDTHA     ),      // Dual port memory port A
                   .ADDR_WIDTH_B     (MEM_ADDR_WIDTHB     )       // Dual port memory port B
	               ) Imem_capture (  
                   .clka                   (s_axi_aclk       ),   //          
                   .reseta_b               (s_axi_aresetn    ),   //      
                   .mem_ena                (mem_en[I+1]      ),   //        
                   .mem_wea                (mem_we           ),   //     
                   .mem_addra              (mem_addr[I+1]    ),   //     
                   .mem_rdataa             (mem_rdata[I+1]   ),   //   
                   .mem_wdataa             (mem_wdata        ),   //           
                   .clkb                   (s_axis_aclk      ),   //        
                   .resetb_b               (s_axis_aresetn   ),   //    
                   .test_en                (test_en_sync[I]  ),   //     
                   .test_trigger           (test_trigger_sync),   //  
                   .mem_rdatab             (                 ),   //   
                   .mem_wdatab             (s_axis_tdata[I]  ),   // Not used on the DAC mem   
                   .mem_endaddr            (mem_endaddr[I]   )    //                                                                                       
                 );
                 
                 assign s_axis_tready[I] = '1; // always ready TODO check hoe the Caher IP handle that
  
  end
endgenerate

// -----------------------------------------------------------------------------
// Configuration register
// -----------------------------------------------------------------------------                                      

//
// Memory test configuration
//

// Trigger a memory test: a signe pulse to trigger all the memory that are enabled
assign test_trigger_async = cfg_reg[1][0];

// N x Stimulus Capture memory block
generate
  genvar K;
  for (K=0; K < C_NUM_AXI_STREAM_S ; K++) 
  begin: cfg_to_mem
    // memory test enable one bit per memory block
    assign test_en_async[K] = cfg_reg[2][K];     

    // Memory endaddress one register per memory block
    assign mem_endaddr[K] = cfg_reg[4+K][MEM_ADDR_WIDTHB-1:0];
    
  end
endgenerate

// select external clock or a tile clock     
assign clk_sel = cfg_reg[3][CLK_SEL_WIDTH-1:0];

// adc0_debug interface
wire [15:0] adc0_cmn_control_i;
  
// adc tiles cmn control connect to the IP debug port
assign  adc0_cmn_control_i = cfg_reg[20][15:0];
// multi tile fifo rd en bit[12] 
sync_nstage Isync_adc0_cmn_control12 (.rst_b(s_axis_aresetn),.clk(s_axis_aclk),.din(adc0_cmn_control_i[12]),.dout(adc0_cmn_control[12]));
// Fifo enabled bit[15] 
sync_nstage Isync_adc0_cmn_control15 (.rst_b(s_axis_aresetn),.clk(s_axis_aclk),.din(adc0_cmn_control_i[15]),.dout(adc0_cmn_control[15]));

assign adc0_cmn_control[14:13] = adc0_cmn_control_i[14:13];  
assign adc0_cmn_control[11:0] = '0; 

generate if (C_NUM_TILES  > 0) begin
  // adc1_debug interface
  wire [15:0] adc1_cmn_control_i;
  assign  adc1_cmn_control_i = cfg_reg[21][15:0];
  // multi tile fifo rd en bit[12] 
  sync_nstage Isync_adc1_cmn_control12 (.rst_b(s_axis_aresetn),.clk(s_axis_aclk),.din(adc1_cmn_control_i[12]),.dout(adc1_cmn_control[12]));
  // Fifo enabled bit[15] 
  sync_nstage Isync_adc1_cmn_control15 (.rst_b(s_axis_aresetn),.clk(s_axis_aclk),.din(adc1_cmn_control_i[15]),.dout(adc1_cmn_control[15]));
  // Async 
  assign adc1_cmn_control[14:13] = adc1_cmn_control_i[14:13];
  assign adc1_cmn_control[11:0] = '0; 
end
endgenerate

generate if (C_NUM_TILES  > 1) begin  
  // adc2_debug interface
  wire [15:0] adc2_cmn_control_i;
  assign  adc2_cmn_control_i = cfg_reg[22][15:0];
  // multi tile fifo rd en bit[12] 
  sync_nstage Isync_adc2_cmn_control12 (.rst_b(s_axis_aresetn),.clk(s_axis_aclk),.din(adc2_cmn_control_i[12]),.dout(adc2_cmn_control[12]));
  // Fifo enabled bit[15] 
  sync_nstage Isync_adc2_cmn_control15 (.rst_b(s_axis_aresetn),.clk(s_axis_aclk),.din(adc2_cmn_control_i[15]),.dout(adc2_cmn_control[15]));
  // Async 
  assign adc2_cmn_control[14:13] = adc2_cmn_control_i[14:13];
  assign adc2_cmn_control[11:0] = '0; 
end
endgenerate

generate if (C_NUM_TILES  > 2) begin 
  // adc3_debug interface
  wire [15:0] adc3_cmn_control_i;
  assign  adc3_cmn_control_i = cfg_reg[23][15:0];
  // multi tile fifo rd en bit[12] 
  sync_nstage Isync_adc3_cmn_control12 (.rst_b(s_axis_aresetn),.clk(s_axis_aclk),.din(adc3_cmn_control_i[12]),.dout(adc3_cmn_control[12]));
  // Fifo enabled bit[15] 
  sync_nstage Isync_adc3_cmn_control15 (.rst_b(s_axis_aresetn),.clk(s_axis_aclk),.din(adc3_cmn_control_i[15]),.dout(adc3_cmn_control[15]));
  // Async 
  assign adc3_cmn_control[14:13] = adc3_cmn_control_i[14:13];
  assign adc3_cmn_control[11:0] = '0; 
end
endgenerate

//
// Confifiguration register instance
//

// memory id code with hardware information
wire [18:0] mem_16b_word   = C_MEM_SIZE/16;           // reading up t0 256K 16bit word: will be using 64k max
wire [2:0]  n_memory       = C_NUM_AXI_STREAM_S[2:0]; // up to 16
wire        n_cfg          = 1;               
wire        is_capture     = 1;
wire [2:0]  n_tiles        = C_NUM_TILES[1:0];        // up to 4

//                         [31]       [30:28] [27:26] [25:7]                                
wire [31:0] mem_id_code = {is_capture,n_tiles,n_memory,mem_16b_word,6'b00_0000};
 
// address location 0 is read only mem_id_code
config_reg #( .DATA_W             (C_S_AXI_DATA_WIDTH),
              .SELF_CLEARING_ADDR (1                 ), // addres location 1 is self clearing use to generate a pulse
              .NUM_CFG            (NUM_CFG_REG       ))
              
            Iconfig_reg (
              .clk         (s_axi_aclk                       ),
              .reset_b     (s_axi_aresetn                    ),
              .addr        (mem_addr[0][CFG_ADDR_WIDTH-1:0]  ),                                           
              .wdata       (mem_wdata                        ),  
              .rdata       (mem_rdata[0]                     ),  
              .en          (mem_en[0]                        ),      
              .we          (mem_we                           ),
              .mem_id_code (mem_id_code                      ),       
              .cfg_reg     (cfg_reg                          ),
              .rdy         (                                 )
            );


// -----------------------------------------------------------------------------
// Synchronization
// -----------------------------------------------------------------------------  

// synchronize test_trigger from the s_axi_aclk to m_axis_aclk  
pulse_sync #(.NUM_SYNC_FF(2))
             Isync_test_trigger (                 
              .rst_b_src    (s_axi_aresetn      ), // Axi lite slave  
              .clk_src      (s_axi_aclk         ),     
              .data_src     (test_trigger_async ),   
              .rst_b_dest   (s_axis_aresetn     ), // Axi stream stave 
              .clk_dst      (s_axis_aclk        ),    
              .data_dest    (test_trigger_sync  ),
              .ack_src      (                   )  // not used      
             );
generate
  genvar J;
  for (J=0; J < C_NUM_MEMORY_BLOCK ; J++) 
  begin: sync_test_en
    sync_nstage #( .NUM_SYNC_FF(2),
                   .RST_VAL(1'b0)) 
                   Isync_test_en (
                   .rst_b    (s_axis_aresetn  ),         
                   .clk      (s_axis_aclk     ),           
                   .din      (test_en_async[J]),           
                   .dout     (test_en_sync[J] ) 
                   );
    
  end
endgenerate



// -----------------------------------------------------------------------------
// Clock and reset
// -----------------------------------------------------------------------------                                      
  
//   BUFG_GT   : In order to incorporate this function into the design,
//   Verilog   : the following instance declaration needs to be placed
//  instance   : in the body of the design code.  The instance name
// declaration : (BUFG_GT_inst) and/or the port declarations within the
//    code     : parenthesis may be changed to properly reference and
//             : connect this function to the design.  All inputs
//             : and outputs must be connected.

wire [2:0] div      = 3'b000;
wire       clrmask  = 1'b0;
wire       clr      = 1'b0;
wire       ce       = 1'b1;
wire       cemask   = 1'b0;

wire [C_NUM_TILES-1:0] clk_buf_gt;
/*
generate
  genvar L;
  for (L=0; L < C_NUM_TILES ; L++) 
  begin: bufg_gt_per_tile
    BUFG_GT BUFG_GT_inst (
     .O       (clk_buf_gt[L]   ), // 1-bit output: Buffer
     .CE      (ce              ), // 1-bit input: Buffer enable
     .CEMASK  (cemask          ), // 1-bit input: CE Mask
     .CLR     (clr             ), // 1-bit input: Asynchronous clear
     .CLRMASK (clrmask         ), // 1-bit input: CLR Mask
     .DIV     (div             ), // 3-bit input: Dynamic divide Value
     .I       (tiles_clk_in[L] )  // 1-bit input: Buffer
    );   
  end
endgenerate
*/
assign clk_buf_gt[C_NUM_TILES-1:0] = tiles_clk_in[C_NUM_TILES-1:0];

//
// Clocking configuration
//

`define BYPASS_BUFG
`ifdef BYPASS_BUFG
assign s_axis_aclk = clk_buf_gt[0]; 
`else
// selec one of the C_NUM_TILES clk
generate if (C_NUM_TILES  == 1) begin
  assign tile_clk = clk_buf_gt[0]; 
end
else if (C_NUM_TILES  == 2) begin
  BUFGMUX_stg0 (
      .O  (tile_clk      ),   // 1-bit output: Clock output
      .I0 (clk_buf_gt[0] ),   // 1-bit input: Clock input (S=0)
      .I1 (clk_buf_gt[1] ),   // 1-bit input: Clock input (S=1)
      .S  (clk_sel[0]    )    // 1-bit input: Clock select
  );
end
else if (C_NUM_TILES  == 3) begin
  wire tile_clk01;
  
  BUFGMUX_stg0 (
      .O  (tile_clk01      ),   // 1-bit output: Clock output
      .I0 (clk_buf_gt[0]   ),   // 1-bit input: Clock input (S=0)
      .I1 (clk_buf_gt[1]   ),   // 1-bit input: Clock input (S=1)
      .S  (clk_sel[0] )    // 1-bit input: Clock select
  );

  BUFGMUX_stg1 (
      .O  (tile_clk        ),   // 1-bit output: Clock output
      .I0 (tile_clk01      ),   // 1-bit input: Clock input (S=0)
      .I1 (clk_buf_gt[2]   ),   // 1-bit input: Clock input (S=1)
      .S  (clk_sel[1] )    // 1-bit input: Clock select
  );  
end
// source the clock from one of the 4 tiles
else if (C_NUM_TILES  == 4) begin
  wire tile_clk01,tile_clk012; 
  wire sel_stg0,sel_stg1,sel_stg2;
  
  assign sel_stg0 = ~clk_sel[0] & ~clk_sel[1];   //clk_sel = 3'bx00
  assign sel_stg1 = ~clk_sel[0] & clk_sel[1];    //clk_sel = 3'bx01
  assign sel_stg2 =  clk_sel[0] & clk_sel[1];    //clk_sel = 3'bx11
  
  BUFGMUX_stg0 (
      .O  (tile_clk01    ),  
      .I0 (clk_buf_gt[0] ),   
      .I1 (clk_buf_gt[1] ),  
      .S  (sel_stg0      )    
  );

  BUFGMUX_stg1 (
      .O  (tile_clk012    ),   
      .I0 (tile_clk01     ),     
      .I1 (clk_buf_gt[2]  ),   
      .S  (sel_stg1       )    
  );
  
  BUFGMUX_stg2 (
      .O  (tile_clk       ),  
      .I0 (tile_clk012    ),    
      .I1 (clk_buf_gt[3]  ),   
      .S  (sel_stg2       )   
  );
  
end

endgenerate

// last mux on the tree always present select between a tile clock and an
// external clock
BUFGMUX #(.CLK_SEL_TYPE("ASYNC"))
  BUFGMUX_lstg (
      .O  (s_axis_aclk                  ),   // 1-bit output: Clock output
      .I0 (tile_clk                     ),     // 1-bit input: Clock input (S=0)
      .I1 (ext_clk_in                   ),   // 1-bit input: Clock input (S=1)
      .S  (clk_sel[CLK_SEL_WIDTH-1])    // 1-bit input: Clock select
);
`endif
//assign s_axis_aresetn =  s_axi_aresetn;  


				
// synchronize the reset deassertion 
reset_signal_sync Ireset_sync (.clk (s_axis_aclk), .reset_b (s_axi_aresetn), .reset_out_b (s_axis_aresetn));

// -----------------------------------------------------------------------------
// Output assignement
// ----------------------------------------------------------------------------- 
 
 // C_NUM_AXI_STREAM_S can be  1,2,4,8,16  
 // Tile 0 slice 0
 
 assign s_axis_tdata[0]  = s00_axis_tdata;   
 assign s00_axis_tready = s_axis_tready[0];
  
 // Tile 0 slice 1
 generate if (C_NUM_AXI_STREAM_S  > 1) begin : Iused1   
   assign s_axis_tdata[1]  = s01_axis_tdata;
   assign s01_axis_tready = s_axis_tready[1];     
 end   
 endgenerate
 
 // Tile 0 slice 2 
 generate if (C_NUM_AXI_STREAM_S  > 2) begin : Iused2   
   assign s_axis_tdata[2]  = s02_axis_tdata;  
   assign s02_axis_tready = s_axis_tready[2];     
 end   
 endgenerate
 
 // Tile 0 slice 3 
 generate if (C_NUM_AXI_STREAM_S  > 3) begin : Iused3   
   assign s_axis_tdata[3]  = s03_axis_tdata;
   assign s03_axis_tready = s_axis_tready[3];       
 end  
 endgenerate
 
 // Tile 1 slice 0
 generate if (C_NUM_AXI_STREAM_S  > 4) begin : Iused4   
   assign s_axis_tdata[4]  = s10_axis_tdata;  
   assign s10_axis_tready = s_axis_tready[4];  
 end   
 endgenerate
 
  // Tile 1 slice 1  
 generate if (C_NUM_AXI_STREAM_S  > 5) begin : Iused5   
   assign s_axis_tdata[5]  = s11_axis_tdata; 
   assign s11_axis_tready = s_axis_tready[5];      
 end  
 endgenerate

  // Tile 1 slice 2  
 generate if (C_NUM_AXI_STREAM_S  > 6) begin : Iused6   
   assign s_axis_tdata[6]  = s12_axis_tdata;
   assign s12_axis_tready = s_axis_tready[6];       
 end  
 endgenerate

  // Tile 1 slice 3  
 generate if (C_NUM_AXI_STREAM_S  > 7) begin : Iused7   
   assign s_axis_tdata[7]  = s13_axis_tdata; 
   assign s13_axis_tready = s_axis_tready[7];     
 end  
 endgenerate
  
 // Tile 2 slice 0
 generate if (C_NUM_AXI_STREAM_S  > 8) begin : Iused8   
   assign s_axis_tdata[8]  = s20_axis_tdata; 
   assign s20_axis_tready = s_axis_tready[8];     
 end  
 endgenerate
 
 // Tile 2 slice 1 
 generate if (C_NUM_AXI_STREAM_S  > 9) begin : Iused9   
   assign s_axis_tdata[9]  = s21_axis_tdata; 
   assign s21_axis_tready = s_axis_tready[9];     
 end   
 endgenerate
 
 // Tile 2 slice 2 
 generate if (C_NUM_AXI_STREAM_S  > 10) begin : Iused10   
   assign s_axis_tdata[10]  = s22_axis_tdata;
   assign s22_axis_tready = s_axis_tready[10];      
 end   
 endgenerate
 
 // Tile 2 slice 3
 generate if (C_NUM_AXI_STREAM_S  > 11) begin : Iused11   
   assign s_axis_tdata[11]  = s23_axis_tdata; 
   assign s23_axis_tready = s_axis_tready[11];     
 end   
 endgenerate
 
  // Tile 3 slice 0  
 generate if (C_NUM_AXI_STREAM_S  > 12) begin : Iused12   
   assign s_axis_tdata[12]  = s30_axis_tdata; 
   assign s30_axis_tready = s_axis_tready[12];   
 end   
 endgenerate

  // Tile 3 slice 1  
 generate if (C_NUM_AXI_STREAM_S  > 13) begin : Iused13   
   assign s_axis_tdata[13]  = s31_axis_tdata; 
   assign s31_axis_tready = s_axis_tready[13];     
 end   
 endgenerate

  // Tile 3 slice 2  
 generate if (C_NUM_AXI_STREAM_S  > 14) begin : Iused14   
   assign s_axis_tdata[14]  = s32_axis_tdata; 
   assign s32_axis_tready = s_axis_tready[14];     
 end  
 endgenerate
 
 // Tile 3 slice 3  
 generate if (C_NUM_AXI_STREAM_S  > 15) begin : Iused15   
   assign s_axis_tdata[15]  = s33_axis_tdata;  
   assign s33_axis_tready = s_axis_tready[15];   
 end   
 endgenerate

// -----------------------------------------------------------------------------
// Function definition
// -----------------------------------------------------------------------------
  
endmodule   

// vim: set ai! ts=2 expandtab bs nu hls ruler :


