// $KmKId: axis_exerciser.v,v 1.8 2011-06-29 17:08:16-04 kentd Exp $

module axis_exerciser
	#(
parameter C_FAMILY = "virtex4",
parameter C_S_AXI_ID_WIDTH = 1,
parameter C_S_AXI_DATA_WIDTH = 32,
parameter ZERO_INVALID = 1,
parameter C_FIRST_AXIS = 2,
parameter C_BASEADDR = 32'hffffffff,
parameter C_HIGHADDR = 0
	) (
input Clk,
input Rst_n,

input [C_S_AXI_ID_WIDTH-1:0] awid_s,
input [31:0] awaddr_s,
input	awvalid_s,
output	awready_s,
input	wlast_s,
input [C_S_AXI_DATA_WIDTH-1:0] wdata_s,
input [C_S_AXI_DATA_WIDTH/8-1:0] wstrb_s,
input	wvalid_s,
output	wready_s,
output [C_S_AXI_ID_WIDTH-1:0] bid_s,
output [1:0] bresp_s,
output	bvalid_s,
input	bready_s,

input [C_S_AXI_ID_WIDTH-1:0] arid_s,
input [31:0] araddr_s,
input	arvalid_s,
output	arready_s,
output [C_S_AXI_ID_WIDTH-1:0] rid_s,
output	rlast_s,
output [C_S_AXI_DATA_WIDTH-1:0] rdata_s,
output [1:0] rresp_s,
output	rvalid_s,
input	rready_s,

output	axis0_in_tready,
input	axis0_in_tvalid,
input	axis0_in_tlast,
input [31:0] axis0_in_tdata,

input	axis0_out_tready,
output	axis0_out_tvalid,
output	axis0_out_tlast,
output [31:0] axis0_out_tdata,

output	axis1_in_tready,
input	axis1_in_tvalid,
input	axis1_in_tlast,
input [31:0] axis1_in_tdata,

input	axis1_out_tready,
output	axis1_out_tvalid,
output	axis1_out_tlast,
output [31:0] axis1_out_tdata,

output	axis2_in_tready,
input	axis2_in_tvalid,
input	axis2_in_tlast,
input [31:0] axis2_in_tdata,

input	axis2_out_tready,
output	axis2_out_tvalid,
output	axis2_out_tlast,
output [31:0] axis2_out_tdata,

output	axis3_in_tready,
input	axis3_in_tvalid,
input	axis3_in_tlast,
input [31:0] axis3_in_tdata,

input	axis3_out_tready,
output	axis3_out_tvalid,
output	axis3_out_tlast,
output [31:0] axis3_out_tdata,

output [127:0] debug_out_127_0,
output [15:0] debug_out_ext_15_0,

input	global_test_en_l
);

wire [7:0] axis_ex_rev = 8'h01;

reg	Rst_ff;
reg	global_test_en_l_ff = 1'b1;
reg	in0_tvalid_notready_ff, in1_tvalid_notready_ff;
reg	in2_tvalid_notready_ff, in3_tvalid_notready_ff;

reg [31:0] reg1_ctl_ff = 32'h0;
reg [31:0] reg2_tdata_ff = 32'h0;
reg [31:0] reg3_status_ff = 32'h0;
reg [31:0] reg4_dbgcnt_ff = 32'h0;
reg [31:0] reg7_rdwr_ff = 32'h0;
wire	reg1_out0_tlast = reg1_ctl_ff[0];
wire	reg1_out1_tlast = reg1_ctl_ff[1];
wire	reg1_in0_tlast = reg1_ctl_ff[2];
wire	reg1_in1_tlast = reg1_ctl_ff[3];
wire	reg1_dbgcnt0_enable = reg1_ctl_ff[12];
wire	reg1_dbgcnt1_enable = reg1_ctl_ff[13];

wire	rst_l = ~Rst_ff;

wire	in0_tvalid_notready = axis0_in_tvalid && ~axis0_in_tready;
wire	in1_tvalid_notready = axis1_in_tvalid && ~axis1_in_tready;
wire	in2_tvalid_notready = axis2_in_tvalid && ~axis2_in_tready;
wire	in3_tvalid_notready = axis3_in_tvalid && ~axis3_in_tready;

