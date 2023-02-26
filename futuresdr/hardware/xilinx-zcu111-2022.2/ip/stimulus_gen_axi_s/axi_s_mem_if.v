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
//       Description:    DTP to AXI-4 master bridge
//
//////////////////////////////////////////////////////////////////////////////


	module axi_s_mem_if # (
		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,                                    // Max 32 
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 32,                                    // Max 32
    
    // Memory access parameter
    parameter integer C_NUM_MEMORY_BLOCK  = 4,                                     // Must be a power of 2
    
    // Num memory address need to be a power of 2 
    parameter integer SELECT_MEM_WIDTH = $clog2(C_NUM_MEMORY_BLOCK),               // Do not override change C_NUM_MEMORY_BLOCK if required 

    parameter integer C_MEMORY_ADDR_WIDTH = C_S_AXI_ADDR_WIDTH - SELECT_MEM_WIDTH, // Override to desired address space width the follwing SELECT_MEM_WIDTH is used to select the target memory block 
    parameter integer C_MEMORY_DATA_WITH  = 32 // max is C_S_AXI_DATA_WIDTH
    
	) (
		
    // Memory or config register 
    output reg [C_NUM_MEMORY_BLOCK-1:0]                           mem_en,      // Memory access enable must be high for one clock cyle when a read or a writre operation are initiated
    output                                                        mem_we,      // Memory write nebale en a word wide write of width C_MEMORY_DATA_WITH 
    output reg [C_NUM_MEMORY_BLOCK-1:0] [C_MEMORY_ADDR_WIDTH-1:0] mem_addr,    // Inidividual Memory address slelect , N x Memory, each mory Depth is C_MEMORY_ADDR_WIDTH  
    input      [C_NUM_MEMORY_BLOCK-1:0] [C_MEMORY_DATA_WITH-1:0]  mem_rdata,   // Memory read data
    output                              [C_MEMORY_DATA_WITH-1:0]  mem_wdata,   // memory wdata
    
    // AXI slave interface
		input                                                     s_axi_aclk,      // Global Clock Signal
    input                                                     s_axi_aresetn,   // Global Reset Signal. This Signal is Active LOW

		input [C_S_AXI_ADDR_WIDTH-1:0]                            s_axi_awaddr, 	 // Write address (issued by master, acceped by Slave)
		input [2:0]                                               s_axi_awprot,    // Write channel Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
    input                                                     s_axi_awvalid,   // Write address valid. This signal indicates that the master signaling valid write address and control information.		    		
		output                                                    s_axi_awready,   // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals.

		
		input [C_S_AXI_DATA_WIDTH-1:0]                            s_axi_wdata,     // Write data (issued by master, acceped by Slave) 
		input [(C_S_AXI_DATA_WIDTH/8)-1:0]                        s_axi_wstrb,     // Write strobes. This signal indicates which byte lanes hold  valid data. There is one write strobe bit for each eight bits of the write data bus. 


	  input                                                     s_axi_wvalid,    // Write valid. This signal indicates that valid write data and strobes are available.
		output                                                    s_axi_wready, 	 // Write ready. This signal indicates that the slave can accept the write data.


		output [1:0]                                              s_axi_bresp,		 // Write response. This signal indicates the status of the write transaction.

    output                                                    s_axi_bvalid,    // Write response valid. This signal indicates that the channel is signaling a valid write response.
		input                                                     s_axi_bready,    // Response ready. This signal indicates that the master can accept a write response.
		input  [C_S_AXI_ADDR_WIDTH-1:0]                           s_axi_araddr,    // Read address (issued by master, acceped by Slave) 
		input  [2:0]                                              s_axi_arprot, 	 // Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access
		input                                                     s_axi_arvalid,   // Read address valid. This signal indicates that the channel is signaling valid read address and control information.
		output                                                    s_axi_arready,   // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
		output [C_S_AXI_DATA_WIDTH-1:0]                           s_axi_rdata,     // Read data (issued by slave)
		output [1:0]                                              s_axi_rresp,     // Read response. This signal indicates the status of the read transfert
		output                                                    s_axi_rvalid, 	 // Read valid. This signal indicates that the channel is signaling the required read data.
		input                                                     s_axi_rready  	 // Read ready. This signal indicates that the master can accept the read data and response information.
    
	);
  
  // -----------------------------------------------------------------------------
  // Local constant
  // -----------------------------------------------------------------------------


  // -----------------------------------------------------------------------------
  // Reg and wire declaration
  // -----------------------------------------------------------------------------
  
  // Memory interface
  wire [SELECT_MEM_WIDTH-1:0]     select_mem;  // select a memory 0 to C_NUM_MEMORY_BLOCK  
  wire                            mem_rden;    // memory read enable to any of the C_NUM_MEMORY_BLOCK
  wire [C_S_AXI_ADDR_WIDTH-1:0]   mem_addr_i;  // same width as axi r/w address width
  
  // Axi interface
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr_ff;
	reg                           	axi_awready_ff;
	reg  	                          axi_wready_ff;
	reg [1:0] 	                    axi_bresp_ff;
	reg  	                          axi_bvalid_ff;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr_ff;
	reg  	                          axi_arready_ff;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata_ff;
	reg [1 : 0] 	                  axi_rresp_ff;
	reg  	                          axi_rvalid_ff;
  
  localparam integer AXI_UNUSED_LSB = 2;  
  localparam integer START_MEM_SEL  = C_MEMORY_ADDR_WIDTH + SELECT_MEM_WIDTH + AXI_UNUSED_LSB - 1; 
  localparam integer END_MEM_SEL    = C_MEMORY_ADDR_WIDTH + AXI_UNUSED_LSB;

  assign select_mem = mem_addr_i [START_MEM_SEL:END_MEM_SEL];

  // -----------------------------------------------------------------------------
  // AXI slave operation
  // -----------------------------------------------------------------------------

  // Implement axi_awready generation
	// axi_awready is asserted for one s_axi_aclk clock cycle when both
	// s_axi_awvalid and s_axi_wvalid are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge s_axi_aclk or negedge s_axi_aresetn) begin
	  if (~s_axi_aresetn) begin
      axi_awready_ff <= 1'b0;
	  end 
	  else if (~axi_awready_ff && s_axi_awvalid && s_axi_wvalid) begin
	    // slave is ready to accept write address when 
	    // there is a valid write address and write data
	    // on the write address and data bus. This design 
	    // expects no outstanding transactions. 
	    axi_awready_ff <= 1'b1;
	  end 
    else begin
	    axi_awready_ff <= 1'b0;
	  end
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// s_axi_awvalid and s_axi_wvalid are valid. 

	always @( posedge s_axi_aclk or negedge s_axi_aresetn) begin
	  if (~s_axi_aresetn)  begin
	    axi_awaddr_ff <= 0;
	  end 
	  else if (~axi_awready_ff && s_axi_awvalid && s_axi_wvalid) begin
	    // Write Address latching 
	    axi_awaddr_ff <= s_axi_awaddr;
	  end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one s_axi_aclk clock cycle when both
	// s_axi_awvalid and s_axi_wvalid are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge s_axi_aclk or negedge s_axi_aresetn) begin
	  if ( s_axi_aresetn == 1'b0 ) begin
	    axi_wready_ff <= 1'b0;
	  end 
    else if (~axi_wready_ff && s_axi_wvalid && s_axi_awvalid) begin
	    // slave is ready to accept write data when 
	    // there is a valid write address and write data
	    // on the write address and data bus. This design 
	    // expects no outstanding transactions. 
	    axi_wready_ff <= 1'b1;
	  end
    else begin
	    axi_wready_ff <= 1'b0;
	  end 
	end       
       
	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, s_axi_wvalid, axi_wready and s_axi_wvalid are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge s_axi_aclk or negedge s_axi_aresetn) begin	
    if (~s_axi_aresetn) begin
      axi_bvalid_ff  <= 1'b0;
      axi_bresp_ff   <= 2'b0;
	  end 
    else if (axi_awready_ff & s_axi_awvalid && ~axi_bvalid_ff && axi_wready_ff && s_axi_wvalid) begin
	    // indicates a valid write response is available
	    axi_bvalid_ff <= 1'b1;
	    axi_bresp_ff  <= 2'b0; // 'OKAY' response 
	  end 
    else if (s_axi_bready && axi_bvalid_ff) begin
	    //check if bready is asserted while bvalid is high) 
	    //(there is a possibility that bready is always asserted high)   
	    axi_bvalid_ff <= 1'b0; 
	  end  
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one s_axi_aclk clock cycle when
	// s_axi_arvalid is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when s_axi_arvalid is 
	// asserted. axi_araddr is reset to zero on reset assertion.
  reg[1:0] cnt_ff;
  always @( posedge s_axi_aclk or negedge s_axi_aresetn  ) begin
	  if (~s_axi_aresetn) begin
	    cnt_ff <= 2'b00;
	  end 
	  else begin
       if (s_axi_arvalid) begin
         cnt_ff <= cnt_ff + 1;           
	     end
       else begin
         cnt_ff <= '0;
       end 
    end 
	end 
	
  wire mem_capture;
  wire mem_rd_delay;

  assign mem_rden     = s_axi_arvalid & (cnt_ff == 0); // enable the memory read access
  assign mem_capture  = s_axi_arvalid & (cnt_ff == 2); // capture the memory read data (pipelined)
  assign mem_rd_delay = s_axi_arvalid & (cnt_ff == 2); // Enable axi_arready_ff to be asserted 

  always @( posedge s_axi_aclk or negedge s_axi_aresetn  ) begin
	  if (~s_axi_aresetn) begin
	    axi_arready_ff <= 1'b0;
	  end 
	  else if (~axi_arready_ff & s_axi_arvalid & mem_rd_delay) begin
	    // indicates that the slave has acceped the valid read address
	    axi_arready_ff <= 1'b1;	    
	  end
    else begin
	    axi_arready_ff <= 1'b0;
	  end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one s_axi_aclk clock cycle when both 
	// s_axi_arvalid and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  

	always @( posedge s_axi_aclk or negedge s_axi_aresetn) begin
    if (~s_axi_aresetn) begin
	    axi_rvalid_ff <= 0;
	    axi_rresp_ff  <= 0;
      //axi_rdata_ff  <= '0;
	  end 
	  else if (axi_arready_ff && s_axi_arvalid && ~axi_rvalid_ff) begin
	    // Valid read data is available at the read data bus
	    axi_rvalid_ff <= 1'b1;
	    axi_rresp_ff  <= 2'b0; // 'OKAY' response
      // Capture the readata
      //axi_rdata_ff  <= mem_rdata[select_mem];      
	  end   
	  else if (axi_rvalid_ff && s_axi_rready) begin
	    // Read data is accepted by the master
	    axi_rvalid_ff <= 1'b0;
	  end                
	end   
  
  // -----------------------------------------------------------------------------
  // Memory access operation
  // -----------------------------------------------------------------------------
   
  // The read write access to the memory cannot be simultmeous
	// Implement memory mapped select and write logic generation
	// The write data is accepted and written to a memory mapped when
	// axi_awready, s_axi_wvalid, axi_wready and s_axi_wvalid are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
  assign mem_we = axi_wready_ff & s_axi_wvalid & axi_awready_ff & s_axi_awvalid; 
  
  // memory write data bus
  assign mem_wdata = s_axi_wdata; 

	// Implement memory mapped select and read logic generation
	// Slave register read enable is asserted when a valid address is available
	// and the slave is ready to accept the read address.
	//assign mem_rden = axi_arready_ff;
  
  // Mux beetween read and write address to the memories. Assumption is that read and write cannot happen simultaneously
  // JTAG axi master honor this condition
  assign mem_addr_i = s_axi_arvalid ?  s_axi_araddr : s_axi_awaddr;      
    
  always@(*) begin
     mem_addr = '0;
     mem_en   = '0;
     // selected memory access enable 
     mem_en[select_mem]  = mem_we | mem_rden; 
     
     // Individual memory address (one per memory)
     mem_addr[select_mem] = mem_addr_i[C_MEMORY_ADDR_WIDTH+AXI_UNUSED_LSB-1:AXI_UNUSED_LSB]; // 2'lsb are 0 fore axi -> map addrees 0 - 0 and 4 to 1 etc ..    
  end
  
  // Output register of the memory read data
	always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
	  if (~s_axi_aresetn) begin
	    axi_rdata_ff  <= 0;
	  end 
	  else if (mem_capture) begin    
	    // When there is a valid read address (s_axi_arvalid) with 
	    // acceptance of read address by the slave (axi_arready), 
	    // output the read dada 
	    axi_rdata_ff <= mem_rdata[select_mem];  // register read data	     
	  end
	end 
  assign s_axi_rdata	  = axi_rdata_ff;
  
  // -----------------------------------------------------------------------------
  // Output assignement
  // -----------------------------------------------------------------------------

  assign s_axi_awready	= axi_awready_ff;
	assign s_axi_wready	  = axi_wready_ff;
	assign s_axi_bresp  	= axi_bresp_ff;
	assign s_axi_bvalid	  = axi_bvalid_ff;
	assign s_axi_arready	= axi_arready_ff;
	assign s_axi_rresp  	= axi_rresp_ff;
	assign s_axi_rvalid	  = axi_rvalid_ff;

  // -----------------------------------------------------------------------------
  // Function definition
  // -----------------------------------------------------------------------------
  
	// function called clogb2 that returns an integer which has the
	// value of the ceiling of the log base 2

	 function integer clogb2 (input integer bit_depth);
		 begin
		 for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
			 bit_depth = bit_depth >> 1;
		 end
	 endfunction

endmodule
