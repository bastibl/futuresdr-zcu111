// $KmKId: axi_monitor.v,v 1.54 2017-09-27 20:26:05+00 kentd Exp $
// Copyright 2009-2017, ProValid, LLC
// ProValid Confidential Information

//`define AXIMON_SIMULATION

module axi_monitor
	#(
parameter C_FAMILY = "virtex5",
parameter C_TRC_FILE = "aximon.trc",
parameter C_S_AXI_ID_WIDTH = 1,
parameter C_S_AXI_DATA_WIDTH = 32,
parameter C_REG_LA_INPS = 1,
parameter C_REG_LA_ADDR = 0,
parameter C_LA_NO_WRITE = 1,
parameter C_REG_BRAM_OUT = 1,
parameter C_REGISTER_AXI = 0,
parameter C_BASEADDR = 32'hffffffff,
parameter C_HIGHADDR = 0,
parameter C_INVERT_PARPORT = 0,
parameter C_DISABLE_LA = 0,
parameter C_ATOMIC_REG11 = 0,
parameter C_ATOMIC_REG12 = 0,
parameter C_WAKE_REG11 = 0,
parameter C_INTR_REG12 = 0,
parameter C_DEPTH_MUL = 4,
parameter C_REG0_RESET_VAL = 32'h0,
parameter C_REG6_RESET_VAL = 32'h0,
parameter C_SYSTEM_TYPE = 32'h40000000
	) (
input Clk,
input LA_Clk,
input Rst_n,

input [C_S_AXI_ID_WIDTH-1:0] s_awid,
input [31:0] s_awaddr,
input [7:0] s_awlen,
input [3:0] s_awlen3,
input [2:0] s_awsize,
input [1:0] s_awburst,
input [1:0] s_awlock,
input	s_awlock1,
input [3:0] s_awcache,
input [2:0] s_awprot,
input	s_awvalid,
output	s_awready,
input [C_S_AXI_ID_WIDTH-1:0] s_wid,
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
input [3:0] s_arlen3,
input [2:0] s_arsize,
input [1:0] s_arburst,
input [1:0] s_arlock,
input	s_arlock1,
input [3:0] s_arcache,
input [2:0] s_arprot,
input	s_arvalid,
output	s_arready,
output [C_S_AXI_ID_WIDTH-1:0] s_rid,
output	s_rlast,
output [C_S_AXI_DATA_WIDTH-1:0] s_rdata,
output [1:0] s_rresp,
output	s_rvalid,
input	s_rready,

input [127:0] debug_ina1_127_0,
input [127:0] debug_ina2_127_0,
input [127:0] debug_ina3_127_0,
input [15:0] debug_ina1_ext_15_0,
input [127:0] debug_inb0_127_0,
input [127:0] debug_inb1_127_0,
input [127:0] debug_inb2_127_0,
input [127:0] debug_inb3_127_0,
input [15:0] debug_inb0_ext_15_0,
input [15:0] debug_inb1_ext_15_0,
input [15:0] debug_inb2_ext_15_0,
input [15:0] debug_inb3_ext_15_0,
input [127:0] debug_inc0_127_0,
input [127:0] debug_inc1_127_0,
input [127:0] debug_inc2_127_0,
input [127:0] debug_inc3_127_0,
input [15:0] debug_inc0_ext_15_0,
input [15:0] debug_inc1_ext_15_0,
input [15:0] debug_inc2_ext_15_0,
input [15:0] debug_inc3_ext_15_0,
input [127:0] debug_ind0_127_0,
input [127:0] debug_ind1_127_0,
input [127:0] debug_ind2_127_0,
input [127:0] debug_ind3_127_0,
input [15:0] debug_ind0_ext_15_0,
input [15:0] debug_ind1_ext_15_0,
input [15:0] debug_ind2_ext_15_0,
input [15:0] debug_ind3_ext_15_0,

output [7:0] parport_data,
output [31:0] gpio_systype,
output [95:0] gpio_systype96,
input [31:0] gpio_in,
input	gpio_in0,
input	gpio_in1,

output	dummy_irq0,
output	dummy_irq1,
output	dummy_irq2,
output	dummy_irq3,

output [31:0] mii_ctl0,
output [31:0] mii_ctl1,
output [31:0] mii_ctl2,

input [7:0] err_in8,
input	err_in0,
input	err_in1,
input	err_in2,
input	err_in3,
input	err_in4,
input	err_in5,
input	err_in6,
input	err_in7,
input	err_in8a,
input	err_in9,
input	err_in10,
input	err_in11,
output	err_out,

input	ext_int,
input	ext_int1,
input	ext_int2,
input	ext_int3,
input	ext_int4,
input	ext_int5,
input	ext_int6,
input	ext_int7,
input	ext_int8,
input	ext_int9,
input	ext_int10,
input	ext_int11,
input	ext_int12,
input	ext_int13,
input	ext_int14,
input	ext_int15,
input	ext_int_is_msi,
input	in_dbg_wake0,

output	out_int_ored,

output	out_wake0,
output [1:0] out_wake0_2,
output	out_wake1,
output	out_wake2,
output	out_wake3,

input [3:0] in_sleep,
input	in_sleep0,

output	out_mb_reset,
output [3:0] out_mb_non_secure,

output	out_intr0,
output	out_intr1,
output	out_intr2,
output	out_intr3,
output [7:0] out_int8a,
output [7:0] out_int8b,

output	chip_trigger,
output	global_test_en_l
);



wire [7:0] aximon_rev = 8'h33;		// >= 0x20 means use r14/r15 for trace
wire [7:0] aximon_shift = (C_DEPTH_MUL == 16) ? 8'h05 :
			(C_DEPTH_MUL == 8) ? 8'h04 :
			(C_DEPTH_MUL == 4) ? 8'h03 :
			(C_DEPTH_MUL == 2) ? 8'h02 : 8'h01;
				// 1 = 1024 entries, 2 = 2048, 3 = 4096 entries

reg	Rst_ff;
reg	la_rst_ff;
reg	some_err_ff, some_err_2ff;
reg	store_err_ff;

reg [31:4] reg4_errs_ff;
reg	reg4_some_err_ff;
reg [31:0] reg14_addr_ff = 32'h0;
reg [3:0] reg10_ctl_ff;
reg [95:0] axi_bus_ff;

// LA_Clk registers
reg [31:0] reg0_ctl_ff = C_REG0_RESET_VAL;
reg [31:0] reg1_cntr_ff = 32'h0;
reg [31:0] reg6_ctl_ff = C_REG6_RESET_VAL;
reg [31:0] reg8_cnt_ff = 32'h0;
reg [95:0] la_dbg_in0_ff, la_dbg_last0_ff;
reg [143:0] la_dbg_in1_ff, la_dbg_last1_ff;
reg [143:0] la_dbg_in2_ff, la_dbg_last2_ff;
reg [143:0] la_dbg_in3_ff, la_dbg_last3_ff;
reg [143:0] debug_ina1_ff;
reg [1:0] reg6_dbg_a_sel_ff, reg6_dbg_b_sel_ff;
reg [1:0] reg6_dbg_c_sel_ff, reg6_dbg_d_sel_ff;

wire	rst_l = ~Rst_ff;
wire	larst_l = ~la_rst_ff;

wire [31:0] reg13_systype = C_SYSTEM_TYPE;	// bits [30:0] of reg5 rd

wire	reg6_gpio_raw = reg6_ctl_ff[31];
wire	reg6_no_ext_int = reg6_ctl_ff[30];
wire	reg6_la_doall = reg6_ctl_ff[29];
wire	reg6_la_halterr = reg6_ctl_ff[28];
wire	reg6_la_ignore_rearb = reg6_ctl_ff[27];
wire	reg6_la_plb_interesting = reg6_ctl_ff[26];
wire [1:0] reg6_dbg_c_sel = reg6_ctl_ff[25:24];
wire [15:0] reg6_la_wrapmatch = reg6_ctl_ff[23:8];

wire [1:0] reg6_dbg_a_sel = reg6_ctl_ff[7:6];
wire [1:0] reg6_dbg_b_sel = reg6_ctl_ff[5:4];
wire	reg6_la_dbg_plbdata = reg6_ctl_ff[3];
wire [1:0] reg6_dbg_d_sel = reg6_ctl_ff[2:1];
//wire	reg6_or_into_ext_irq = reg6_ctl_ff[0];

wire	reg0_la_enable = reg0_ctl_ff[31];
wire	reg0_la_onlydiffs = reg0_ctl_ff[28];

wire	reg0_la_haltwrap = reg0_ctl_ff[26];

wire [23:0] reg0_la_cntr = reg0_ctl_ff[23:0];


wire	some_err = reg4_some_err_ff;
wire	store_err = some_err && (~some_err_ff || ~some_err_2ff);

reg [31:0] gpio_in32_ff;
reg [3:0] ext_int_4_ff = 4'h0;
reg [3:0] ext_int_4_2ff = 4'h0;
reg [3:0] mb_sleep_ff = 4'h0;
reg	ext_int_ored_ff = 1'b0;
reg	ext_int_is_msi_ff;
reg	ext_int_deassert_ff, ext_int_deassert_2ff;

wire [3:0] ext_int_4 = { ext_int3, ext_int2, ext_int1, ext_int };
wire [7:0] ext_int_8a = { ext_int7, ext_int6, ext_int5, ext_int4,
							ext_int_4[3:0] };
wire [7:0] ext_int_8b = { ext_int15, ext_int14, ext_int13, ext_int12,
				ext_int11, ext_int10, ext_int9, ext_int8 };