always @(posedge Clk) begin
	Rst_ff <= ~Rst_n;
	global_test_en_l_ff <= global_test_en_l;
	in0_tvalid_notready_ff <= (rst_l) ? in0_tvalid_notready : 1'b0;
	in1_tvalid_notready_ff <= (rst_l) ? in1_tvalid_notready : 1'b0;
	in2_tvalid_notready_ff <= (rst_l) ? in2_tvalid_notready : 1'b0;
	in3_tvalid_notready_ff <= (rst_l) ? in3_tvalid_notready : 1'b0;
end

wire	bad_in1_data = axis1_in_tvalid &&
			(axis1_in_tdata[31:0] != (~reg2_tdata_ff[31:0]));
wire	bad_in1_tlast = axis1_in_tvalid &&
			(axis1_in_tlast != reg1_in1_tlast);
wire	bad_in0_data = axis0_in_tvalid &&
			(axis0_in_tdata[31:0] != reg2_tdata_ff[31:0]);
wire	bad_in0_tlast = axis0_in_tvalid &&
			(axis0_in_tlast != reg1_in0_tlast);
wire	bad_in0_tvalid = ~axis0_in_tvalid && in0_tvalid_notready_ff;
wire	bad_in1_tvalid = ~axis1_in_tvalid && in1_tvalid_notready_ff;
wire	bad_in2_tvalid = ~axis2_in_tvalid && in2_tvalid_notready_ff;
wire	bad_in3_tvalid = ~axis3_in_tvalid && in3_tvalid_notready_ff;

wire	dbgcnt0_pause, dbgcnt1_pause;

dbgcnt8 Dbgcnt0 (
	.Clk(Clk),
	.rst_l(rst_l),
	.glbl_en_in(~global_test_en_l_ff),
	.dbgcnt_in({ reg1_dbgcnt0_enable, reg4_dbgcnt_ff[15:0] }),
	.dbg_output(dbgcnt0_pause)
);

dbgcnt8 Dbgcnt1 (
	.Clk(Clk),
	.rst_l(rst_l),
	.glbl_en_in(~global_test_en_l_ff),
	.dbgcnt_in({ reg1_dbgcnt1_enable, reg4_dbgcnt_ff[31:16] }),
	.dbg_output(dbgcnt1_pause)
);

reg [31:0] rd_out_ff;
reg [31:0] wdatabus_ff;
reg [3:0] wstrb_ff;
reg [31:0] araddrbus_ff, awaddrbus_ff;
reg [C_S_AXI_ID_WIDTH-1:0] awid_ff, arid_ff;
reg	awvalid_s_ff, wvalid_s_ff, arvalid_s_ff;
reg	slv_rbusy_ff, slv_wbusy_ff;
reg	slv_aw_valid_ff, slv_w_valid_ff;

wire [31:0] araddrbus = araddr_s[31:0];
wire [31:0] awaddrbus = (slv_aw_valid_ff) ? awaddrbus_ff[31:0] : awaddr_s[31:0];
wire [C_S_AXI_ID_WIDTH-1:0] arid = (slv_rbusy_ff) ?
		arid_ff[C_S_AXI_ID_WIDTH-1:0] : arid_s[C_S_AXI_ID_WIDTH-1:0];
wire [C_S_AXI_ID_WIDTH-1:0] awid = (slv_aw_valid_ff) ?
		awid_ff[C_S_AXI_ID_WIDTH-1:0] : awid_s[C_S_AXI_ID_WIDTH-1:0];
wire [31:0] wdatabus = (slv_w_valid_ff) ? wdatabus_ff[31:0] : wdata_s[31:0];
wire [3:0] wstrb = (slv_w_valid_ff) ? wstrb_ff[3:0] : wstrb_s[3:0];

always @(posedge Clk) begin
	wdatabus_ff[31:0] <= (rst_l) ? wdatabus[31:0] : 32'h0;
	wstrb_ff[3:0] <= (rst_l) ? wstrb[3:0] : 4'h0;
	araddrbus_ff[31:0] <= (rst_l) ? araddrbus[31:0] : 32'h0;
	awaddrbus_ff[31:0] <= (rst_l) ? awaddrbus[31:0] : 32'h0;
	awid_ff[C_S_AXI_ID_WIDTH-1:0] <= (rst_l) ? awid[C_S_AXI_ID_WIDTH-1:0] :
									1'b0;
	arid_ff[C_S_AXI_ID_WIDTH-1:0] <= (rst_l) ? arid[C_S_AXI_ID_WIDTH-1:0] :
									1'b0;
	awvalid_s_ff <= (rst_l) ? awvalid_s : 1'b0;
	wvalid_s_ff <= (rst_l) ? wvalid_s : 1'b0;
	arvalid_s_ff <= (rst_l) ? arvalid_s : 1'b0;
