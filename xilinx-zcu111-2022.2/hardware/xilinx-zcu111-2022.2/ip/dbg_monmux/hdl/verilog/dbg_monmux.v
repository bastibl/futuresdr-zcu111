// $Id: dbg_monmux.v,v 1.1 2008/02/12 03:13:08 jues Exp $

module dbg_monmux
	#(
parameter C_MUX_BIT = 14
	) (
	input Clk,
	input Rst,

	input [127:0] debug_in0_127_0,
	input [15:0] debug_in0_ext_15_0,
	input [127:0] debug_in1_127_0,
	input [15:0] debug_in1_ext_15_0,
	input [127:0] debug_in2_127_0,
	input [15:0] debug_in2_ext_15_0,
	input [127:0] debug_in3_127_0,
	input [15:0] debug_in3_ext_15_0,

	output [127:0] debug_out_127_0,
	output [15:0] debug_out_ext_15_0,
	input [31:0] mux_ctl
);


reg [127:0] dbg_bus_ff;
reg [15:0] dbg_ext_ff;
reg [1:0] dbg_sel_ff;
reg	Rst_ff;


wire [127:0] dbg_bus =
	((dbg_sel_ff[1:0] == 2'b00) ? debug_in0_127_0[127:0] : 128'h0) |
	((dbg_sel_ff[1:0] == 2'b01) ? debug_in1_127_0[127:0] : 128'h0) |
	((dbg_sel_ff[1:0] == 2'b10) ? debug_in2_127_0[127:0] : 128'h0) |
	((dbg_sel_ff[1:0] == 2'b11) ? debug_in3_127_0[127:0] : 128'h0);

wire [15:0] dbg_ext =
	((dbg_sel_ff[1:0] == 2'b00) ? debug_in0_ext_15_0[15:0] : 16'h0) |
	((dbg_sel_ff[1:0] == 2'b01) ? debug_in1_ext_15_0[15:0] : 16'h0) |
	((dbg_sel_ff[1:0] == 2'b10) ? debug_in2_ext_15_0[15:0] : 16'h0) |
	((dbg_sel_ff[1:0] == 2'b11) ? debug_in3_ext_15_0[15:0] : 16'h0);

wire [1:0] dbg_sel = (mux_ctl[31:0] >> C_MUX_BIT);

wire	rst_l = ~Rst_ff;

always @(posedge Clk) begin
	Rst_ff <= Rst;
	dbg_bus_ff[127:0] <= dbg_bus[127:0];
	dbg_ext_ff[15:0] <= dbg_ext[15:0];
	dbg_sel_ff <= dbg_sel;
end

assign debug_out_127_0[127:0] = dbg_bus_ff[127:0];
assign debug_out_ext_15_0[15:0] = dbg_ext_ff[15:0];

endmodule

