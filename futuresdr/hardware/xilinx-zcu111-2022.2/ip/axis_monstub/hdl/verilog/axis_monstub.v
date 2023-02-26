// $KmKId: axis_monstub.v,v 1.16 2010-10-05 19:10:37-04 kentd Exp $


module axis_monstub
	#(
parameter C_FAMILY = "virtex4",
parameter C_USE_DBG2 = 0,
parameter C_REGISTER_AXIS = 0
	) (
input Clk,
input Rst_n,

input [31:0] axis0_tdata,
input [3:0] axis0_tstrb,
input	axis0_tvalid,
input	axis0_tready,
input	axis0_tlast,

input [31:0] axis1_tdata,
input [3:0] axis1_tstrb,
input	axis1_tvalid,
input	axis1_tready,
input	axis1_tlast,

input [31:0] axis2_tdata,
input [3:0] axis2_tstrb,
input	axis2_tvalid,
input	axis2_tready,
input	axis2_tlast,

input [31:0] axis3_tdata,
input [3:0] axis3_tstrb,
input	axis3_tvalid,
input	axis3_tready,
input	axis3_tlast,

input [31:0] gmii_dbg_in_31_0,
input [31:0] dbg2_in_31_0,

output [127:0] debug_out_a_127_0,
output [15:0] debug_out_a_ext_15_0,
output [127:0] debug_out_b_127_0
);

reg	Rst_n_ff;

wire	rst_l = Rst_n_ff;

always @(posedge Clk) begin
	Rst_n_ff <= Rst_n;
end

reg [127:0] axis_bus_la_ff, axis_bus_b_ff;
reg [15:0] axis_bus_ext_ff;

// assume axis_0 and axis_2 are the special control buses, then axis_1 and
//  axis_3 are payload data
wire [31:0] data0 = (axis0_tready && axis0_tvalid) ? axis0_tdata[31:0] :
				axis1_tdata[31:0];

wire [31:0] data2 = (axis2_tready && axis2_tvalid) ? axis2_tdata[31:0] :
				axis3_tdata[31:0];

wire [31:0] data1 = {
	axis0_tstrb[3:0], 1'b0, axis0_tlast, axis0_tvalid, axis0_tready,
	axis1_tstrb[3:0], 1'b0, axis1_tlast, axis1_tvalid, axis1_tready,
	axis2_tstrb[3:0], 1'b0, axis2_tlast, axis2_tvalid, axis2_tready,
	axis3_tstrb[3:0], 1'b0, axis3_tlast, axis3_tvalid, axis3_tready
};

wire [11:0] data1_packed = {
	axis0_tlast, axis1_tlast, axis2_tlast, axis3_tlast,
	axis0_tvalid, axis0_tready, axis1_tvalid, axis1_tready,
	axis2_tvalid, axis2_tready, axis3_tvalid, axis3_tready
};

wire [31:0] data3 = gmii_dbg_in_31_0[31:0];

wire [127:0] axis_bus_la = { data0[31:0], data1[31:0],
		(C_USE_DBG2) ? dbg2_in_31_0[31:0] : data2[31:0],
							data3[31:0] };

wire [15:0] axis_bus_ext = axis2_tdata[15:0];

wire [127:0] axis_bus_b = { data0[31:0], data2[31:0], data1_packed[11:0],
						data3[19:0], 32'h0 };

always @(posedge Clk) begin
	axis_bus_la_ff[127:0] <= axis_bus_la[127:0];
	axis_bus_b_ff[127:0] <= axis_bus_b[127:0];
	axis_bus_ext_ff[15:0] <= axis_bus_ext[15:0];
end

assign debug_out_a_127_0[127:0] = (C_REGISTER_AXIS) ? axis_bus_la_ff[127:0] :
							axis_bus_la[127:0];
assign debug_out_a_ext_15_0[15:0] = (C_REGISTER_AXIS) ? axis_bus_ext_ff[15:0] :
							axis_bus_ext[15:0];
assign debug_out_b_127_0[127:0] = (C_REGISTER_AXIS) ? axis_bus_b_ff[127:0] :
							axis_bus_b[127:0];

endmodule