end

reg	slv_arready_ff, slv_awready_ff, slv_wready_ff;
reg	slv_bvalid_ff, slv_rvalid_ff;
reg	slv_wr_req_ff;


wire	slv_rd_req = arvalid_s;
wire	slv_aw_valid = (awvalid_s && slv_awready_ff) ||
				(slv_aw_valid_ff && ~slv_wbusy_ff);
wire	slv_w_valid = (wvalid_s && slv_wready_ff) ||
				(slv_w_valid_ff && ~slv_wbusy_ff);
wire	slv_wr_req = slv_aw_valid && slv_w_valid;

wire	slv_rdone = rready_s && slv_rvalid_ff && slv_rbusy_ff;
wire	slv_wdone = bready_s && slv_bvalid_ff && slv_wbusy_ff;

wire	slv_rstart = ~slv_rbusy_ff && slv_rd_req;
wire	slv_wstart = ~slv_wbusy_ff && slv_wr_req;

wire	slv_rbusy = ~slv_rdone && (slv_rstart || slv_rbusy_ff);
wire	slv_wbusy = ~slv_wdone && (slv_wstart || slv_wbusy_ff);

wire	slv_arready = ~slv_rbusy;
wire	slv_awready = ~slv_aw_valid;
wire	slv_wready = ~slv_w_valid;


