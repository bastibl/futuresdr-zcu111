//
// Peripheral Request Interface exerciser for ARM PL330 DMAC.
//

// FIXME: narrow 32-bit signals that don't need to be that wide.

`timescale 1ns/1ns
module cmd_mem(
	    input CLK,
	    input WREN,
	    input[2:0] WRADDR,
	    input[1:0] RDADDR,
	    input[31:0] DI,
	    output[63:0] DO
);

reg [31:0] data0_ff[3:0];
reg [31:0] data1_ff[3:0];

assign DO[63:0] = {data1_ff[RDADDR], data0_ff[RDADDR]};

wire    wren0 = WREN && ~WRADDR[0];
wire    wren1 = WREN && WRADDR[0];
always @(posedge CLK) begin
        if(wren0) begin
                data0_ff[WRADDR[2:1]] <= DI[31:0];
        end
        if(wren1) begin
                data1_ff[WRADDR[2:1]] <= DI[31:0];
        end
end
endmodule

module pri_exerciser
	(
	 input aclk,
	 input rst_n,
	 // PRI outputs
	 output daready,
	 output drlast,
	 output [1:0] drtype,
	 output drvalid,
	 // PRI inputs
	 input [1:0] datype,
	 input davalid,
	 input drready,
	 // APB outputs
	 output [31:0] prdata,
	 output pready,
	 output pslverr,
	 // APB inputs
	 input [31:0] paddr,
	 input pwrite,
	 input psel,
	 input penable,
	 input [31:0] pwdata

	);

// PRI d[ar]type values
parameter TYPE_SINGLE = 2'b00;
parameter TYPE_BURST = 2'b01;
parameter TYPE_FLUSH = 2'b10;
parameter TYPE_INVALID = 2'b11;

reg [3:0] gap_count;

reg rst_n_ff = 1'b1;

always @(posedge aclk)
	rst_n_ff <= rst_n;

//------------------------------------------------------------------------------
// Control registers
//------------------------------------------------------------------------------

// Reg 0, addr 0x0000: status/control (R/W)
reg r0_enable = 1'b0;
reg r0_done = 1'b0;
wire [31:0] reg0_rd = { 30'h0, r0_done, r0_enable };

// Reg 1, addr 0x0004: errors (R/W)
reg [2:0] r1_err = 3'h0;
wire [31:0] reg1_rd = {29'h0, r1_err };

// Reg 2, addr 0x0008: revision (RO)
wire [7:0] r2_rev = 8'h5;
wire [31:0] reg2_rd = { 24'h0, r2_rev };

// Reg 3, addr 0x000C: txn count (R/W)
reg [4:0] r3_txns = 5'h0;
wire [31:0] reg3_rd = { 27'h0, r3_txns };

//------------------------------------------------------------------------------
// APB interface
//------------------------------------------------------------------------------
reg [31:0] prdata_ff = 32'h0;
reg pslverr_ff = 1'b0;

assign prdata = next_prdata;//prdata_ff;
assign pready = 1'b1;
assign pslverr = pslverr_ff;

reg [31:0] paddr_ff = 32'h0;
reg pwrite_ff = 1'b0;
reg psel_ff = 1'b0;
reg penable_ff = 1'b0;
reg [31:0] pwdata_ff = 32'h0;

always @(posedge aclk) begin
	paddr_ff <= rst_n_ff ? paddr : 32'h0;
	pwrite_ff <= rst_n_ff ? pwrite : 1'b0;
	psel_ff <= rst_n_ff ? psel : 1'b0;
	penable_ff <= rst_n_ff ? penable : 1'b0;
	pwdata_ff <= rst_n_ff ? pwdata : 1'b0;
end

// using "raw" (non-registered) penable to finish simultaneously with
// end of APB write transaction
wire apb_write = psel_ff && pwrite_ff && penable;
wire apb_read = psel_ff && !pwrite_ff && penable;

wire [15:0] apb_addr_dec = (16'h1 << paddr_ff[5:2]) & 
				{16{paddr_ff[11:6]==6'h0}};

wire [15:0] writereg = {16{apb_write}} & apb_addr_dec;
wire [15:0] readreg = {16{apb_read}} & apb_addr_dec;

// 0x0100-0x017F is command memory space
wire write_cmdmem = apb_write && paddr_ff[11:7] == 5'h2;
wire read_cmdmem = apb_read && paddr_ff[11:7] == 5'h2;

// reset error flags that get 1s written to them in register 1
wire [31:0] err_rst = {32{rst_n_ff}} & ~(writereg[1] ? pwdata_ff : 32'h0);

wire apb_unwriteable = ({ writereg[0], writereg[1], writereg[3], write_cmdmem } == 0)
			&& apb_write;
// writing txn count only allowed when enabled == 0
wire bad_r3_write = writereg[3] && r0_enable;

// the '|| writereg[2]' should be redundant here, but just to be sure...
wire apb_bad_write = apb_unwriteable || bad_r3_write || writereg[2];
wire apb_bad_read = 1'b0; // FIXME: fill this in.

wire next_pslverr = apb_bad_write || apb_bad_read;

wire [31:0] cmd_mem_apbout; // goes with 'internal control' section below

wire [31:0] next_prdata =
			(readreg[0] ? reg0_rd : 32'h0) |
			(readreg[1] ? reg1_rd : 32'h0) |
			(readreg[2] ? reg2_rd : 32'h0) |
			(readreg[3] ? reg3_rd : 32'h0) |
			(read_cmdmem ? cmd_mem_apbout[31:0] : 32'h0);

wire [15:0] writereg_ok = writereg & {16{!apb_bad_write}};

wire txn_done, fetch_next;

wire r0_enable_next = writereg_ok[0] ? pwdata_ff[0] : r0_enable;
always @(posedge aclk) begin
		r0_enable <= rst_n_ff ? r0_enable_next : 1'b0;
end

always @(posedge aclk) begin
	if(rst_n_ff == 1'b0) begin
		r0_done = 1'b0;
	end
	else if(writereg_ok[0]) begin 
		r0_done = pwdata_ff[1];
	end
	else if (txn_done && (!fetch_next)) begin
		r0_done = 1'b1;
	end	
end

// APB outputs
always @(posedge aclk) begin
	prdata_ff <= rst_n_ff ? next_prdata : 32'h0;
	pslverr_ff <= rst_n_ff ? next_pslverr : 32'h0;
end

//------------------------------------------------------------------------------
// Internal control
//------------------------------------------------------------------------------

reg [1:0] cmd_pc = 2'h0;
wire [63:0] cmd_mem_dout;

// "A" ports R/W for APB access, "B" ports R/O for cmd fetch



cmd_mem  cmd_memory(
	    .CLK(aclk),
	    .WREN(write_cmdmem),
	    .WRADDR(paddr_ff[4:2]),
	    .RDADDR(r0_enable ? cmd_pc: paddr_ff[4:3]),
	    .DI({pwdata_ff}),
	    .DO(cmd_mem_dout[63:0])
);
assign cmd_mem_apbout = paddr_ff[2] ? cmd_mem_dout[63:32] : cmd_mem_dout[31:0];

wire flushing;
reg [63:0] cur_cmd = 64'h0;
reg running_cmds;
wire start_cmds = r0_enable && (~running_cmds);
always @(posedge aclk) begin
	if(rst_n_ff == 1'b0) begin
		running_cmds <= 1'b0;
	end
	else  begin
		running_cmds <= r0_enable;
	end
end

assign fetch_next = start_cmds || (txn_done && r0_enable && (r3_txns != 5'h0));


always @(posedge aclk) begin
	if(rst_n_ff == 1'b0) begin
		r3_txns <= 5'h0;
	end
	else if (writereg_ok[3]) begin
		r3_txns <= pwdata_ff[4:0];
	end
	else if (fetch_next) begin
		r3_txns <= r3_txns - 1;
	end
end

always @(posedge aclk) begin
	if(rst_n_ff == 1'b0 || (r0_enable ==0)) begin
		cur_cmd <= 64'h0;
		cmd_pc <= 2'h0;
	end
	else if (fetch_next) begin
		cur_cmd <= cmd_mem_dout;
		cmd_pc <= cmd_pc + 1;
	end
end

//------------------------------------------------------------------------------
// PRI
//------------------------------------------------------------------------------



wire periph_ctrl = cur_cmd[0];
wire dma_ctrl = ~ periph_ctrl;
wire [4:0] xfers_per_burst = cur_cmd[7:3]; // rev3 only: counts from 1, the + 1 done by software to help meeting timing here
wire [11:0] data_to_txfr = cur_cmd[19:8];
wire [3:0] pause_len = cur_cmd[35:32];
wire [15:0] bs_pat = cur_cmd[51:36]; // 1: burst, 0: single
wire [3:0] bs_pat_len = cur_cmd[55:52];

assign flushing = davalid && (datype == TYPE_FLUSH);
reg flush_not_acked;
wire flush_ack;

always @(posedge aclk) begin
	if(rst_n_ff == 0 || flush_ack) begin
		flush_not_acked <= 1'b0;
	end else if (flushing) begin
		flush_not_acked <= 1'b1;
	end else begin
		flush_not_acked <= flush_not_acked;
	end
end

assign flush_ack = flush_not_acked && (gap_count == 0) && drready;



// calculates how many data had been trasfered and acknoledged
wire [4:0] burst_acked = (datype ==TYPE_BURST)? xfers_per_burst : 5'h00;
wire [4:0] single_acked = (datype ==TYPE_SINGLE)? 5'h01 : 5'h00;
wire [4:0] data_acked_this_clk= davalid? (burst_acked + single_acked ) : 5'h00;


reg [11:0] data_acked;
always @(posedge aclk) begin
	data_acked <= (rst_n_ff == 0 || fetch_next || (~r0_enable)) ? 32'h0 : data_acked + data_acked_this_clk;
end


// calculate how many data had been requested -- peripheral length control:
wire [4:0] burst_reqed = (drtype ==TYPE_BURST)? xfers_per_burst : 5'h00;
wire [4:0] single_reqed = (drtype ==TYPE_SINGLE)? 5'h01 : 5'h00;
wire [4:0] data_reqed_this_clk = (drvalid && drready)? (burst_reqed + single_reqed ) :5'h00;



reg [11:0] data_reqed;
always @(posedge aclk) begin
	data_reqed <= (rst_n_ff == 0 || fetch_next || flushing || flush_not_acked) ? 12'h0 : data_reqed + data_reqed_this_clk;
end

// amount of time to wait between requests
//reg [3:0] gap_count;
always @(posedge aclk) begin
	if (rst_n_ff == 1'b0) begin
		gap_count <= 0;
	end
	else if (fetch_next) begin
		gap_count <= cmd_mem_dout[35:32];
	end
	else if (drvalid) begin
		gap_count <= cur_cmd[35:32];
	end
	else if(gap_count != 4'h0) begin
		gap_count <= gap_count-1;
	end
end

// register to remember the position on burst/single pattern
reg [3:0] bs_pointer;
always @(posedge aclk) begin
	if (rst_n_ff == 1'b0) begin
		bs_pointer <= 0;
	end
	else if (fetch_next) begin
		bs_pointer <= 4'h0;
	end
	else if(bs_pointer == bs_pat_len && (~drtype[1])) begin
		bs_pointer <= 4'h0;
	end
	else if (data_reqed_this_clk != 5'h00) begin
		bs_pointer <= bs_pointer + 1;
	end
end

wire bs_cur_pat = bs_pat[bs_pointer];

reg drready_reged, drvalid_stay;


// determine drvalid
wire drvalid_periph_ctrl = (gap_count == 0) && (data_reqed < data_to_txfr);
wire drvalid_dma_ctrl = (gap_count == 0) && (data_acked < data_to_txfr);
assign drvalid = flush_ack || ((periph_ctrl ? drvalid_periph_ctrl : drvalid_dma_ctrl) && drready_reged) || drvalid_stay;




//determine drtype
wire [1:0] drtype_periph_ctrl = ((data_to_txfr - data_reqed) > xfers_per_burst) ? bs_cur_pat : TYPE_SINGLE;
wire [1:0] drtype_dma_ctrl = bs_cur_pat;
assign drtype = flush_ack? TYPE_FLUSH : (periph_ctrl ? drtype_periph_ctrl : drtype_dma_ctrl);




always @(posedge aclk) begin
	drready_reged <= drready;
end

always @(posedge aclk) begin
	if (rst_n_ff == 1'b0 || drready == 1'b1) begin
		drvalid_stay <= 1'b0;
	end
	else if (drready_reged && (!drready) && drvalid) begin
		drvalid_stay <= 1'b1;
	end
end


assign daready = 1;

// determine drlast:
//original log before timing changes
//wire [4:0] data_reqed_this_clk_maybe = (drvalid)? (burst_reqed + single_reqed ) :5'h00;
//wire [4:0] data_reqed_this_clk_maybe = (drvalid &&(~drtype[1]))? (drtype[0]? xfers_per_burst : 5'h01 )  :5'h00;
//assign drlast = periph_ctrl && ((data_reqed_this_clk_maybe + data_reqed) == data_to_txfr) && drvalid;
wire drlast1 = ((xfers_per_burst  + data_reqed) == data_to_txfr);
wire drlast2 = ((5'h01  + data_reqed) == data_to_txfr);
assign drlast = ((drtype ==TYPE_BURST)? drlast1 : drlast2)  && periph_ctrl && drvalid;


//original logic before timing changes
assign txn_done = data_acked == data_to_txfr;



// errors:
wire ack_data_too_much = data_acked > data_to_txfr;

always @(posedge aclk) begin
	if (rst_n_ff == 1'b0) begin
		r1_err <= 3'b000;
	end
	else if (ack_data_too_much) begin
		r1_err <= r1_err | 3'b001;
	end
end


endmodule