wire	ext_int_deassert = ext_int_is_msi_ff &&
			((ext_int_4_2ff[3:0] & ~ext_int_4_ff[3:0]) != 4'h0);
wire	ext_int_ored = (ext_int_deassert_ff || ext_int_deassert_2ff) ? 1'b0 :
				(ext_int_4_ff[3:0] != 4'h0);
wire [3:0] mb_sleep = in_sleep[3:0] | { 3'b000, in_sleep0 };
wire [31:0] gpio_in32 = gpio_in[31:0] | { 30'h0, gpio_in1, gpio_in0 };

always @(posedge Clk) begin
	Rst_ff <= ~Rst_n;
	gpio_in32_ff[31:0] <= gpio_in32[31:0];
	ext_int_4_ff[3:0] <= ext_int_4[3:0];
	ext_int_4_2ff[3:0] <= ext_int_4_ff[3:0];
	ext_int_deassert_ff <= (rst_l) ? ext_int_deassert : 1'b0;
	ext_int_deassert_2ff <= (rst_l) ? ext_int_deassert_ff : 1'b0;
	ext_int_ored_ff <= ext_int_ored;
	ext_int_is_msi_ff <= ext_int_is_msi;
	mb_sleep_ff[3:0] <= mb_sleep[3:0];
end

reg [31:0]	rd_out_ff;
wire [7:0] s_awlen8 = s_awlen[7:0] | { 4'h0, s_awlen3[3:0] };
wire [7:0] s_arlen8 = s_arlen[7:0] | { 4'h0, s_arlen3[3:0] };

wire [31:0] axi_bus_ctl = {
	s_wstrb[3:0],							//31:28
	s_rresp[1:0], s_bvalid, s_bready,				//27:24
	s_awlen8[3:0], s_awsize[1:0], s_awburst[0], s_wlast,		//23:16
	s_arlen8[3:0], s_arsize[1:0], s_arburst[0], s_rlast,		//15:8
	s_wvalid, s_wready, s_rvalid, s_rready,				//7:4
	s_awvalid, s_awready, s_arvalid, s_arready };			//3:0

wire [31:0] axi_bus_addr = (s_arvalid && s_arready) ? s_araddr[31:0] :
				(s_awvalid && s_awready) ? s_awaddr[31:0] :
					(s_arvalid) ? s_araddr[31:0] :
							s_awaddr[31:0];
wire [31:0] axi_bus_data = (s_arvalid && s_arready && s_awvalid && s_awready) ?
		s_awaddr[31:0] :
	(s_rvalid && s_rready && ~(s_wvalid && s_wready)) ? s_rdata[31:0] :
							s_wdata[31:0];
wire [95:0] axi_bus = { axi_bus_ctl[31:0], axi_bus_addr[31:0],
							axi_bus_data[31:0] };
wire [95:0] axi_bus_la = (C_REGISTER_AXI) ? axi_bus_ff[95:0] : axi_bus[95:0];

wire [143:0] debug_ina1 = { debug_ina1_ext_15_0[15:0], debug_ina1_127_0[127:0]};
wire [127:0] debug_ina2 = debug_ina2_127_0[127:0];
wire [127:0] debug_ina3 = debug_ina3_127_0[127:0];
wire [143:0] debug_inb0 = { debug_inb0_ext_15_0[15:0], debug_inb0_127_0[127:0]};
wire [143:0] debug_inb1 = { debug_inb1_ext_15_0[15:0], debug_inb1_127_0[127:0]};
wire [143:0] debug_inb2 = { debug_inb2_ext_15_0[15:0], debug_inb2_127_0[127:0]};
wire [143:0] debug_inb3 = { debug_inb3_ext_15_0[15:0], debug_inb3_127_0[127:0]};
wire [143:0] debug_inc0 = { debug_inc0_ext_15_0[15:0], debug_inc0_127_0[127:0]};
wire [143:0] debug_inc1 = { debug_inc1_ext_15_0[15:0], debug_inc1_127_0[127:0]};
wire [143:0] debug_inc2 = { debug_inc2_ext_15_0[15:0], debug_inc2_127_0[127:0]};
wire [143:0] debug_inc3 = { debug_inc3_ext_15_0[15:0], debug_inc3_127_0[127:0]};
wire [143:0] debug_ind0 = { debug_ind0_ext_15_0[15:0], debug_ind0_127_0[127:0]};
wire [143:0] debug_ind1 = { debug_ind1_ext_15_0[15:0], debug_ind1_127_0[127:0]};
wire [143:0] debug_ind2 = { debug_ind2_ext_15_0[15:0], debug_ind2_127_0[127:0]};
wire [143:0] debug_ind3 = { debug_ind3_ext_15_0[15:0], debug_ind3_127_0[127:0]};

wire [95:0] debug_in_a =
	((reg6_dbg_a_sel_ff[1:0] == 2'b00) ? axi_bus_la[95:0] : 96'h0) |
	((reg6_dbg_a_sel_ff[1:0] == 2'b01) ? debug_ina1[127:32] : 96'h0) |
	((reg6_dbg_a_sel_ff[1:0] == 2'b10) ? debug_ina2[127:32] : 96'h0) |
	((reg6_dbg_a_sel_ff[1:0] == 2'b11) ? debug_ina3[127:32] : 96'h0);

wire [143:0] debug_in_b =
	((reg6_dbg_b_sel_ff[1:0] == 2'b00) ? debug_inb0[143:0] : 144'h0) |
	((reg6_dbg_b_sel_ff[1:0] == 2'b01) ? debug_inb1[143:0] : 144'h0) |
	((reg6_dbg_b_sel_ff[1:0] == 2'b10) ? debug_inb2[143:0] : 144'h0) |
	((reg6_dbg_b_sel_ff[1:0] == 2'b11) ? debug_inb3[143:0] : 144'h0);

wire [143:0] debug_in_c =
	((reg6_dbg_c_sel_ff[1:0] == 2'b00) ? debug_inc0[143:0] : 144'h0) |
	((reg6_dbg_c_sel_ff[1:0] == 2'b01) ? debug_inc1[143:0] : 144'h0) |
	((reg6_dbg_c_sel_ff[1:0] == 2'b10) ? debug_inc2[143:0] : 144'h0) |
	((reg6_dbg_c_sel_ff[1:0] == 2'b11) ? debug_inc3[143:0] : 144'h0);

wire [143:0] debug_in_d =
	((reg6_dbg_d_sel_ff[1:0] == 2'b00) ? debug_ind0[143:0] : 144'h0) |
	((reg6_dbg_d_sel_ff[1:0] == 2'b01) ? debug_ind1[143:0] : 144'h0) |
	((reg6_dbg_d_sel_ff[1:0] == 2'b10) ? debug_ind2[143:0] : 144'h0) |
	((reg6_dbg_d_sel_ff[1:0] == 2'b11) ? debug_ind3[143:0] : 144'h0);

wire [95:0] la_dbg_in0 = (reg6_no_ext_int) ? debug_in_a[95:0] :
		{ ext_int_4_ff[0], ext_int_ored_ff, some_err || debug_in_a[93],
							debug_in_a[92:0] };
wire [143:0] la_dbg_in1 = debug_in_b[143:0];
wire [143:0] la_dbg_in2 = debug_in_c[143:0];
wire [143:0] la_dbg_in3 = debug_in_d[143:0];

always @(posedge LA_Clk) begin
	la_rst_ff <= Rst_ff;
	la_dbg_in0_ff[95:0] <= la_dbg_in0[95:0];
	la_dbg_in1_ff[143:0] <= la_dbg_in1[143:0];
	la_dbg_in2_ff[143:0] <= la_dbg_in2[143:0];
	la_dbg_in3_ff[143:0] <= la_dbg_in3[143:0];
	la_dbg_last0_ff[95:0] <= la_dbg_in0_ff[95:0];
	la_dbg_last1_ff[143:0] <= la_dbg_in1_ff[143:0];
	la_dbg_last2_ff[143:0] <= la_dbg_in2_ff[143:0];
	la_dbg_last3_ff[143:0] <= la_dbg_in3_ff[143:0];
	reg6_dbg_a_sel_ff[1:0] <= reg6_dbg_a_sel[1:0];
	reg6_dbg_b_sel_ff[1:0] <= reg6_dbg_b_sel[1:0];
	reg6_dbg_c_sel_ff[1:0] <= reg6_dbg_c_sel[1:0];
	reg6_dbg_d_sel_ff[1:0] <= reg6_dbg_d_sel[1:0];
	store_err_ff <= store_err;
	some_err_ff <= some_err;
	some_err_2ff <= some_err_ff;
`ifdef AXIMON_SIMULATION
	debug_ina1_ff[143:0] <= debug_ina1[143:0];
`endif
end


reg [31:0] slv_wdata_ff;
reg [31:0] slv_araddr_ff, slv_awaddr_ff;
reg [C_S_AXI_ID_WIDTH-1:0] slv_awid_ff, slv_arid_ff;
reg	slvw_busy_ff, slvr_busy_ff;

wire [31:0] slv_araddr = (~slvr_busy_ff) ? s_araddr[31:0] : slv_araddr_ff[31:0];
wire [C_S_AXI_ID_WIDTH-1:0] slv_arid = (~slvr_busy_ff) ?
		s_arid[C_S_AXI_ID_WIDTH-1:0] :slv_arid_ff[C_S_AXI_ID_WIDTH-1:0];

wire [31:0] slv_awaddr = (~slvw_busy_ff) ? s_awaddr[31:0] : slv_awaddr_ff[31:0];
wire [C_S_AXI_ID_WIDTH-1:0] slv_awid = (~slvw_busy_ff) ?
		s_awid[C_S_AXI_ID_WIDTH-1:0] :slv_awid_ff[C_S_AXI_ID_WIDTH-1:0];
wire [9:0] slv_wshift =
		(C_S_AXI_DATA_WIDTH == 512) ? { 1'b0, s_awaddr[5:2], 5'b0 } :
		(C_S_AXI_DATA_WIDTH == 256) ? { 2'b00, s_awaddr[4:2], 5'b0 } :
		(C_S_AXI_DATA_WIDTH == 128) ? { 3'b000, s_awaddr[3:2], 5'b0 } :
		(C_S_AXI_DATA_WIDTH == 64) ? { 4'b0000, s_awaddr[2], 5'b0 } :
									8'h0;
wire [31:0] slv_wdata = (~slvw_busy_ff) ?
			s_wdata[C_S_AXI_DATA_WIDTH-1:0] >> slv_wshift[9:0] :
							slv_wdata_ff[31:0];

always @(posedge Clk) begin
	axi_bus_ff[95:0] <= axi_bus[95:0];
	slv_wdata_ff[31:0] <= (rst_l) ? slv_wdata[31:0] : 32'h0;
	slv_araddr_ff[31:0] <= (rst_l) ? slv_araddr[31:0] : 32'h0;
	slv_awaddr_ff[31:0] <= (rst_l) ? slv_awaddr[31:0] : 32'h0;
	slv_awid_ff[C_S_AXI_ID_WIDTH-1:0] <= (rst_l) ?
					slv_awid[C_S_AXI_ID_WIDTH-1:0] : 1'b0;
	slv_arid_ff[C_S_AXI_ID_WIDTH-1:0] <= (rst_l) ?
					slv_arid[C_S_AXI_ID_WIDTH-1:0] : 1'b0;
end

reg	slvr_latched_ff, slvw_latched_ff;
reg	slvw_awready_ff, slvr_arready_ff;
reg	slvw_bvalid_ff, slvw_wready_ff, slvr_rvalid_ff;
reg	slvw_done_ff, slvr_done_ff;
reg	slvw_to_la_ff, slvr_to_la_ff;
reg	slvr_from_la_ff, slvr_from_la_2ff, slvr_from_la_3ff;
reg	slvw_from_la_ff, slvw_from_la_2ff, slvw_from_la_3ff;
reg [15:0] slv_bram_we_ff;

// LA_Clk registers
reg	regla_rd_done_ff, regla_wr_done_ff;
reg [31:0] regla_rddata_ff;
reg [4:0] slvr_dcnt_ff, slvw_dcnt_ff;


wire	slvr_done = s_rready && slvr_rvalid_ff && slvr_busy_ff;
wire	slvw_done = s_bready && slvw_bvalid_ff && slvw_busy_ff;

wire	slvr_latched = slvr_arready_ff;	// ignore arvalid, it must be asserted
wire	slvw_latched = slvw_awready_ff;	// ignore awvalid, it must be asserted


wire	slvr_arready = s_arvalid && ~slvr_busy_ff && ~slvr_latched;
wire	slvw_busy = ~slvw_done_ff && (slvw_latched || slvw_busy_ff);
wire	slvr_busy = ~slvr_done_ff && (slvr_latched || slvr_busy_ff);

wire [15:0] slvr_reg_dec = (16'h1 << slv_araddr_ff[5:2]);
wire	slvr_might_to_la = slvr_reg_dec[0] || slvr_reg_dec[1] ||
			slvr_reg_dec[6] || slvr_reg_dec[8];

wire	slvr_from_la = regla_rd_done_ff;
wire	slvr_from_la_done = ~slvr_from_la_2ff && slvr_from_la_3ff;

wire	slvr_to_la_start = slvr_latched && slvr_might_to_la;
wire	slvr_to_la = slvr_to_la_start ||
			(~slvr_from_la_2ff && slvr_busy_ff && slvr_to_la_ff);
wire	slvr_dcnt_make0 = slvr_from_la_done;
wire	slvr_dcnt_is0 = (slvr_dcnt_ff[4:0] == 5'h0) || slvr_dcnt_make0;
wire [4:0] slvr_dcnt_deced = (slvr_dcnt_is0 || slvr_dcnt_make0) ? 5'h0 :
						slvr_dcnt_ff[4:0] - 5'h1;
wire [4:0] slvr_dcnt_ifnew = (slvr_might_to_la) ? 5'h1f : 5'h00;
wire [4:0] slvr_dcnt = (slvr_latched) ? slvr_dcnt_ifnew[4:0] :
							slvr_dcnt_deced[4:0];


wire	slvw_awready = (s_awvalid && s_wvalid) && ~slvw_busy_ff &&
								~slvw_latched;
wire [15:0] slvw_reg_dec = (16'h1 << slv_awaddr_ff[5:2]);
wire	slvw_might_to_la = slvw_reg_dec[0] || slvw_reg_dec[1] ||
			slvw_reg_dec[6] || slvw_reg_dec[7] || slvw_reg_dec[8];

wire	slvw_from_la = regla_wr_done_ff;
wire	slvw_from_la_done = ~slvw_from_la_2ff && slvw_from_la_3ff;

wire	slvw_to_la_start = slvw_latched && slvw_might_to_la;
wire	slvw_to_la = slvw_to_la_start ||
			(~slvw_from_la_2ff && slvw_busy_ff && slvw_to_la_ff);
wire	slvw_dcnt_make0 = slvw_from_la_done;
wire	slvw_dcnt_is0 = (slvw_dcnt_ff[4:0] == 5'h0) || slvw_dcnt_make0;
wire [4:0] slvw_dcnt_deced = (slvw_dcnt_is0 || slvw_dcnt_make0) ? 5'h0 :
						slvw_dcnt_ff[4:0] - 5'h1;
wire [4:0] slvw_dcnt_ifnew = (slvw_might_to_la) ? 5'h1f : 5'h00;
wire [4:0] slvw_dcnt = (slvw_latched) ? slvw_dcnt_ifnew[4:0] :
							slvw_dcnt_deced[4:0];
wire [15:0] slv_reg_wr = (slvw_latched) ? slvw_reg_dec[15:0] : 16'h0;

wire [3:0] slv_bram_sel = { reg14_addr_ff[5:2] };
wire [15:0] slv_bram_enout_vec = (16'h1 << slv_bram_sel[3:0]);
wire [15:0] slv_bram_we = (slv_reg_wr[15]) ? slv_bram_enout_vec[15:0] : 16'h0;

wire	slvw_bvalid = ~slvw_done && ~slvw_done_ff && slvw_busy_ff &&
								slvw_dcnt_is0;
wire	slvw_wready = slvw_awready;
wire	slvr_rvalid = ~slvr_done && ~slvr_done_ff && slvr_busy_ff &&
								slvr_dcnt_is0;

always @(posedge Clk) begin
	slvw_busy_ff <= (rst_l) ? slvw_busy : 1'b0;
	slvr_busy_ff <= (rst_l) ? slvr_busy : 1'b0;
	slvw_latched_ff <= (rst_l) ? slvw_latched : 1'b0;
	slvr_latched_ff <= (rst_l) ? slvr_latched : 1'b0;
	slvw_awready_ff <= (rst_l) ? slvw_awready : 1'b0;
	slvr_arready_ff <= (rst_l) ? slvr_arready : 1'b0;
	slvw_wready_ff <= (rst_l) ? slvw_wready : 1'b0;
	slvw_bvalid_ff <= (rst_l) ? slvw_bvalid : 1'b0;
	slvr_rvalid_ff <= (rst_l) ? slvr_rvalid : 1'b0;
	slvw_done_ff <= (rst_l) ? slvw_done : 1'b0;
	slvr_done_ff <= (rst_l) ? slvr_done : 1'b0;
	slvr_to_la_ff <= (rst_l) ? slvr_to_la : 1'b0;
	slvr_from_la_ff <= (rst_l) ? slvr_from_la : 1'b0;
	slvr_from_la_2ff <= (rst_l) ? slvr_from_la_ff : 1'b0;
	slvr_from_la_3ff <= (rst_l) ? slvr_from_la_2ff : 1'b0;
	slvw_from_la_ff <= (rst_l) ? slvw_from_la : 1'b0;
	slvw_from_la_2ff <= (rst_l) ? slvw_from_la_ff : 1'b0;
	slvw_from_la_3ff <= (rst_l) ? slvw_from_la_2ff : 1'b0;
	slvw_to_la_ff <= (rst_l) ? slvw_to_la : 1'b0;
	slv_bram_we_ff[15:0] <= (rst_l) ? slv_bram_we[15:0] : 16'h0;
	slvr_dcnt_ff[4:0] <= (rst_l) ? slvr_dcnt[4:0] : 5'h0;
	slvw_dcnt_ff[4:0] <= (rst_l) ? slvw_dcnt[4:0] : 5'h0;
end

// LA_Clk registers
reg	la_early_inc_cntr_ff = 1'b0;
reg [3:0] la_diffs_ff = 4'h0;
reg	la_stop_err_ff = 1'b0;
reg	la_cntr_willwrap23_8_ff;
reg	reg0_la_enable_ff = 1'b0;
reg	la_trigger_ff, la_trigger_2ff;
reg	regla_wr_to_la_ff, regla_wr_to_la_2ff, regla_wr_to_la_3ff;
reg	regla_rd_to_la_ff, regla_rd_to_la_2ff, regla_rd_to_la_3ff;
reg [5:0] regla_rdaddr_ff;
reg [5:0] regla_wraddr_ff;
reg	regla_wr_latch_ff, regla_wr_latch_2ff;
reg	regla_rd_latch_ff, regla_rd_latch_2ff;
reg [31:0] regla_wrdata_ff;

wire [143:0] la_ign0_3 = { 16'hffff, 96'h0, 32'hffffffff };	// ignore ext
wire [143:0] la_ign4_7 = 144'h0;
wire [143:0] la_ign8_11 = 144'h0;
wire [143:0] la_ign12_15 = 144'h0;

wire [95:0] la_diffs1_3 = (la_dbg_in0_ff[95:0] ^ la_dbg_last0_ff[95:0]) &
						~la_ign0_3[127:32];
wire [143:0] la_diffs4_7 = (la_dbg_in1_ff[143:0] ^ la_dbg_last1_ff[143:0]) &
						~la_ign4_7[143:0];
wire [143:0] la_diffs8_11 = (la_dbg_in2_ff[143:0] ^ la_dbg_last2_ff[143:0]) &
						~la_ign8_11[143:0];
wire [143:0] la_diffs12_15 = (la_dbg_in3_ff[143:0] ^ la_dbg_last3_ff[143:0]) &
						~la_ign12_15[143:0];

wire [3:0] la_diffs = { (la_diffs1_3[95:0] != 96'h0) || store_err_ff,
			(la_diffs4_7[143:0] != 144'h0),
			(la_diffs8_11[143:0] != 144'h0),
			(la_diffs12_15[143:0] != 144'h00) };

wire	regla_wr_latch = regla_wr_to_la_2ff && ~regla_wr_to_la_3ff;
wire	la_just_enabled = reg0_la_enable && ~reg0_la_enable_ff;
wire	la_store_plb_interest = reg6_la_plb_interesting && 1'b0;
wire	la_stop_err = reg0_la_enable && reg6_la_halterr && some_err_2ff;

wire	la_must_store_early = reg6_la_doall || la_store_plb_interest ||
					la_stop_err || la_just_enabled;
wire	la_early_inc_cntr = reg0_la_enable && la_must_store_early;

wire	la_inc_cntr_diffs = (la_diffs_ff[3:0] != 4'h0) && reg0_la_onlydiffs;
wire	la_do_inc = (la_early_inc_cntr_ff || la_inc_cntr_diffs) &&
					reg0_la_enable && reg0_la_enable_ff;
wire [23:0] reg0_la_cntr_inced = reg0_la_cntr[23:0] + 24'h1;
wire [23:0] newreg0_la_cntr = (la_do_inc) ? reg0_la_cntr_inced[23:0] :
							reg0_la_cntr[23:0];

wire	la_cntr_willwrap7_0 = (reg0_la_cntr[7:0] == 8'hff) && la_do_inc;
wire	la_cntr_willwrap23_8 = (reg0_la_cntr[23:8] == reg6_la_wrapmatch[15:0]);
wire	la_cntr_willwrap = la_cntr_willwrap7_0 && la_cntr_willwrap23_8_ff;

wire [31:0] regla_wrdata = (regla_wr_latch) ? slv_wdata_ff[31:0] :
							regla_wrdata_ff[31:0];
wire [5:0] regla_wraddr = (regla_wr_latch) ? slv_awaddr_ff[5:0] :
							regla_wraddr_ff[5:0];
wire [15:0] regla_wrdec = (16'h1 << regla_wraddr_ff[5:2]);
wire [15:0] regla_wr = (regla_wr_latch_ff) ? regla_wrdec[15:0] : 16'h0;

wire	regla_wr_done = regla_wr_to_la_2ff &&
				(regla_wr_latch_2ff || regla_wr_done_ff);

wire	la_trigger = reg0_la_enable && (regla_wr[7] || la_trigger_ff);
wire	la_stop = (la_cntr_willwrap && reg0_la_haltwrap) || la_stop_err_ff ||
						la_trigger_2ff;

wire	la_we_ram = reg0_la_enable && ~la_stop;

wire	la_we_ram7_4 = la_we_ram;
wire	la_we_ram3_0 = la_we_ram;
wire	la_we_ram8_11 = la_we_ram;
wire	la_we_ram12_15 = la_we_ram;

wire	newreg0_la_enable = (reg0_la_enable && ~la_stop);

wire	regla_wr_to_la = slvw_to_la_ff;

wire [31:0] newreg0_ctl = { newreg0_la_enable, reg0_ctl_ff[30:24],
					newreg0_la_cntr[23:0] };
wire [31:0] reg0_ctl = (regla_wr[0]) ? regla_wrdata_ff[31:0] :
							newreg0_ctl[31:0];

wire [31:0] reg1_cntr = (regla_wr[1]) ? regla_wrdata_ff[31:0] :
					reg1_cntr_ff[31:0] + 32'h1;

wire [31:0] reg6_ctl = (regla_wr[6]) ? regla_wrdata_ff[31:0] :
							reg6_ctl_ff[31:0];

// reg8 is not writeable
wire [31:0] reg8_cnt = (la_just_enabled) ? reg1_cntr_ff[31:0]:reg8_cnt_ff[31:0];


// And do LA clock reads
wire	regla_rd_to_la = slvr_to_la_ff;
wire	regla_rd_latch = regla_rd_to_la_2ff && ~regla_rd_to_la_3ff;

wire [5:0] regla_rdaddr = (regla_rd_latch) ? slv_araddr_ff[5:0] :
							regla_rdaddr_ff[5:0];
wire [15:0] regla_rddec = (16'h1 << regla_rdaddr_ff[5:2]);

wire [31:0] regla_rd_early =
		((regla_rddec[0]) ? reg0_ctl_ff[31:0] : 32'h0) |
		((regla_rddec[1]) ? reg1_cntr_ff[31:0] : 32'h0) |
		((regla_rddec[6]) ? reg6_ctl_ff[31:0] : 32'h0) |
		((regla_rddec[8]) ? reg8_cnt_ff[31:0] : 32'h0);

wire [31:0] regla_rddata = (regla_rd_latch_ff) ? regla_rd_early[31:0] :
							regla_rddata_ff[31:0];

wire	regla_rd_done = regla_rd_to_la_2ff &&
				(regla_rd_latch_2ff || regla_rd_done_ff);

always @(posedge LA_Clk) begin
	reg0_ctl_ff[31:0] <= (larst_l) ? reg0_ctl[31:0] : C_REG0_RESET_VAL;
	reg0_la_enable_ff <= (larst_l) ? reg0_la_enable : 1'b0;
	reg1_cntr_ff[31:0] <= (larst_l) ? reg1_cntr[31:0] : 32'h0;
	reg6_ctl_ff[31:0] <= (larst_l) ? reg6_ctl[31:0] : C_REG6_RESET_VAL;
	reg8_cnt_ff[31:0] <= reg8_cnt[31:0];
	la_early_inc_cntr_ff <= (larst_l) ? la_early_inc_cntr : 1'b0;
	la_stop_err_ff <= (larst_l) ? la_stop_err : 1'b0;
	la_cntr_willwrap23_8_ff <= (larst_l) ? la_cntr_willwrap23_8 : 1'b0;
	la_diffs_ff[3:0] <= la_diffs[3:0];
	la_trigger_ff <= (rst_l) ? la_trigger : 1'b0;
	la_trigger_2ff <= (rst_l) ? la_trigger_ff : 1'b0;
	regla_wrdata_ff[31:0] <= (larst_l) ? regla_wrdata[31:0] : 32'h0;
	regla_wraddr_ff[5:0] <= (larst_l) ? regla_wraddr[5:0] : 6'h0;
	regla_wr_to_la_ff <= (larst_l) ? regla_wr_to_la : 1'b0;
	regla_wr_to_la_2ff <= (larst_l) ? regla_wr_to_la_ff : 1'b0;
	regla_wr_to_la_3ff <= (larst_l) ? regla_wr_to_la_2ff : 1'b0;
	regla_wr_latch_ff <= (larst_l) ? regla_wr_latch : 1'b0;
	regla_wr_latch_2ff <= (larst_l) ? regla_wr_latch_ff : 1'b0;
	regla_wr_done_ff <= (larst_l) ? regla_wr_done : 1'b0;
	regla_rd_to_la_ff <= (larst_l) ? regla_rd_to_la : 1'b0;
	regla_rd_to_la_2ff <= (larst_l) ? regla_rd_to_la_ff : 1'b0;
	regla_rd_to_la_3ff <= (larst_l) ? regla_rd_to_la_2ff : 1'b0;
	regla_rd_latch_ff <= (larst_l) ? regla_rd_latch : 1'b0;
	regla_rd_latch_2ff <= (larst_l) ? regla_rd_latch_ff : 1'b0;
	regla_rd_done_ff <= (larst_l) ? regla_rd_done : 1'b0;
	regla_rdaddr_ff[5:0] <= (larst_l) ? regla_rdaddr[5:0] : 6'h0;
	regla_rddata_ff[31:0] <= (larst_l) ? regla_rddata[31:0] : 32'h0;
end


// Clk registers
reg [31:0] reg2_gpio_ff;
reg [31:0] reg3_genout_ff;
reg [31:0] reg11_genout_ff;
reg [31:0] reg12_genout_ff;
reg [31:0] reg13_genout_ff;
reg [7:0] parport_info_ff;
reg [3:0] gen_out_ff;
reg	reg5_cnt_doinc_ff;

wire [31:0] reg2_gpio = (slv_reg_wr[2]) ? slv_wdata_ff[31:0] :
						reg2_gpio_ff[31:0];

wire [31:0] reg3_genout = (slv_reg_wr[3]) ? slv_wdata_ff[31:0] :
							reg3_genout_ff[31:0];

wire [31:4] reg4_new_errs = { 20'h0, err_in8[7:0] } |
		{ 16'h0, err_in11, err_in10, err_in9, err_in8a,
			err_in7, err_in6, err_in5, err_in4,
			err_in3, err_in2, err_in1, err_in0 };

wire [31:4] reg4_cur_errs = reg4_errs_ff[31:4] | reg4_new_errs[31:4];
wire [31:4] reg4_errs = (slv_reg_wr[4]) ?
		(~slv_wdata_ff[31:4] & reg4_cur_errs[31:4]) :
							reg4_cur_errs[31:4];
// reg4 is write-1-to-clear.
wire	reg4_some_err = (reg4_errs_ff[31:4] != 28'h0);


wire [3:0] reg10_ctl = (slv_reg_wr[10]) ? slv_wdata_ff[3:0] : reg10_ctl_ff[3:0];

wire	reg11_clear = (C_ATOMIC_REG11 && slvr_reg_dec[11] && slvr_latched_ff);
wire [31:0] reg11_andmask = (C_WAKE_REG11) ?
			{ 28'hfffffff, mb_sleep_ff[3:0] } : 32'hffff_ffff;
wire	reg12_clear = (C_ATOMIC_REG12 && slvr_reg_dec[12] && slvr_latched_ff) ||
				(C_INTR_REG12);
wire [31:0] reg11_genout =
		(slv_reg_wr[11]) ? slv_wdata_ff[31:0] & reg11_andmask[31:0] :
			(reg11_clear) ? 32'h0 :
			reg11_genout_ff[31:0] & reg11_andmask[31:0];
wire [31:0] reg12_genout = (slv_reg_wr[12]) ? slv_wdata_ff[31:0] :
			(reg12_clear) ? 32'h0 : reg12_genout_ff[31:0];
wire [31:0] reg13_genout = (slv_reg_wr[13]) ? slv_wdata_ff[31:0] :
							reg13_genout_ff[31:0];
wire [31:0] reg14_addr = (slv_reg_wr[14]) ? slv_wdata_ff[31:0] :
							reg14_addr_ff[31:0];


wire [7:0] parport_pre = reg2_gpio_ff[11:4];
wire [7:0] parport_info = (C_INVERT_PARPORT) ? parport_pre[7:0] :
							~parport_pre[7:0];

wire [3:0] gen_out = ~reg2_gpio_ff[6:3];

always @(posedge Clk) begin
	reg2_gpio_ff[31:0] <= (rst_l) ? reg2_gpio[31:0] : 32'h0;
	reg3_genout_ff[31:0] <= (rst_l) ? reg3_genout[31:0] : 32'h3b;
	reg4_errs_ff[31:4] <= (rst_l) ? reg4_errs[31:4] : 28'h0;
	reg4_some_err_ff <= (rst_l) ? reg4_some_err : 1'b0;
	reg10_ctl_ff[3:0] <= (rst_l) ? reg10_ctl[3:0] : 4'h0;
	reg11_genout_ff[31:0] <= (rst_l) ? reg11_genout[31:0] :
			((C_ATOMIC_REG11) ? 32'hffffffff : 32'h0);
	reg12_genout_ff[31:0] <= (rst_l) ? reg12_genout[31:0] :
			((C_ATOMIC_REG12) ? 32'hffffffff : 32'h0);
	reg13_genout_ff[31:0] <= (rst_l) ? reg13_genout[31:0] : 32'h0;
	reg14_addr_ff[31:0] <= (rst_l) ? reg14_addr[31:0] : 32'h0;
	gen_out_ff[3:0] <= gen_out[3:0];
	parport_info_ff[7:0] <= parport_info[7:0];
end


wire [15:0] slv_ram_addr = { reg14_addr_ff[21:6] }; // skip low 6 bits
wire [15:0] la_ram_addr = newreg0_la_cntr[15:0];
wire [95:0] la_wr_data = la_dbg_in0_ff[95:0];
wire [143:0] la_wr_data4_7 = la_dbg_in1_ff[143:0];
wire [143:0] la_wr_data8_11 = la_dbg_in2_ff[143:0];
wire [143:0] la_wr_data12_15 = la_dbg_in3_ff[143:0];

wire [31:0] out_ram;

wire	la_reset = ~larst_l;

`ifndef SIMULATION
generate
if(C_DISABLE_LA != 0) begin: no_laram
// Do not instantiate any blockram
assign out_ram[31:0] = 32'h0;

end else begin: do_laram

// Instantiate RAM normally
`endif	//Protect icarus from generate statement

allrams #(
	.C_REG_LA_INPS(C_REG_LA_INPS),
	.C_REG_LA_ADDR(C_REG_LA_ADDR),
	.C_REG_BRAM_OUT(C_REG_BRAM_OUT),
	.C_DEPTH_MUL(C_DEPTH_MUL),
	.C_FAMILY(C_FAMILY)
	)
	allrams (
	.opb_clk(Clk),
	.la_clk(LA_Clk),
	.reset(la_reset),
	.enout0(slv_bram_enout_vec[15:0]),
	.we0((C_LA_NO_WRITE) ? 16'h0 : slv_bram_we_ff[15:0]),
	.we1(la_we_ram),
	.addr0(slv_ram_addr[15:0]),
	.ext_select(reg14_addr_ff[31]),
	.addr1(la_ram_addr[15:0]),
	.wr_data0((C_LA_NO_WRITE) ? 32'h0 : slv_wdata_ff[31:0]),
	.wr_data1({ la_wr_data12_15[127:0], la_wr_data8_11[127:0],
		la_wr_data4_7[127:0], la_wr_data[95:0], reg1_cntr_ff[31:0] }),
	.wr_data1_ext({ la_wr_data12_15[143:128], la_wr_data8_11[143:128],
		la_wr_data4_7[143:128], reg0_la_cntr[23:8] }),

	.rd_data0(out_ram[31:0])
);

`ifndef SIMULATION
end
endgenerate
`endif

wire [31:0] reg3_rd_value = gpio_in32_ff[31:0];
			// Don't read output value, read gpio_inputs
wire [31:0] reg4_rd_value = { reg4_errs_ff[31:4], 	// Lose low 4
				2'b00, 1'b0, 1'b0 };
wire [31:0] reg5_rd_value = 32'h0;
wire [31:0] reg9_rd_value = C_BASEADDR;
wire	reg10_la_no_write = C_LA_NO_WRITE;
wire	reg10_reg_la_inps = C_REG_LA_INPS;
wire	reg10_reg_la_addr = C_REG_LA_ADDR;
wire	reg10_reg_bram_out = C_REG_BRAM_OUT;
wire	reg10_register_axi = C_REGISTER_AXI;
wire [31:0] reg10_rd_value = { aximon_shift[7:0], aximon_rev[7:0],
		reg10_la_no_write, reg10_reg_la_inps, reg10_reg_la_addr,
						reg10_reg_bram_out,
		reg10_register_axi, 3'h0,
		4'h0, 2'b00, reg10_ctl_ff[1:0]};

// Don't enable reading of reg11-reg12 unless C_ATOMIC_REG* is set.
wire [31:0] reg11_rd_value = (C_ATOMIC_REG11) ? reg11_genout_ff[31:0] :
			(C_WAKE_REG11) ? { 28'h0, reg11_genout_ff[3:0]} : 32'h0;
wire [31:0] reg12_rd_value = (C_ATOMIC_REG12) ? reg12_genout_ff[31:0] : 32'h0;
wire [31:0] reg13_rd_value = { 1'b1, reg13_systype[30:0] };
wire [31:0] reg14_rd_value = { reg14_addr_ff[31], 10'h0, reg14_addr_ff[19:2],
								2'b00 };
wire [31:0] reg15_rd_value = out_ram[31:0];

// Reg2 is not readable to save resources if GPIO output is not used
wire [31:0] reg_early_out =
		((slvr_reg_dec[3]) ? reg3_rd_value[31:0] : 32'h0) |
		((slvr_reg_dec[4]) ? reg4_rd_value[31:0] : 32'h0) |
		((slvr_reg_dec[5]) ? reg5_rd_value[31:0] : 32'h0) |
		((slvr_reg_dec[9]) ? reg9_rd_value[31:0] : 32'h0) |
		((slvr_reg_dec[10])? reg10_rd_value[31:0] : 32'h0) |
		((slvr_reg_dec[11])? reg11_rd_value[31:0] : 32'h0) |
		((slvr_reg_dec[12])? reg12_rd_value[31:0] : 32'h0) |
		((slvr_reg_dec[13])? reg13_rd_value[31:0] : 32'h0) |
		((slvr_reg_dec[14])? reg14_rd_value[31:0] : 32'h0) |
		((slvr_reg_dec[15])? reg15_rd_value[31:0] : 32'h0);

wire [31:0] rd_out = (slvr_from_la_2ff) ? regla_rddata_ff[31:0] :
		(slvr_to_la_ff) ? 32'h0 :
		(slvr_latched_ff) ? reg_early_out[31:0] : rd_out_ff[31:0];

always @(posedge Clk) begin
	rd_out_ff[31:0] <= (rst_l) ? rd_out[31:0] : 32'h0;
end

assign	s_awready = slvw_awready_ff;
assign	s_wready = slvw_wready_ff;
assign	s_bid[C_S_AXI_ID_WIDTH-1:0] = slv_awid_ff[C_S_AXI_ID_WIDTH-1:0];
assign	s_bresp[1:0] = 2'b00;
assign	s_bvalid = slvw_bvalid_ff;
assign	s_arready = slvr_arready_ff;
assign	s_rid[C_S_AXI_ID_WIDTH-1:0] = slv_arid_ff[C_S_AXI_ID_WIDTH-1:0];
assign	s_rlast = 1'b1;
assign	s_rdata[C_S_AXI_DATA_WIDTH-1:0] = { 8 { rd_out_ff[31:0] } };
assign	s_rresp[1:0] = 2'b0;
assign	s_rvalid = slvr_rvalid_ff;

assign	parport_data[7:0] = parport_info_ff[7:0];
assign	gpio_systype[31:0] = reg13_rd_value[31:0];
assign	gpio_systype96[95:0] = { 3 { reg13_rd_value[31:0] } };

assign	mii_ctl0[31:0] = reg11_genout_ff[31:0];
assign	mii_ctl1[31:0] = reg12_genout_ff[31:0];
assign	mii_ctl2[31:0] = reg13_genout_ff[31:0];

assign	out_wake0 = reg11_genout_ff[0];
assign	out_wake0_2[1:0] = { in_dbg_wake0, reg11_genout_ff[0] };
assign	out_wake1 = reg11_genout_ff[1];
assign	out_wake2 = reg11_genout_ff[2];
assign	out_wake3 = reg11_genout_ff[3];

assign	out_mb_reset = ~reg12_genout_ff[0];
assign	out_mb_non_secure[3:0] = reg12_genout_ff[7:4];

assign	out_intr0 = reg12_genout_ff[0];
assign	out_intr1 = reg12_genout_ff[1];
assign	out_intr2 = reg12_genout_ff[2];
assign	out_intr3 = reg12_genout_ff[3];

assign out_int8a[7:0] = ext_int_8a[7:0];
assign out_int8b[7:0] = ext_int_8b[7:0];

assign	global_test_en_l = reg10_ctl_ff[0];
assign	chip_trigger = reg10_ctl_ff[1];
assign	dummy_irq0 = 1'b0;
assign	dummy_irq1 = 1'b0;
assign	dummy_irq2 = 1'b0;
assign	dummy_irq3 = 1'b0;
assign	out_int_ored = ext_int_ored_ff;

assign	err_out = reg4_some_err_ff;

`ifdef AXIMON_SIMULATION
integer fd1 = 0;
reg [31:0] cnt = 32'hffff_ffff;

initial begin
	$display("About to open %s fd1 is %h", C_TRC_FILE, fd1);
	fd1 = $fopen(C_TRC_FILE);
	$display("fd1 for aximon trace is %h", fd1);
end

always @(negedge Rst_n) begin
	#35;
	reg6_ctl_ff[31:0] = 32'h10000f00;
end

wire [3:0] ext_int_bus = { la_we_ram, la_do_inc, ext_int_4_ff[0],
						ext_int_ored_ff };

reg [27:0] tmp_cnt;
always @(posedge LA_Clk) begin
	tmp_cnt = cnt;
	cnt = cnt + 1;
	#1;

	if(reg6_dbg_a_sel == 2'b01) begin
		$fdisplay(fd1, "%d: %h %h %h %h %h=%h %h,%h %h %h:%h %h %h %h %h-%h %h %h %h %h %h",
			tmp_cnt,
			la_wr_data[95:64], la_wr_data[63:32], la_wr_data[31:0],
				debug_ina1_ff[31:0], debug_ina1_ff[143:128],
			la_wr_data4_7[127:96], la_wr_data4_7[95:64],
				la_wr_data4_7[63:32], la_wr_data4_7[31:0],
				la_wr_data4_7[143:128],
			la_wr_data8_11[127:96], la_wr_data8_11[95:64],
				la_wr_data8_11[63:32], la_wr_data8_11[31:0],
				la_wr_data8_11[143:128],
			la_wr_data12_15[127:96], la_wr_data12_15[95:64],
				la_wr_data12_15[63:32], la_wr_data12_15[31:0],
				la_wr_data12_15[143:128],
			ext_int_bus[3:0]);
	end else begin
		$fdisplay(fd1, "%d: %h %h %h=%h %h,%h %h %h:%h %h %h %h %h-%h %h %h %h %h %h",
			tmp_cnt,
			la_wr_data[95:64], la_wr_data[63:32], la_wr_data[31:0],
			la_wr_data4_7[127:96], la_wr_data4_7[95:64],
				la_wr_data4_7[63:32], la_wr_data4_7[31:0],
				la_wr_data4_7[143:128],
			la_wr_data8_11[127:96], la_wr_data8_11[95:64],
				la_wr_data8_11[63:32], la_wr_data8_11[31:0],
				la_wr_data8_11[143:128],
			la_wr_data12_15[127:96], la_wr_data12_15[95:64],
				la_wr_data12_15[63:32], la_wr_data12_15[31:0],
				la_wr_data12_15[143:128],
			ext_int_bus[3:0]);
	end
	$fflush(fd1);
end
`endif
endmodule

module allrams (
	input opb_clk,
	input la_clk,
	input reset,
	input [15:0] we0,
	input we1,
	input [15:0] enout0,
	input [15:0] addr0,
	input ext_select,
	input [15:0] addr1,
	input [31:0] wr_data0,
	input [511:0] wr_data1,
	input [63:0] wr_data1_ext,
	output [31:0] rd_data0
);
parameter C_REG_LA_INPS = 1;
parameter C_REG_LA_ADDR = 0;
parameter C_REG_BRAM_OUT = 1;
parameter C_DEPTH_MUL = 1;
parameter C_FAMILY = "virtex4";

wire [31:0] out_ram0, out_ram1, out_ram2, out_ram3;
wire [31:0] out_ram4, out_ram5, out_ram6, out_ram7;
wire [31:0] out_ram8, out_ram9, out_ram10, out_ram11;
wire [31:0] out_ram12, out_ram13, out_ram14, out_ram15;
wire [63:0] out_ext63_0;

monram4 #(
	.C_REG_LA_INPS(C_REG_LA_INPS),
	.C_REG_LA_ADDR(C_REG_LA_ADDR),
	.C_REG_BRAM_OUT(C_REG_BRAM_OUT),
	.C_DEPTH_MUL(C_DEPTH_MUL),
	.C_FAMILY(C_FAMILY)
	)
	monram0_3 (
	.opb_clk(opb_clk),
	.la_clk(la_clk),
	.reset(reset),
	.enout0(enout0[3:0]),
	.we0(we0[3:0]),
	.we1(we1),
	.addr0(addr0[15:0]),
	.addr1(addr1[15:0]),
	.wr_data0({ 4 { wr_data0[31:0] } }),
	.wr_data1(wr_data1[127:0]),
	.wr_data1_ext(wr_data1_ext[15:0]),

	.rd_data0({ out_ram0[31:0], out_ram1[31:0], out_ram2[31:0],
							out_ram3[31:0]}),
	.rd_data0_ext(out_ext63_0[63:48])
);

monram4 #(
	.C_REG_LA_INPS(C_REG_LA_INPS),
	.C_REG_LA_ADDR(C_REG_LA_ADDR),
	.C_REG_BRAM_OUT(C_REG_BRAM_OUT),
	.C_DEPTH_MUL(C_DEPTH_MUL),
	.C_FAMILY(C_FAMILY)
	)
	monram4_7 (
	.opb_clk(opb_clk),
	.la_clk(la_clk),
	.reset(reset),
	.enout0(enout0[7:4]),
	.we0(we0[7:4]),
	.we1(we1),
	.addr0(addr0[15:0]),
	.addr1(addr1[15:0]),
	.wr_data0({ 4 { wr_data0[31:0] } }),
	.wr_data1(wr_data1[255:128]),
	.wr_data1_ext(wr_data1_ext[31:16]),

	.rd_data0({ out_ram4[31:0], out_ram5[31:0], out_ram6[31:0],
							out_ram7[31:0]}),
	.rd_data0_ext(out_ext63_0[47:32])
);

monram4 #(
	.C_REG_LA_INPS(C_REG_LA_INPS),
	.C_REG_LA_ADDR(C_REG_LA_ADDR),
	.C_REG_BRAM_OUT(C_REG_BRAM_OUT),
	.C_DEPTH_MUL(C_DEPTH_MUL),
	.C_FAMILY(C_FAMILY)
	)
	monram8_11 (
	.opb_clk(opb_clk),
	.la_clk(la_clk),
	.reset(reset),
	.enout0(enout0[11:8]),
	.we0(we0[11:8]),
	.we1(we1),
	.addr0(addr0[15:0]),
	.addr1(addr1[15:0]),
	.wr_data0({ 4 { wr_data0[31:0] } }),
	.wr_data1(wr_data1[383:256]),
	.wr_data1_ext(wr_data1_ext[47:32]),

	.rd_data0({ out_ram8[31:0], out_ram9[31:0], out_ram10[31:0],
							out_ram11[31:0] }),
	.rd_data0_ext(out_ext63_0[31:16])
);

monram4 #(
	.C_REG_LA_INPS(C_REG_LA_INPS),
	.C_REG_LA_ADDR(C_REG_LA_ADDR),
	.C_REG_BRAM_OUT(C_REG_BRAM_OUT),
	.C_DEPTH_MUL(C_DEPTH_MUL),
	.C_FAMILY(C_FAMILY)
	)
	monram12_15 (
	.opb_clk(opb_clk),
	.la_clk(la_clk),
	.reset(reset),
	.enout0(enout0[15:12]),
	.we0(we0[15:12]),
	.we1(we1),
	.addr0(addr0[15:0]),
	.addr1(addr1[15:0]),
	.wr_data0({ 4 { wr_data0[31:0] } }),
	.wr_data1(wr_data1[511:384]),
	.wr_data1_ext(wr_data1_ext[63:48]),

	.rd_data0({ out_ram12[31:0], out_ram13[31:0], out_ram14[31:0],
							out_ram15[31:0] }),
	.rd_data0_ext(out_ext63_0[15:0])
);

reg [31:0] rd_ram_out_ff = 32'h0;

wire [31:0] rd_ram_out_pre =
	out_ram0[31:0] | out_ram1[31:0] | out_ram2[31:0] | out_ram3[31:0] |
	out_ram4[31:0] | out_ram5[31:0] | out_ram6[31:0] | out_ram7[31:0] |
	out_ram8[31:0] | out_ram9[31:0] | out_ram10[31:0] | out_ram11[31:0] |
	out_ram12[31:0] | out_ram13[31:0] | out_ram14[31:0] | out_ram15[31:0];

wire [31:0] rd_ram_out = (ext_select) ?
		(out_ext63_0[63:32] | out_ext63_0[31:0]) : rd_ram_out_pre[31:0];

always @(posedge opb_clk) begin
	rd_ram_out_ff[31:0] <= rd_ram_out[31:0];
end

assign rd_data0[31:0] = rd_ram_out_ff[31:0];

endmodule

module monram4 (
	input opb_clk,
	input la_clk,
	input reset,
	input [3:0] we0,
	input we1,
	input [3:0] enout0,
	input [15:0] addr0,
	input [15:0] addr1,
	input [127:0] wr_data0,
	input [127:0] wr_data1,
	input [15:0] wr_data1_ext,
	output [127:0] rd_data0,
	output [15:0] rd_data0_ext
);
parameter C_REG_LA_INPS = 1;
parameter C_REG_LA_ADDR = 0;
parameter C_REG_BRAM_OUT = 1;
parameter C_DEPTH_MUL = 1;
parameter C_FAMILY = "virtex4";

monram #(
	.C_REG_LA_INPS(C_REG_LA_INPS),
	.C_REG_LA_ADDR(C_REG_LA_ADDR),
	.C_REG_BRAM_OUT(C_REG_BRAM_OUT),
	.C_DEPTH_MUL(C_DEPTH_MUL),
	.C_FAMILY(C_FAMILY)
	)
	monram_a (
	.opb_clk(opb_clk),
	.la_clk(la_clk),
	.reset(reset),
	.we0(we0[0]),
	.we1(we1),
	.enout0(enout0[0]),
	.addr0(addr0[15:0]),
	.addr1(addr1[15:0]),
	.wr_data0(wr_data0[127:96]),
	.wr_data1(wr_data1[127:96]),
	.wr_data1_ext(wr_data1_ext[15:12]),

	.rd_data0(rd_data0[127:96]),
	.rd_data0_ext(rd_data0_ext[15:12])
);

monram #(
	.C_REG_LA_INPS(C_REG_LA_INPS),
	.C_REG_LA_ADDR(C_REG_LA_ADDR),
	.C_REG_BRAM_OUT(C_REG_BRAM_OUT),
	.C_DEPTH_MUL(C_DEPTH_MUL),
	.C_FAMILY(C_FAMILY)
	)
	monram_b (
	.opb_clk(opb_clk),
	.la_clk(la_clk),
	.reset(reset),
	.we0(we0[1]),
	.we1(we1),
	.enout0(enout0[1]),
	.addr0(addr0[15:0]),
	.addr1(addr1[15:0]),
	.wr_data0(wr_data0[95:64]),
	.wr_data1(wr_data1[95:64]),
	.wr_data1_ext(wr_data1_ext[11:8]),

	.rd_data0(rd_data0[95:64]),
	.rd_data0_ext(rd_data0_ext[11:8])
);

monram #(
	.C_REG_LA_INPS(C_REG_LA_INPS),
	.C_REG_LA_ADDR(C_REG_LA_ADDR),
	.C_REG_BRAM_OUT(C_REG_BRAM_OUT),
	.C_DEPTH_MUL(C_DEPTH_MUL),
	.C_FAMILY(C_FAMILY)
	)
	monram_c (
	.opb_clk(opb_clk),
	.la_clk(la_clk),
	.reset(reset),
	.we0(we0[2]),
	.we1(we1),
	.enout0(enout0[2]),
	.addr0(addr0[15:0]),
	.addr1(addr1[15:0]),
	.wr_data0(wr_data0[63:32]),
	.wr_data1(wr_data1[63:32]),
	.wr_data1_ext(wr_data1_ext[7:4]),

	.rd_data0(rd_data0[63:32]),
	.rd_data0_ext(rd_data0_ext[7:4])
);

monram #(
	.C_REG_LA_INPS(C_REG_LA_INPS),
	.C_REG_LA_ADDR(C_REG_LA_ADDR),
	.C_REG_BRAM_OUT(C_REG_BRAM_OUT),
	.C_DEPTH_MUL(C_DEPTH_MUL),
	.C_FAMILY(C_FAMILY)
	)
	monram_d (
	.opb_clk(opb_clk),
	.la_clk(la_clk),
	.reset(reset),
	.we0(we0[3]),
	.we1(we1),
	.enout0(enout0[3]),
	.addr0(addr0[15:0]),
	.addr1(addr1[15:0]),
	.wr_data0(wr_data0[31:0]),
	.wr_data1(wr_data1[31:0]),
	.wr_data1_ext(wr_data1_ext[3:0]),

	.rd_data0(rd_data0[31:0]),
	.rd_data0_ext(rd_data0_ext[3:0])
);

endmodule

module monram (
	input opb_clk,
	input la_clk,
	input reset,
	input we0,
	input we1,
	input enout0,
	input [15:0] addr0,
	input [15:0] addr1,
	input [31:0] wr_data0,
	input [31:0] wr_data1,
	input [3:0] wr_data1_ext,
	output [31:0] rd_data0,
	output [3:0] rd_data0_ext
);
parameter C_REG_LA_INPS = 1;
parameter C_REG_LA_ADDR = 0;
parameter C_REG_BRAM_OUT = 0;
parameter C_DEPTH_MUL = 1;
parameter C_FAMILY = "virtex4";

localparam BITS_BRAM = 32 / C_DEPTH_MUL;
localparam BITS_SP6 = 16 / C_DEPTH_MUL;

wire [3:0] unused_dopb;
wire [31:0] rd_data1;
reg [15:0] addr1_shifted_ff, we1_ff;
reg [31:0] last_wr_data1_ff;
reg [3:0] last_wr_data1_ext_ff;
reg	reset_ff = 1'b1;

wire we1_bram = (C_REG_LA_ADDR) ? we1_ff : we1;
wire [31:0] wr_data1_bram = (C_REG_LA_ADDR) ? last_wr_data1_ff[31:0] :
						wr_data1[31:0];
wire [3:0] wr_data1_ext_bram = (C_REG_LA_ADDR) ? last_wr_data1_ext_ff[3:0] :
						wr_data1_ext[3:0];

wire [15:0] addr0_shifted = (C_DEPTH_MUL == 32) ? { 1'b1, addr0[14:0] } :
			(C_DEPTH_MUL == 16) ? { 1'b1, addr0[13:0], 1'b0 } :
			(C_DEPTH_MUL == 8) ? { 1'b1, addr0[12:0], 2'b00 } :
			(C_DEPTH_MUL == 4) ? { 1'b1, addr0[11:0], 3'b000 } :
			(C_DEPTH_MUL == 2) ? { 1'b1, addr0[10:0], 4'b0000 } :
					{ 1'b1, addr0[9:0], 5'b00000 };
wire [15:0] addr1_shifted = (C_DEPTH_MUL == 32) ? { 1'b1, addr1[14:0] } :
			(C_DEPTH_MUL == 16) ? { 1'b1, addr1[13:0], 1'b0 } :
			(C_DEPTH_MUL == 8) ? { 1'b1, addr1[12:0], 2'b00 } :
			(C_DEPTH_MUL == 4) ? { 1'b1, addr1[11:0], 3'b000 } :
			(C_DEPTH_MUL == 2) ? { 1'b1, addr1[10:0], 4'b0000 } :
					{ 1'b1, addr1[9:0], 5'b00000 };

wire [15:0] addr1_bram = (C_REG_LA_ADDR) ? addr1_shifted_ff[15:0] :
							addr1_shifted[15:0];
`ifndef SIMULATION
generate
genvar gi;

if(C_FAMILY == "virtex4") begin: v4_monram
`endif	// SIMULATION: hide generate from icarus

RAMB16_S18_S18 #(
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
) ramb16_s18_s18_0 (
	.CLKA(opb_clk),
	.WEA(we0),
	.ADDRA(addr0[9:0]),
	.DIA(wr_data0[15:0]),
	.ENA(1'b1),
	.SSRA(~enout0),
	.DIPA(2'h3),

	.CLKB(la_clk),
	.WEB(we1_bram),
	.ADDRB(addr1_bram[14:5]),
	.DIB(wr_data1_bram[15:0]),
	.ENB(1'b1),
	.SSRB(1'b0),
	.DIPB(wr_data1_ext_bram[1:0]),

	.DOA(rd_data0[15:0]),
	.DOPA(rd_data0_ext[1:0]),

	.DOB(rd_data1[15:0]),
	.DOPB(unused_dopb[1:0])
);

RAMB16_S18_S18 #(
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
) ramb16_s18_s18_1 (
	.CLKA(opb_clk),
	.WEA(we0),
	.ADDRA(addr0[9:0]),
	.DIA(wr_data0[31:16]),
	.ENA(1'b1),
	.SSRA(~enout0),
	.DIPA(2'h3),

	.CLKB(la_clk),
	.WEB(we1_bram),
	.ADDRB(addr1_bram[14:5]),
	.DIB(wr_data1_bram[31:16]),
	.ENB(1'b1),
	.SSRB(1'b0),
	.DIPB(wr_data1_ext_bram[3:2]),

	.DOA(rd_data0[31:16]),
	.DOPA(rd_data0_ext[3:2]),

	.DOB(rd_data1[31:16]),
	.DOPB(unused_dopb[3:2])
);

`ifndef SIMULATION
end else if(C_FAMILY == "spartan6") begin: s6_monram

	if(C_DEPTH_MUL <= 2) begin: depthx2
		for(gi = 0; gi < 2*C_DEPTH_MUL; gi = gi + 1) begin: l_gi

// C_DEPTH_MUL=1,2.  Use BRAM parity bits to minimize BRAM usage

RAMB16BWER #(
	.DATA_WIDTH_A(18/C_DEPTH_MUL),
	.DATA_WIDTH_B(18/C_DEPTH_MUL),
	.SRVAL_A(36'h000000000),
	.SRVAL_B(36'h000000000)
	)
  ramb16bwer (
	.CLKA(opb_clk),
	.WEA({ 4 {we0}}),
	.ADDRA(addr0_shifted[14:1]),
	.DIA(wr_data0[(gi+1)*BITS_SP6-1:gi*BITS_SP6]),
	.ENA(1'b1),
	.RSTA(~enout0),
	.DIPA(4'hf),
	.REGCEA(1'b1),

	.CLKB(la_clk),
	.WEB({ 4 {we1_bram} }),
	.ADDRB(addr1_bram[14:1]),
	.DIB(wr_data1_bram[(gi+1)*BITS_SP6-1:gi*BITS_SP6]),
	.ENB(1'b1),
	.RSTB(1'b0),
	.DIPB(wr_data1_ext_bram[(gi+1)*BITS_SP6/8-1:gi*BITS_SP6/8]),
	.REGCEB(1'b0),

	.DOA(rd_data0[(gi+1)*BITS_SP6-1:gi*BITS_SP6]),
	.DOPA(rd_data0_ext[(gi+1)*BITS_SP6/8-1:gi*BITS_SP6/8]),

	.DOB(rd_data1[(gi+1)*BITS_SP6-1:gi*BITS_SP6])
	// .DOPB(unused_dopb[3:0])
);
		end
	end else begin: depthx4
// depth is 4 or more, very large
// We can't use the parity bits anymore...just generate lots of BRAMs!
		for(gi = 0; gi < C_DEPTH_MUL; gi = gi + 1) begin: l_gi

RAMB16BWER #(
	.DATA_WIDTH_A(16/C_DEPTH_MUL),
	.DATA_WIDTH_B(16/C_DEPTH_MUL),
	.SRVAL_A(36'h000000000),
	.SRVAL_B(36'h000000000)
	)
  ramb16bwer (
	.CLKA(opb_clk),
	.WEA({ 4 {we0}}),
	.ADDRA(addr0_shifted[14:1]),
	.DIA(wr_data0[(gi+1)*BITS_SP6-1:gi*BITS_SP6]),
	.ENA(1'b1),
	.RSTA(~enout0),
	.DIPA(4'hf),
	.REGCEA(1'b1),

	.CLKB(la_clk),
	.WEB({ 4 {we1_bram} }),
	.ADDRB(addr1_bram[14:1]),
	.DIB(wr_data1_bram[(gi+1)*BITS_SP6-1:gi*BITS_SP6]),
	.ENB(1'b1),
	.RSTB(1'b0),
	.DIPB(wr_data1_ext_bram[(gi+1)*BITS_SP6/8-1:gi*BITS_SP6/8]),
	.REGCEB(1'b0),

	.DOA(rd_data0[(gi+1)*BITS_SP6-1:gi*BITS_SP6]),
	.DOPA(rd_data0_ext[(gi+1)*BITS_SP6/8-1:gi*BITS_SP6/8]),

	.DOB(rd_data1[(gi+1)*BITS_SP6-1:gi*BITS_SP6])
	// .DOPB(unused_dopb[3:0])
);
		end

		for(gi = 0; gi < 4; gi = gi + BITS_SP6) begin: l_pgi
			// Now do the parity bits, each BRAM width is BITS_SP6
RAMB16BWER #(
	.DATA_WIDTH_A(16/C_DEPTH_MUL),
	.DATA_WIDTH_B(16/C_DEPTH_MUL),
	.SRVAL_A(36'h000000000),
	.SRVAL_B(36'h000000000)
	)
  ramb16bwer (
	.CLKA(opb_clk),
	.WEA({ 4 {we0}}),
	.ADDRA(addr0_shifted[14:1]),
	.DIA('h0),
	.ENA(1'b1),
	.RSTA(~enout0),
	.DIPA(4'hf),
	.REGCEA(1'b1),

	.CLKB(la_clk),
	.WEB({ 4 {we1_bram} }),
	.ADDRB(addr1_bram[14:1]),
	.DIB(wr_data1_ext_bram[gi+BITS_SP6-1:gi]),
	.ENB(1'b1),
	.RSTB(1'b0),
	.DIPB(4'h0),
	.REGCEB(1'b0),

	.DOA(rd_data0_ext[gi+BITS_SP6-1:gi])
);
		end
	end

end else begin: v5_monram

	if(C_DEPTH_MUL <= 4) begin: depthx4
		for(gi = 0; gi < C_DEPTH_MUL; gi = gi + 1) begin: l_gi

// C_DEPTH_MUL=1,2,or 4.  Use BRAM parity bits to minimize BRAM usage

RAMB36 #(
	.READ_WIDTH_A(36/C_DEPTH_MUL),
	.READ_WIDTH_B(36/C_DEPTH_MUL),
	.WRITE_WIDTH_A(36/C_DEPTH_MUL),
	.WRITE_WIDTH_B(36/C_DEPTH_MUL),
	.DOA_REG(C_REG_BRAM_OUT),
	.SRVAL_A(36'h000000000),
	.SRVAL_B(36'h000000000)
	)
  ramb36_s36_s36 (
	.CLKA(opb_clk),
	.WEA({ 4 {we0}}),
	.ADDRA(addr0_shifted[15:0]),
	.DIA(wr_data0[(gi+1)*BITS_BRAM-1:gi*BITS_BRAM]),
	.ENA(1'b1),
	.SSRA(~enout0),
	.DIPA(4'hf),
	.REGCEA(1'b1),

	.CLKB(la_clk),
	.WEB({ 4 {we1_bram} }),
	.ADDRB(addr1_bram[15:0]),
	.DIB(wr_data1_bram[(gi+1)*BITS_BRAM-1:gi*BITS_BRAM]),
	.ENB(1'b1),
	.SSRB(1'b0),
	.DIPB(wr_data1_ext_bram[(gi+1)*BITS_BRAM/8-1:gi*BITS_BRAM/8]),

	.DOA(rd_data0[(gi+1)*BITS_BRAM-1:gi*BITS_BRAM]),
	.DOPA(rd_data0_ext[(gi+1)*BITS_BRAM/8-1:gi*BITS_BRAM/8]),

	.DOB(rd_data1[(gi+1)*BITS_BRAM-1:gi*BITS_BRAM])
	// .DOPB(unused_dopb[3:0])
);
		end
	end else begin: depthx8
// depth is 8 or more, very large
// We can't use the parity bits anymore...just generate lots of BRAMs!
		for(gi = 0; gi < C_DEPTH_MUL; gi = gi + 1) begin: l_gi

RAMB36 #(
	.READ_WIDTH_A(32/C_DEPTH_MUL),
	.READ_WIDTH_B(32/C_DEPTH_MUL),
	.WRITE_WIDTH_A(32/C_DEPTH_MUL),
	.WRITE_WIDTH_B(32/C_DEPTH_MUL),
	.DOA_REG(C_REG_BRAM_OUT),
	.SRVAL_A(36'h000000000),
	.SRVAL_B(36'h000000000)
	)
  ramb36 (
	.CLKA(opb_clk),
	.WEA({ 4 {we0}}),
	.ADDRA(addr0_shifted[15:0]),
	.DIA(wr_data0[(gi+1)*BITS_BRAM-1:gi*BITS_BRAM]),
	.ENA(1'b1),
	.SSRA(~enout0),
	.DIPA(4'hf),
	.REGCEA(1'b1),

	.CLKB(la_clk),
	.WEB({ 4 {we1_bram} }),
	.ADDRB(addr1_bram[15:0]),
	.DIB(wr_data1_bram[(gi+1)*BITS_BRAM-1:gi*BITS_BRAM]),
	.ENB(1'b1),
	.SSRB(1'b0),
	.DIPB(4'hf),

	.DOA(rd_data0[(gi+1)*BITS_BRAM-1:gi*BITS_BRAM]),
	.DOB(rd_data1[(gi+1)*BITS_BRAM-1:gi*BITS_BRAM])
);
		end

		for(gi = 0; gi < 4; gi = gi + BITS_BRAM) begin: l_pgi
			// Now do the parity bits, each BRAM width is BITS_BRAM
RAMB36 #(
	.READ_WIDTH_A(32/C_DEPTH_MUL),
	.READ_WIDTH_B(32/C_DEPTH_MUL),
	.WRITE_WIDTH_A(32/C_DEPTH_MUL),
	.WRITE_WIDTH_B(32/C_DEPTH_MUL),
	.DOA_REG(C_REG_BRAM_OUT),
	.SRVAL_A(36'h000000000),
	.SRVAL_B(36'h000000000)
	)
  ramb36p (
	.CLKA(opb_clk),
	.WEA({ 4 {we0}}),
	.ADDRA(addr0_shifted[15:0]),
	.DIA('h0),
	.ENA(1'b1),
	.SSRA(~enout0),
	.DIPA(4'hf),
	.REGCEA(1'b1),

	.CLKB(la_clk),
	.WEB({ 4 {we1_bram} }),
	.ADDRB(addr1_bram[15:0]),
	.DIB(wr_data1_ext_bram[gi+BITS_BRAM-1:gi]),
	.ENB(1'b1),
	.SSRB(1'b0),
	.DIPB(4'hf),

	.DOA(rd_data0_ext[gi+BITS_BRAM-1:gi])
);
		end
	end

end
endgenerate
`endif

always @(posedge la_clk) begin
	reset_ff <= reset;
	last_wr_data1_ff[31:0] <= (~reset_ff) ? wr_data1[31:0] : 32'h0;
	last_wr_data1_ext_ff[3:0] <= (~reset_ff) ? wr_data1_ext[3:0] : 4'h0;
	we1_ff <= we1;
	addr1_shifted_ff[15:0] <= (~reset_ff) ? addr1_shifted[15:0] : 16'h0;
end

endmodule