wire [7:0] slvr_reg_dec = (8'h1 << araddrbus[4:2]);
wire [7:0] slvw_reg_dec = (8'h1 << awaddrbus_ff[4:2]);
wire [7:0] slv_reg_wr = (slv_wr_req_ff) ? slvw_reg_dec[7:0] : 8'h0;

wire	slv_bvalid = slv_wbusy && slv_wr_req;
wire	slv_rvalid = slv_rbusy;

always @(posedge Clk) begin
	slv_wbusy_ff <= (rst_l) ? slv_wbusy : 1'b0;
	slv_rbusy_ff <= (rst_l) ? slv_rbusy : 1'b0;
	slv_aw_valid_ff <= (rst_l) ? slv_aw_valid : 1'b0;
	slv_w_valid_ff <= (rst_l) ? slv_w_valid : 1'b0;
	slv_awready_ff <= (rst_l) ? slv_awready : 1'b0;
	slv_wready_ff <= (rst_l) ? slv_wready : 1'b0;
	slv_arready_ff <= (rst_l) ? slv_arready : 1'b0;
	slv_bvalid_ff <= (rst_l) ? slv_bvalid : 1'b0;
	slv_rvalid_ff <= (rst_l) ? slv_rvalid : 1'b0;
	slv_wr_req_ff <= (rst_l) ? slv_wr_req : 1'b0;
end

wire	p2_overflow, p3_overflow;

wire [31:0] reg1_ctl = (slv_reg_wr[1]) ? wdatabus_ff[31:0] : reg1_ctl_ff[31:0];
wire [31:0] wr_mask = { { 8 { wstrb_ff[3] } }, { 8 { wstrb_ff[2] } },
			{ 8 { wstrb_ff[1] } }, { 8 { wstrb_ff[0] } } };

wire [31:0] reg2_tdata = (slv_reg_wr[2]) ? wdatabus_ff[31:0] :
						reg2_tdata_ff[31:0];

wire [31:0] reg3_status_new = reg3_status_ff[31:0] |
		{ 16'h0, 4'h0,
		2'b00, p3_overflow, p2_overflow,
		bad_in3_tvalid, bad_in2_tvalid, bad_in1_tvalid, bad_in0_tvalid,
		bad_in1_data, bad_in1_tlast, bad_in0_data, bad_in0_tlast };
wire [31:0] reg3_status = (slv_reg_wr[3]) ? wdatabus_ff[31:0] :
						reg3_status_new[31:0];

wire [31:0] reg4_dbgcnt = (slv_reg_wr[4]) ? wdatabus_ff[31:0] :
						reg4_dbgcnt_ff[31:0];

wire [31:0] reg7_rdwr = (slv_reg_wr[7]) ?
		((wdatabus_ff[31:0] & wr_mask[31:0]) |
					(reg7_rdwr_ff[31:0] & ~wr_mask[31:0])) :
							reg7_rdwr_ff[31:0];


always @(posedge Clk) begin
	reg1_ctl_ff[31:0] <= (rst_l) ? reg1_ctl[31:0] : 32'h0;
	reg2_tdata_ff[31:0] <= (rst_l) ? reg2_tdata[31:0] : 32'h0;
	reg3_status_ff[31:0] <= (rst_l) ? reg3_status[31:0] : 32'h0;
	reg4_dbgcnt_ff[31:0] <= (rst_l) ? reg4_dbgcnt[31:0] : 32'h0;
	reg7_rdwr_ff[31:0] <= (rst_l) ? reg7_rdwr[31:0] : 32'h0;
end

reg [127:0] debug128_ff;
reg [15:0] debug16_ff;
wire [3:0] p2_depth, p3_depth;

wire [3:0] reg0_first_axis = C_FIRST_AXIS;
wire [31:0] reg0_rd_value = { axis_ex_rev[7:0], reg0_first_axis[3:0], 4'h0,
				8'h0, p3_depth[3:0], p2_depth[3:0] };
wire [31:0] reg1_rd_value = { 16'h0, reg1_ctl_ff[15:0] };
wire [31:0] reg3_rd_value = { 20'h0, reg3_status_ff[11:0] };

wire [31:0] reg_early_out =
		((slvr_reg_dec[0]) ? reg0_rd_value[31:0] : 32'h0) |
		((slvr_reg_dec[1]) ? reg1_ctl_ff[31:0] : 32'h0) |
		((slvr_reg_dec[2]) ? reg2_tdata_ff[31:0] : 32'h0) |
		((slvr_reg_dec[3]) ? reg3_status_ff[31:0] : 32'h0) |
		((slvr_reg_dec[4]) ? reg4_dbgcnt_ff[31:0] : 32'h0) |
		((slvr_reg_dec[7]) ? reg7_rdwr_ff[31:0] : 32'h0);

wire [31:0] rd_out = (slv_rstart) ? reg_early_out[31:0] : rd_out_ff[31:0];

reg [3:0] axis0_tready_cnt_ff;

wire [3:0] axis0_tready_cnt = (axis0_in_tvalid) ?
					axis0_tready_cnt_ff[3:0] + 4'h1 : 4'h0;

wire	p2_rst_l = rst_l;
wire	p2_push = axis2_in_tvalid && axis2_in_tready;
wire	p2_block_notfull = 1'b0;
wire	p2_block_outvalid = 1'b0;
axis_fifo #(
	.ZERO_INVALID(ZERO_INVALID),
	.WIDTH(33)
) P2 (
	.Clk(Clk),
	.rst_l(p2_rst_l),
	.in_data({ axis2_in_tlast, axis2_in_tdata[31:0] }),
	.in_invalid_data({ reg1_out0_tlast, reg2_tdata_ff[31:0] }),
	.in_push(p2_push),
	.in_ready(axis2_out_tready),
	.in_block_notfull(p2_block_notfull),
	.in_block_outvalid(p2_block_notfull),
	.out_valid(axis2_out_tvalid),
	.out_notfull(axis2_in_tready),
	.out_overflow(p2_overflow),
	.out_depth(p2_depth[3:0]),
	.out_data({axis2_out_tlast, axis2_out_tdata[31:0] } )
);

wire	p3_rst_l = rst_l;
wire	p3_push = axis3_in_tvalid && axis3_in_tready;
wire	p3_block_notfull = dbgcnt0_pause;
wire	p3_block_outvalid = dbgcnt1_pause;
axis_fifo #(
	.ZERO_INVALID(ZERO_INVALID),
	.WIDTH(33)
) P3 (
	.Clk(Clk),
	.rst_l(p3_rst_l),
	.in_data({ axis3_in_tlast, axis3_in_tdata[31:0] }),
	.in_invalid_data({ reg1_out1_tlast, ~reg2_tdata_ff[31:0] }),
	.in_push(p3_push),
	.in_ready(axis3_out_tready),
	.in_block_notfull(p3_block_notfull),
	.in_block_outvalid(p3_block_notfull),
	.out_valid(axis3_out_tvalid),
	.out_notfull(axis3_in_tready),
	.out_overflow(p3_overflow),
	.out_depth(p3_depth[3:0]),
	.out_data({axis3_out_tlast, axis3_out_tdata[31:0] } )
);

wire [127:0] debug128 = { axis3_out_tdata[31:0], axis3_in_tdata[31:0],
			axis2_out_tdata[31:0], axis2_in_tdata[31:0] };
wire [15:0] debug16 = {
	axis3_out_tlast, axis3_in_tlast, axis2_out_tlast, axis2_in_tlast,
	axis3_out_tvalid, axis3_out_tready, axis3_in_tvalid, axis3_in_tready,
	axis2_out_tvalid, axis2_out_tready, axis2_in_tvalid, axis2_in_tready,
	axis1_out_tready, axis1_in_tvalid, axis0_in_tvalid, axis0_in_tready
};

always @(posedge Clk) begin
	rd_out_ff[31:0] <= rd_out[31:0];
	debug128_ff[127:0] <= debug128[127:0];
	debug16_ff[15:0] <= debug16[15:0];
	axis0_tready_cnt_ff[3:0] <= (rst_l) ? axis0_tready_cnt[3:0] : 4'h0;
end


assign	awready_s = slv_awready_ff;
assign	wready_s = slv_wready_ff;
assign	bid_s[C_S_AXI_ID_WIDTH-1:0] =
		(slv_bvalid_ff) ? awid_ff[C_S_AXI_ID_WIDTH-1:0] : 16'h0;
assign	bresp_s[1:0] = 2'b00;
assign	bvalid_s = slv_bvalid_ff;
assign	arready_s = slv_arready_ff;
assign	rid_s[C_S_AXI_ID_WIDTH-1:0] =
			(slv_rvalid_ff) ? arid_ff[C_S_AXI_ID_WIDTH-1:0] : 16'h0;
assign	rlast_s = 1'b1;
assign	rdata_s[C_S_AXI_DATA_WIDTH-1:0] =
		(slv_rvalid_ff) ? { 2 { rd_out_ff[31:0] } } : 64'h0;
assign	rresp_s[1:0] = 2'b0;
assign	rvalid_s = slv_rvalid_ff;

assign	axis0_in_tready = (axis0_tready_cnt_ff[3:0] == 4'hf);	// Delay ready
assign	axis0_out_tvalid = 1'b0;	// Never valid
assign	axis0_out_tlast = reg1_out0_tlast;
assign	axis0_out_tdata = reg2_tdata_ff[31:0];

assign	axis1_in_tready = 1'b1;		// Always ready
assign	axis1_out_tvalid = 1'b1;	// Always valid
assign	axis1_out_tlast = reg1_out1_tlast;
assign	axis1_out_tdata = ~reg2_tdata_ff[31:0];

assign	debug_out_127_0[127:0] = debug128_ff[127:0];
assign	debug_out_ext_15_0[15:0] = debug16_ff[15:0];

endmodule


module axis_fifo
	#(
parameter WIDTH = 33,
parameter HEADREG = 1,
parameter ZERO_INVALID = 1,
parameter FULL_LEVEL = 14,
parameter DEPTH = 16,
parameter DEPTHBITS = 4
	) (
input Clk,
input rst_l,

input [WIDTH-1:0] in_data,
input [WIDTH-1:0] in_invalid_data,
input	in_push,
input	in_ready,
input	in_block_notfull,
input	in_block_outvalid,
output	out_valid,
output	out_notfull,
output	out_overflow,
output [DEPTHBITS-1:0] out_depth,
output [WIDTH-1:0] out_data
);

reg [WIDTH-1:0] data_ff[DEPTH-1:0];
reg [WIDTH-1:0] headreg_ff;
reg [DEPTHBITS-1:0] in_ptr_ff, out_ptr_ff;
reg [DEPTHBITS:0] depth_ff;
reg	valid_ff, full_ff, notfull_ff, valid_filt_ff;

wire do_pop = in_ready && valid_filt_ff;
wire [DEPTHBITS-1:0] in_ptr = (in_push) ? in_ptr_ff[DEPTHBITS-1:0] + 'h1 :
						in_ptr_ff[DEPTHBITS-1:0];
wire [DEPTHBITS:0] depth =
		(in_push && ~do_pop) ? depth_ff[DEPTHBITS:0] + 'h1 :
		(~in_push && do_pop) ? depth_ff[DEPTHBITS:0] - 'h1 :
							depth_ff[DEPTHBITS:0];

wire	depth_was1 = (depth_ff[DEPTHBITS:0] == 'h1);
wire	valid = (depth[DEPTHBITS:0] != 'h0);
wire	full = (depth[DEPTHBITS:0] >= FULL_LEVEL) || in_block_notfull;
wire	notfull = ~full;

wire [WIDTH-1:0] raw_data = data_ff[out_ptr_ff[DEPTHBITS-1:0]];
wire [DEPTHBITS-1:0] out_ptr = (do_pop) ? out_ptr_ff[DEPTHBITS-1:0] + 'h1 :
						out_ptr_ff[DEPTHBITS-1:0];
wire [WIDTH-1:0] head_raw_data = (depth_was1) ? in_data[WIDTH-1:0] :
					raw_data[WIDTH-1:0];
wire [WIDTH-1:0] headreg = (!valid_ff && in_push) ? in_data[WIDTH-1:0] :
		(do_pop) ? head_raw_data[WIDTH-1:0] :
							headreg_ff[WIDTH-1:0];
wire	valid_filt = valid &&
			((valid_filt_ff && ~do_pop) || ~in_block_outvalid);

always @(posedge Clk) begin
	in_ptr_ff[DEPTHBITS-1:0] <= (rst_l) ? in_ptr[DEPTHBITS-1:0] : 'h0;
	out_ptr_ff[DEPTHBITS-1:0] <= (rst_l) ? out_ptr[DEPTHBITS-1:0] :
						((HEADREG) ? 'h1 : 'h0);
	depth_ff[DEPTHBITS:0] <= (rst_l) ? depth[DEPTHBITS:0] : 'h0;
	valid_ff <= (rst_l) ? valid : 1'b0;
	valid_filt_ff <= (rst_l) ? valid_filt : 1'b0;
	full_ff <= (rst_l) ? full : 1'b0;
	notfull_ff <= (rst_l) ? notfull : 1'b0;
	headreg_ff[WIDTH-1:0] <= (rst_l) ? headreg[WIDTH-1:0] : 'h0;
end

integer i;
always @(posedge Clk) begin
	if(in_push) begin
		data_ff[in_ptr_ff[DEPTHBITS-1:0]] <= in_data[WIDTH-1:0];
	end
end

wire [WIDTH-1:0] out_data_pre = (HEADREG) ? headreg_ff[WIDTH-1:0] :
							raw_data[WIDTH-1:0];
assign out_data[WIDTH-1:0] = (ZERO_INVALID && ~valid_filt_ff) ?
			in_invalid_data[WIDTH-1:0] : out_data_pre[WIDTH-1:0];
assign out_valid = valid_filt_ff;
assign out_notfull = notfull_ff;
assign out_overflow = depth_ff[DEPTHBITS];
assign out_depth = depth_ff[DEPTHBITS-1:0];

endmodule

module dbgcnt8 (
	input	Clk,
	input	rst_l,
	input [16:0] dbgcnt_in,
	input	glbl_en_in,
	output	dbg_output
);

reg [7:0] cntr_ff;
reg	state_ff;

wire [7:0] cmp_val = (state_ff) ? dbgcnt_in[15:8] : dbgcnt_in[7:0];
wire	count_hi = (cntr_ff[7:0] >= cmp_val[7:0]);
wire	enable = dbgcnt_in[16] && glbl_en_in;

wire	state_pre = (count_hi) ? ~state_ff : state_ff;
wire	state = (enable) ? state_pre : 1'b0;

wire [7:0] cntr_inced = cntr_ff[7:0] + 8'h1;
wire [7:0] cntr = (enable && ~count_hi) ? cntr_inced[7:0] : 8'h0;

always @(posedge Clk) begin
	cntr_ff[7:0] <= (rst_l) ? cntr[7:0] : 8'h0;
	state_ff <= (rst_l) ? state : 1'b0;
end

assign dbg_output = state_ff;

endmodule

