// $Id: $

module axis_cntr (
	input Clk,
	input Rst,

	output	axis0_in_tready,
	input [31:0] axis0_in_tdata,
	input	axis0_in_tvalid,
	input	axis0_in_tlast,

	output	axis0_out_tvalid,
	output [31:0] axis0_out_tdata,
	output	axis0_out_tlast,
	input	axis0_out_tready,

	output	axis1_in_tready,
	input [31:0] axis1_in_tdata,
	input	axis1_in_tvalid,
	input	axis1_in_tlast,

	output	axis1_out_tvalid,
	output [31:0] axis1_out_tdata,
	output	axis1_out_tlast,
	input	axis1_out_tready,

	input [63:0] cntr_in,

	output [127:0] debug_out_127_0,
	output [15:0] debug_out_ext_15_0,
	input [31:0] mux_ctl
);

parameter C_EXT_RESET_HIGH = 1;
parameter C_USE_EXTERNAL_CNTR = 0;

reg	reset_ff;
reg [127:0] axis_dbg_ff;
reg [15:0] axis_ctl_ff;
reg [63:0] cntr_val_ff;

wire	rst_l = ~reset_ff;
wire	reset = (C_EXT_RESET_HIGH) ? Rst : ~Rst;

wire [15:0] axis_ctl = {
	1'b0, axis1_out_tlast, axis1_out_tvalid, axis1_out_tready,	//15:12
	1'b0, axis1_in_tlast, axis1_in_tvalid, axis1_in_tready,		//11:8
	1'b0, axis0_out_tlast, axis0_out_tvalid, axis0_out_tready,	//7:4
	1'b0, axis0_in_tlast, axis0_in_tvalid, axis0_in_tready		//3:0
};


wire [127:0] axis_dbg = {
	axis1_out_tdata[31:0],
	axis1_in_tdata[31:0],
	axis0_out_tdata[31:0],
	axis0_in_tdata[31:0]
};

wire [63:0] cntr_val_inced = cntr_val_ff[63:0] + 64'h1;
wire [63:0] cntr_val = (C_USE_EXTERNAL_CNTR) ? cntr_in[63:0] :
							cntr_val_inced[63:0];

assign axis0_out_tdata[31:0] = cntr_val_ff[31:0];
assign axis0_out_tlast = 1'b0;
assign axis0_out_tvalid = 1'b1;
assign axis0_in_tready = 1'b1;

assign axis1_out_tdata[31:0] = cntr_val_ff[63:32];
assign axis1_out_tlast = 1'b0;
assign axis1_out_tvalid = 1'b1;
assign axis1_in_tready = 1'b1;

always @(posedge Clk) begin
	reset_ff <= reset;
	cntr_val_ff[63:0] <= (rst_l) ? cntr_val[63:0] : 64'h0;
	axis_dbg_ff[127:0] <= axis_dbg[127:0];
	axis_ctl_ff[15:0] <= axis_ctl[15:0];
end

assign debug_out_127_0[127:0] = axis_dbg_ff[127:0];
assign debug_out_ext_15_0[15:0] = axis_ctl_ff[15:0];

endmodule

