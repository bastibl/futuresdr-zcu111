
`timescale 1 ns / 1 ps
module axi_fci_exerciser
	#(
parameter C_FAMILY = "virtex4",
parameter C_IS_AXI4 = 1,
parameter C_BASEADDR = 32'hffffffff,
parameter C_HIGHADDR = 32'h00000000,
parameter C_S_AXI_ID_WIDTH = 6,
parameter C_S_AXI_DATA_WIDTH = 32,
parameter C_S_AXI_ADDR_WIDTH = 32
	) (

// S_AXI interface
input		clk,
input		axi_aresetn,

input [C_S_AXI_ID_WIDTH-1:0] s_awid,
input [31:0] s_awaddr,
input [7:0] s_awlen,
input [2:0] s_awsize,
input [1:0] s_awburst,
input	s_awvalid,
output	s_awready,
input	s_wlast,
input [C_S_AXI_DATA_WIDTH-1:0] s_wdata,
input [C_S_AXI_DATA_WIDTH/8-1:0] s_wstrb,
input	s_wvalid,
output	s_wready,
output [C_S_AXI_ID_WIDTH-1:0] s_bid,
output [1:0] s_bresp,
output	s_bvalid,
input	s_bready,

input [C_S_AXI_ID_WIDTH-1:0] s_arid,
input [31:0] s_araddr,
input [7:0] s_arlen,
input [2:0] s_arsize,
input [1:0] s_arburst,
input	s_arvalid,
output	s_arready,
output [C_S_AXI_ID_WIDTH-1:0] s_rid,
output	s_rlast,
output [C_S_AXI_DATA_WIDTH-1:0] s_rdata,
output [1:0] s_rresp,
output	s_rvalid,
input	s_rready,

// FCI interface
input	cack,
output	cvld,
input	tvld,
output	tack
);

reg	reset_ff;
always @(posedge clk) begin
	reset_ff <= ~axi_aresetn;
end
wire	rst_l = ~reset_ff;

//	Debug stuff.
wire[127:0]	dp_dbg0;
wire[15:0]	dp_dbg0_ext;
wire[127:0]	dp_dbg1;
wire[15:0]	dp_dbg1_ext;

// S_AXI handling
// Pick a read or write to do, if both are pending (using saxi_is_read_ff to
//  remember what the last type was, and do round-robin).  Latch address
//  into saxi_addr_ff.  Decode address to determine if it's tx_bram,
//  rx_bram, or local registers.
// Only one read or write to any destination can be pending at a time, so we
//  wait for the completion, using saxi_busy_ff to note that we are busy.
// Collect read data in saxi_rdata_ff.
reg	saxi_busy_ff, saxi_is_read_ff, saxi_do_arb_ff;
reg	saxi_arready_ff, saxi_awready_ff, saxi_bvalid_ff, saxi_rvalid_ff;
reg	saxi_do_arb_2ff, saxi_do_arb_3ff, saxi_do_arb_4ff, saxi_do_arb_5ff;
reg [C_S_AXI_ID_WIDTH-1:0] saxi_id_ff;
reg [31:0] saxi_addr_ff;
reg [C_S_AXI_DATA_WIDTH-1:0] saxi_wdata_ff;
reg [3:0] saxi_wstrb_ff;
reg [31:0] saxi_rdata_ff;
reg	saxi_islocreg_ff;
reg [3:0] reg_wstrb_ff;

wire	saxi_read_req = s_arvalid;
wire	saxi_write_req = s_awvalid && s_wvalid;

wire	saxi_do_arb = ~saxi_busy_ff && (saxi_read_req || saxi_write_req);
wire	saxi_is_read = (~saxi_do_arb) ? saxi_is_read_ff :
		(saxi_is_read_ff) ? saxi_read_req && ~saxi_write_req :
				saxi_read_req;

wire [31:0] saxi_addr = (saxi_busy_ff) ? saxi_addr_ff[31:0] :
		(saxi_is_read) ? s_araddr[31:0] : s_awaddr[31:0];
wire [C_S_AXI_ID_WIDTH-1:0] saxi_id =
		(saxi_busy_ff) ? saxi_id_ff[C_S_AXI_ID_WIDTH-1:0] :
		(saxi_is_read) ? s_arid[C_S_AXI_ID_WIDTH-1:0] :
				s_awid[C_S_AXI_ID_WIDTH-1:0];
wire [7:0] saxi_wshift =
	(C_S_AXI_DATA_WIDTH == 256) ? { s_awaddr[4:2], 5'b0 } :
	(C_S_AXI_DATA_WIDTH == 128) ? { 1'b0, s_awaddr[3:2], 5'b0 } :
	(C_S_AXI_DATA_WIDTH == 64) ? { 2'b00, s_awaddr[2], 5'b0 } :
								8'h00;
wire [31:0] saxi_wdata = (saxi_busy_ff) ? saxi_wdata_ff[31:0] :
		s_wdata[C_S_AXI_DATA_WIDTH-1:0] >> saxi_wshift[7:0];
wire [3:0] saxi_wstrb = (saxi_busy_ff) ? saxi_wstrb_ff[3:0] :
		s_wstrb[C_S_AXI_DATA_WIDTH/8-1:0] >> saxi_wshift[7:3];

wire [31:0] saxi_addr_mask0 = C_HIGHADDR ^ C_BASEADDR;
wire [27:0] saxi_addr_mask = 28'h000ffff | saxi_addr_mask0[27:0];
wire [27:0] saxi_addr_masked = saxi_addr_ff[27:0] & saxi_addr_mask[27:0];
wire	saxi_addr_islocreg = 1'b1; // (saxi_addr_masked[21:20] == 2'b00);
wire	saxi_islocreg = (saxi_do_arb_ff) ? saxi_addr_islocreg:saxi_islocreg_ff;

wire	saxi_can_complete = saxi_busy_ff && saxi_do_arb_3ff;

wire	saxi_bvalid_done = saxi_bvalid_ff && s_bready;
wire	saxi_bvalid = ~saxi_bvalid_done &&
		((saxi_can_complete && ~saxi_is_read_ff) || saxi_bvalid_ff);
wire	saxi_rvalid_done = saxi_rvalid_ff && s_rready;
wire	saxi_rvalid = ~saxi_rvalid_done &&
		((saxi_can_complete && saxi_is_read_ff) || saxi_rvalid_ff);

wire	saxi_busy = ~saxi_bvalid_done && ~saxi_rvalid_done &&
			(saxi_do_arb || saxi_busy_ff);

wire	saxi_arready = saxi_do_arb_ff && saxi_is_read_ff;
wire	saxi_awready = saxi_do_arb_ff && ~saxi_is_read_ff;

wire	reg_do_write = saxi_do_arb_3ff && saxi_islocreg_ff && ~saxi_is_read_ff;
wire[127:0]	reg_is_wr = reg_do_write ? (1'b1 << saxi_addr_ff[8:2]) : 128'h0;

// No time to understand write strobes, so not used-------------

wire [3:0] reg_wstrb = (reg_do_write) ? saxi_wstrb_ff[3:0] : 4'h0;
wire [1023:0] reg_write_we32 = { 992'h0,
		{ 8 { reg_wstrb_ff[3] } }, { 8 { reg_wstrb_ff[2] } },
		{ 8 { reg_wstrb_ff[1] } }, { 8 { reg_wstrb_ff[0] } } };
wire [9:0] reg_write_shift = { saxi_addr_ff[6:2], 5'b0 };
wire [1023:0] reg_write_we = reg_write_we32[1023:0] << reg_write_shift[9:0];
wire [319:0] reg_write_data = { 10 { saxi_wdata_ff[31:0] } };
reg[31:0]	reg_rd_raw_ff;
wire [31:0]	saxi_rdata = reg_rd_raw_ff[31:0];
//---------------------------------------------------------------

always @(posedge clk) begin
	saxi_addr_ff[31:0] <= (rst_l) ? saxi_addr[31:0] : 32'h0;
	saxi_id_ff[C_S_AXI_ID_WIDTH-1:0] <= (rst_l) ?
				saxi_id[C_S_AXI_ID_WIDTH-1:0] : 'h0;
	saxi_wdata_ff[31:0] <= (rst_l) ? saxi_wdata[31:0] : 32'h0;
	saxi_wstrb_ff[3:0] <= (rst_l) ? saxi_wstrb[3:0] : 4'h0;
	saxi_rdata_ff[31:0] <= (rst_l) ? saxi_rdata[31:0] : 32'h0;
	saxi_busy_ff <= (rst_l) ? saxi_busy : 1'b0;
	saxi_is_read_ff <= (rst_l) ? saxi_is_read : 1'b0;
	saxi_do_arb_ff <= (rst_l) ? saxi_do_arb : 1'b0;
	saxi_do_arb_2ff <= (rst_l) ? saxi_do_arb_ff : 1'b0;
	saxi_do_arb_3ff <= (rst_l) ? saxi_do_arb_2ff : 1'b0;
	saxi_do_arb_4ff <= (rst_l) ? saxi_do_arb_3ff : 1'b0;
	saxi_do_arb_5ff <= (rst_l) ? saxi_do_arb_4ff : 1'b0;
	saxi_arready_ff <= (rst_l) ? saxi_arready : 1'b0;
	saxi_awready_ff <= (rst_l) ? saxi_awready : 1'b0;
	saxi_rvalid_ff <= (rst_l) ? saxi_rvalid : 1'b0;
	saxi_bvalid_ff <= (rst_l) ? saxi_bvalid : 1'b0;
	saxi_islocreg_ff <= (rst_l) ? saxi_islocreg : 1'b0;
	reg_wstrb_ff[3:0] <= (rst_l) ? reg_wstrb[3:0] : 4'h0;
end

assign	s_awready = saxi_awready_ff;
assign	s_wready = saxi_awready_ff;
assign	s_bid[C_S_AXI_ID_WIDTH-1:0] = saxi_id_ff[C_S_AXI_ID_WIDTH-1:0];
assign	s_bresp[1:0] = 2'b0;
assign	s_bvalid = saxi_bvalid_ff;
assign	s_arready = saxi_arready_ff;
assign	s_rid[C_S_AXI_ID_WIDTH-1:0] = saxi_id_ff[C_S_AXI_ID_WIDTH-1:0];
assign	s_rlast = 1'b1;
assign	s_rdata[C_S_AXI_DATA_WIDTH-1:0] = { 8 { saxi_rdata_ff[31:0] } };
assign	s_rresp[1:0] = 2'b0;
assign	s_rvalid = saxi_rvalid_ff;

// Write registers
// init reg0_ctrl to 0
reg[31:0]	reg0_ctrl_ff;
// set wdata to reg0_ctrl
wire[31:0]	reg0_ctrl = reg_is_wr[0] ?
			saxi_wdata_ff[31:0] : reg0_ctrl_ff[31:0];

// set enable wire from reg0_ctrl[0]
wire reg0_enable = reg0_ctrl_ff[0];
reg[1:0] en_pipe;
always @(posedge clk) begin
	if(~rst_l) begin
		en_pipe <= 0;
	end
	else begin
		en_pipe[0] <= reg0_enable;
		en_pipe[1] <= en_pipe[0];
	end
end
wire reg0_enable_pulse;
assign reg0_enable_pulse = en_pipe[0] && ~en_pipe[1];

// init reg1_num_cvld
reg[31:0]	reg1_num_cvld_ff;
// set wdata to reg1_num_cvld
wire[31:0]	reg1_num_cvld = reg_is_wr[1] ? saxi_wdata_ff[31:0] : reg1_num_cvld_ff[31:0];

// init reg2_rand_flow
reg[31:0]	reg2_rand_flow_ff;
// set wdata to reg2_rand_flow_ff
wire[31:0]	reg2_rand_flow = reg_is_wr[2] ? saxi_wdata_ff[31:0] : reg2_rand_flow_ff[31:0];

// reg3 & reg4 are read only
wire[31:0]	reg3_rd_value;
wire[31:0]	reg4_rd_value;

// Read registers
wire[31:0]	reg_rd_raw  =
		((saxi_addr_ff[6:2] == 5'd00) ? reg0_ctrl_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd01) ? reg1_num_cvld_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd02) ? reg2_rand_flow_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd03) ? reg3_rd_value[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd04) ? reg4_rd_value[31:0] : 32'h0);

always @(posedge clk) begin
	reg_rd_raw_ff[31:0] <= (rst_l) ? reg_rd_raw[31:0] : 32'd0;
	reg0_ctrl_ff[31:0] <= (rst_l) ? reg0_ctrl[31:0] : 32'd0;
	reg1_num_cvld_ff[31:0] <= (rst_l) ? reg1_num_cvld[31:0] : 32'd0;
	reg2_rand_flow_ff[31:0] <= (rst_l) ? reg2_rand_flow[31:0] : 32'd0;
end

// port map
fci_exerciser#()
fci_ex0 (
	.clk_i(clk),
	.rst_i(rst_l),
	.en_i(reg0_enable),
	.en_pulse_i(reg0_enable_pulse),
	.cack_i(cack),
	.tvld_i(tvld),
	.num_cvld_i(reg1_num_cvld),
	.rand_flow_i(reg2_rand_flow),
	.cvld_o(cvld),
	.tack_o(tack),
	.cvld_cnt_o(reg3_rd_value),
	.tack_cnt_o(reg4_rd_value)
);

endmodule

// FCI Logic
module fci_exerciser(
                     input wire         clk_i,
                     input wire         rst_i,
                     input wire         en_i,
                     input wire         en_pulse_i,
                     input wire         cack_i,
                     input wire         tvld_i,
                     input wire [31:0]  num_cvld_i,
                     input wire [31:0]  rand_flow_i,
                     output wire        cvld_o,
                     output wire        tack_o,
                     output wire [31:0] cvld_cnt_o,
                     output wire [31:0] tack_cnt_o
                     );

   reg [31:0]                           cvld_so_far;
   reg [2:0]                            wait_val;
   reg [2:0]                            wait_cnt;
   reg [31:0]                           cvld_cnt_ff;
   reg [31:0]                           tack_cnt_ff;
   reg                                  cvld_f;


   always @(posedge clk_i) begin
      if(~rst_i) begin
         cvld_so_far <= 32'hffff_ffff;
      end
      else if (en_pulse_i && en_i) begin
         cvld_so_far <= 32'h0;
      end
      else if (en_i && cack_i && cvld_f) begin
         cvld_so_far <= cvld_so_far + 1;
      end
   end
   
   always @(posedge clk_i) begin
      if(~rst_i) begin
         cvld_f <=0;
      end 
      else if (en_pulse_i && en_i) begin
         cvld_f <=0;
      end
      else if ((cvld_so_far < num_cvld_i) && en_i && cack_i && wait_is_zero && ~cvld_f) begin
         cvld_f <= 1'b1;
      end
      else begin
         cvld_f <=0;
      end
   end
   
   always @(posedge clk_i) begin
      if(~rst_i) begin
         wait_val[2:0] <= 3'b0;
      end 
      else if (en_pulse_i && en_i) begin
         wait_val[2:0] <= rand_flow_i[2:0];
      end
      else if (cack_i && wait_is_zero && cvld_f) begin
         wait_val[2:0] <= rand_flow_i >> 2'b11;
      end 
   end

   always @(posedge clk_i) begin
      if(~rst_i) begin
         wait_cnt <= 3'b0;
      end 
      else if ((en_pulse_i && en_i) || (wait_is_zero && cvld_f && cack_i)) begin
         wait_cnt <= wait_val;
      end
      else if (en_i && (wait_cnt != 3'b0)) begin 
         wait_cnt <= wait_cnt - 1;
      end 
   end

   assign wait_is_zero = (wait_cnt == 0);
   assign cvld_o =  cvld_f;
   
   assign tack_o = 1'b1;

   // Accumulate total number of credits issued for error checking
   always @(posedge clk_i) begin
      if(~rst_i) begin
         cvld_cnt_ff[31:0] <= 32'h0;
      end else if(en_i && en_pulse_i) begin
         cvld_cnt_ff[31:0] <= 32'h0;
      end else if(cvld_o && cack_i) begin
         cvld_cnt_ff[31:0] <= cvld_cnt_ff[31:0] + 1;
      end
   end

   assign cvld_cnt_o = cvld_cnt_ff;

   // Accumulate total number of tack's issued for error checking
   always @(posedge clk_i) begin
      if(~rst_i) begin
         tack_cnt_ff[31:0] <= 32'h0;
      end else if(en_i && en_pulse_i) begin
         tack_cnt_ff[31:0] <= 32'h0;
      end else if(tvld_i && tack_o) begin
         tack_cnt_ff[31:0] <= tack_cnt_ff[31:0] + 1;
      end
   end

   assign tack_cnt_o = tack_cnt_ff;

endmodule
