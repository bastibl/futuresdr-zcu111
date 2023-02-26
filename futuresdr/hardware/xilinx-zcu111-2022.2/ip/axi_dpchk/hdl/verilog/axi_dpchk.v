// $KmKId$
// Copyright 2013 ProValid, LLC

// Rev 1: DisplayPort Pattern Checker.
// 1x AXI slave interface
// 8x DP checkers (max), currently 1
// Rev 2: Add support for START_PATTERN and PATTERN_INC
// 	  But LINE_PATTERN/LINE_INC not supported.
// Rev3: Add support for checking Alpha Blending
// Rev4: Add support for BPG (BURST Pattern Generator)
// Rev5: Add support for "SLOP" for Y2R checking
// Rev6: Add support for pixel descaling(12bit to 8bit)
// Rev7: Fix DP_CHK h_cnt/v_cnt to 0 when disabled

`define SYN
`define NO_ASSERT
`define FALSE	1'b0
`define TRUE	1'b1

module axi_dpchk # (
parameter C_FAMILY = "virtex4",
parameter C_S_AXI_ID_WIDTH = 6,
parameter C_S_AXI_DATA_WIDTH = 32,
parameter C_BASEADDR = 32'ha0000000,
parameter C_HIGHADDR = 32'hafffffff,
parameter C_TRC_FILE = "dpchk.trc"

) (

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

// Live Video out signals
input		dp_live_video_out_vsync,
input		dp_live_video_out_hsync,
input		dp_live_video_out_de,
input[35:0]	dp_live_video_out_pixel1,

// Video clock
input		vid_clk_i,

output[7:0]	err_out8_o,
output [127:0]	dbg0_o,
output [127:0]	dbg1_o,
output [127:0]	dbg2_o,
output [127:0]	dbg3_o,
output [15:0]	dbg0_ext_o,
output [15:0]	dbg1_ext_o,
output [15:0]	dbg2_ext_o,
output [15:0]	dbg3_ext_o,

// BPG signals
output [35:0] bpg_out,
output bpg_hs, // HSYNC
output bpg_vs, // VSYNC
output bpg_fld,    //Int or Progressive
output bpg_de // DATA_ENABLE
);

// Now take Live Video out signals and wire them for the checker.
// Non - Live Video/Graphics RGB888 only supported!
wire[31:0]	vid_red32 = {20'd0, dp_live_video_out_pixel1[35:24]};
wire[31:0]	vid_green32 = {20'd0, dp_live_video_out_pixel1[23:12]};
wire[31:0]	vid_blue32 = {20'd0, dp_live_video_out_pixel1[11:0]};
wire		vid_v_sync = dp_live_video_out_vsync;
wire		vid_h_sync = dp_live_video_out_hsync;
wire		vid_data_en = dp_live_video_out_de;

// Register the BPG outputs
reg[35:0] bpg_out_ff;
reg bpg_hs_ff, bpg_vs_ff,bpg_de_ff; 
wire[35:0] bpg_out_int;
wire bpg_hs_int, bpg_vs_int, bpg_de_int;
assign bpg_out[35:0] = bpg_out_ff[35:0];
assign bpg_hs = bpg_hs_ff;
assign bpg_vs = bpg_vs_ff;
assign bpg_de = bpg_de_ff;

localparam DATAW = 512+64;

wire [7:0] rev = 8'h07;

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

// For test-bench
reg reg0_busy_ff = 'h0;

// Per-checker bits.
wire[7:0]	dp_irqs;
wire[7:0]	dp_chk_ready;
wire[31:0]	dp_err;

// Error output asserts when mismatch is detected. Use the IRQs bus for now
assign	dp_irqs[7:1] = 7'h0;
assign	dp_chk_ready[7:1] = 7'h0;

// reg0_stat, status register: Should optimize it a bit more.
reg[31:0]	reg0_stat_ff = 32'h0;
wire[31:0]	reg0_stat_new_errs = { 16'h0, dp_irqs[7:0], 8'h0 };
wire[31:0]	reg0_stat_cur_errs =
			reg0_stat_ff[31:0] | reg0_stat_new_errs[31:0];
wire[31:0]	reg0_stat = reg_is_wr[0] ?
			(~saxi_wdata_ff[31:0] & reg0_stat_cur_errs[31:0] ) :
					reg0_stat_cur_errs[31:0];
wire[7:0]	reg0_stat_err = reg0_stat_ff[15:8];
wire [31:0]	reg0_stat_rd = {
			rev[7:0],			// 31:24
			8'h0,				// 23:16
			reg0_stat_err[7:0],		// 15:8
			dp_chk_ready[7:0] };		// 7:0

reg[31:0]	reg1_ctrl_ff = 'h0;
wire[31:0]	reg1_ctrl = reg_is_wr[1] ?
			saxi_wdata_ff[31:0] : reg1_ctrl_ff[31:0];
wire[7:0]	reg1_ctrl_enable = reg1_ctrl_ff[7:0];
wire[7:0]	reg1_ctrl_mask = reg1_ctrl_ff[15:8];

reg[31:0]	reg2_err_ff = 32'h0;
wire[31:0]	reg2_err = dp_err[31:0];

reg[31:0]	reg3_res_ff = 32'h0;
wire[31:0]	reg3_res = reg_is_wr[3] ?
			saxi_wdata_ff[31:0] : reg3_res_ff[31:0];
wire[15:0]	reg3_res_h = reg3_res_ff[15:0];
wire[15:0]	reg3_res_v = reg3_res_ff[31:16];

reg[31:0]	reg4_srect_ff = 32'h0;
wire[31:0]	reg4_srect = reg_is_wr[4] ?
			saxi_wdata_ff[31:0] : reg4_srect_ff[31:0];
wire[15:0]	reg4_srect_v = reg4_srect_ff[15:0];
wire[15:0]	reg4_srect_h = reg4_srect_ff[31:16];

reg[31:0]	reg5_erect_ff = 32'h0;
wire[31:0]	reg5_erect = reg_is_wr[5] ?
			saxi_wdata_ff[31:0] : reg5_erect_ff[31:0];
wire[15:0]	reg5_erect_v = reg5_erect_ff[15:0];
wire[15:0]	reg5_erect_h = reg5_erect_ff[31:16];

// REG6: START_PATTERN
reg[31:0]	reg6_start_pat_ff = 32'h0;
wire[31:0]	reg6_start_pat = reg_is_wr[6] ?
			saxi_wdata_ff[31:0] : reg6_start_pat_ff[31:0];
wire[7:0]	reg6_start_pat_r = reg6_start_pat_ff[7:0];
wire[7:0]	reg6_start_pat_g = reg6_start_pat_ff[15:8];
wire[7:0]	reg6_start_pat_b = reg6_start_pat_ff[23:16];

// REG7: PATTERN_INC
reg[31:0]	reg7_patinc_ff = 32'h0;
wire[31:0]	reg7_patinc = reg_is_wr[7] ?
			saxi_wdata_ff[31:0] : reg7_patinc_ff[31:0];
wire[7:0]	reg7_patinc_r = reg7_patinc_ff[7:0];
wire[7:0]	reg7_patinc_g = reg7_patinc_ff[15:8];
wire[7:0]	reg7_patinc_b = reg7_patinc_ff[23:16];

// REG8: LINE_CNT_VBL
reg[31:0]	reg8_lcnt_ff ;
wire[31:0]	reg8_lcnt;

// REG9: START_PATTERN2 (For Stream2)
reg[31:0]	reg9_start_pat2_ff = 32'h0;
wire[31:0]	reg9_start_pat2 = reg_is_wr[9] ?
			saxi_wdata_ff[31:0] : reg9_start_pat2_ff[31:0];
wire[7:0]	reg9_start_pat2_r = reg9_start_pat2_ff[7:0];
wire[7:0]	reg9_start_pat2_g = reg9_start_pat2_ff[15:8];
wire[7:0]	reg9_start_pat2_b = reg9_start_pat2_ff[23:16];

// REG10: PATTERN_INC2 (For Stream2)
reg[31:0]	reg10_patinc2_ff = 32'h0;
wire[31:0]	reg10_patinc2 = reg_is_wr[10] ?
			saxi_wdata_ff[31:0] : reg10_patinc2_ff[31:0];
wire[7:0]	reg10_patinc2_r = reg10_patinc2_ff[7:0];
wire[7:0]	reg10_patinc2_g = reg10_patinc2_ff[15:8];
wire[7:0]	reg10_patinc2_b = reg10_patinc2_ff[23:16];

// BPG Registers

// REG11 (Control)
// [0] - Enable
// [31:1] - Reserved
reg[31:0]	reg11_res_ff = 32'h0;
wire[31:0]	reg11_res = reg_is_wr[11] ?
			saxi_wdata_ff[31:0] : reg11_res_ff[31:0];

wire reg11_enable = reg11_res_ff[0];
wire reg11_enable_pulse = reg11_res[0] & (~reg11_res_ff[0]);

// REG12 (Horizontal Timing)
// [31:30] - Reserved
// [29:20] - HSYNC_WIDTH
// [19:10] - HORZ_BACK_PORCH
// [9:0] - HORZ_FRONT_PORCH
reg[31:0]	reg12_res_ff = 32'h0;
wire[31:0]	reg12_res = reg_is_wr[12] ?
			saxi_wdata_ff[31:0] : reg12_res_ff[31:0];
wire[9:0]	reg12_hfp = reg12_res_ff[9:0];
wire[9:0]	reg12_hbp = reg12_res_ff[19:10];
wire[9:0]	reg12_hsw = reg12_res_ff[29:20];

// REG13 (Vertical Timing)
// [31:30] - Reserved
// [29:20] - VSYNC_WIDTH
// [19:10] - VERT_BACK_PORCH
// [9:0] - VERT_FRONT_PORCH
reg[31:0]	reg13_res_ff = 32'h0;
wire[31:0]	reg13_res = reg_is_wr[13] ?
			saxi_wdata_ff[31:0] : reg13_res_ff[31:0];
wire[9:0]	reg13_vfp = reg13_res_ff[9:0];
wire[9:0]	reg13_vbp = reg13_res_ff[19:10];
wire[9:0]	reg13_vsw = reg13_res_ff[29:20];

// REG14: (Slop for Stream1)
reg[31:0]	reg14_stream1_slop_ff = 32'h0;
wire[31:0]	reg14_stream1_slop = reg_is_wr[14] ?
			saxi_wdata_ff[31:0] : reg14_stream1_slop_ff[31:0];
wire[7:0]	reg14_stream1_slop_r = reg14_stream1_slop_ff[7:0];
wire[7:0]	reg14_stream1_slop_g = reg14_stream1_slop_ff[15:8];
wire[7:0]	reg14_stream1_slop_b = reg14_stream1_slop_ff[23:16];

// REG15: (Slop for Stream2)
reg[31:0]	reg15_stream2_slop_ff = 32'h0;
wire[31:0]	reg15_stream2_slop = reg_is_wr[15] ?
			saxi_wdata_ff[31:0] : reg15_stream2_slop_ff[31:0];
wire[7:0]	reg15_stream2_slop_r = reg15_stream2_slop_ff[7:0];
wire[7:0]	reg15_stream2_slop_g = reg15_stream2_slop_ff[15:8];
wire[7:0]	reg15_stream2_slop_b = reg15_stream2_slop_ff[23:16];

// REG16 and 17 debug regs
reg[31:0]	reg16_dbg_ff = 32'h0;
wire[31:0]	reg16_dbg = reg_is_wr[16] ?
			saxi_wdata_ff[31:0] : reg16_dbg_ff[31:0];

reg[31:0]	reg17_dbg_ff = 32'h0;
wire[31:0]	reg17_dbg = reg17_dbg_ff[31:0] + 32'd1;

// reg[31:0]	reg_rd_raw_ff = 32'h0;
wire[31:0]	reg_rd_raw  = 
		((saxi_addr_ff[6:2] == 5'd00) ? reg0_stat_rd[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd01) ? reg1_ctrl_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd02) ? reg2_err_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd03) ? reg3_res_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd04) ? reg4_srect_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd05) ? reg5_erect_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd06) ?
					reg6_start_pat_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd07) ? reg7_patinc_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd08) ? reg8_lcnt_ff[31:0]:32'h0) |

		((saxi_addr_ff[6:2] == 5'd09) ?
					reg9_start_pat2_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd10) ? reg10_patinc2_ff[31:0]:32'h0) |

		((saxi_addr_ff[6:2] == 5'd11) ? reg11_res_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd12) ? reg12_res_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd13) ? reg13_res_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd14) ? reg14_stream1_slop_ff[31:0] :
			32'h0) |
		((saxi_addr_ff[6:2] == 5'd15) ? reg15_stream2_slop_ff[31:0] :
			32'h0) |
		((saxi_addr_ff[6:2] == 5'd16) ? reg16_dbg_ff[31:0] : 32'h0) |
		((saxi_addr_ff[6:2] == 5'd17) ? reg17_dbg_ff[31:0] : 32'h0);

// wire [31:0]	saxi_rdata = reg_rd_raw_ff[31:0];

always @(posedge clk) begin
	reg_rd_raw_ff[31:0] <= (rst_l) ? reg_rd_raw[31:0] : 32'd0;

	reg0_stat_ff[31:0] <= (rst_l) ? reg0_stat[31:0] : 32'd0;
	reg1_ctrl_ff[31:0] <= (rst_l) ? reg1_ctrl[31:0] : 32'd0;
	reg2_err_ff[31:0] <= (rst_l) ? reg2_err[31:0] : 32'd0;
	reg3_res_ff[31:0] <= (rst_l) ? reg3_res[31:0] : 32'd0;
	reg4_srect_ff[31:0] <= (rst_l) ? reg4_srect[31:0] : 32'd0;
	reg5_erect_ff[31:0] <= (rst_l) ? reg5_erect[31:0] : 32'd0;
	reg6_start_pat_ff[31:0] <= (rst_l) ? reg6_start_pat[31:0] : 32'd0;
	reg7_patinc_ff[31:0] <= (rst_l) ? reg7_patinc[31:0] : 32'd0;
	reg8_lcnt_ff[31:0]  <= (rst_l) ? reg8_lcnt[31:0] : 32'd0;
	reg9_start_pat2_ff[31:0] <= (rst_l) ? reg9_start_pat2[31:0] : 32'd0;
	reg10_patinc2_ff[31:0] <= (rst_l) ? reg10_patinc2[31:0] : 32'd0;
	reg11_res_ff[31:0] <= (rst_l) ? reg11_res[31:0] : 32'd0;
	reg12_res_ff[31:0] <= (rst_l) ? reg12_res[31:0] : 32'd0;
	reg13_res_ff[31:0] <= (rst_l) ? reg13_res[31:0] : 32'd0;
	reg14_stream1_slop_ff[31:0] <= (rst_l) ? reg14_stream1_slop[31:0] :
						32'd0;
	reg15_stream2_slop_ff[31:0] <= (rst_l) ? reg15_stream2_slop[31:0] :
						32'd0;
	reg16_dbg_ff[31:0] <= (rst_l) ? reg16_dbg[31:0] : 32'd0;
	reg17_dbg_ff[31:0] <= (rst_l) ? reg17_dbg[31:0] : 32'd0;
	bpg_hs_ff	<=	(rst_l) ? bpg_hs_int: 1'd0;
	bpg_vs_ff	<=	(rst_l) ? bpg_vs_int: 1'd0;
	bpg_de_ff	<=	(rst_l) ? bpg_de_int: 1'd0;
	bpg_out_ff[35:0] <=	(rst_l) ? bpg_out_int[35:0]: 36'd0;
end

// --- DisplayPort stuff

dp_checker #(
	.INST_NUM(0)
) dp_chk0 (
	.clk_i(vid_clk_i),
	.rst_i(rst_l),
	.enable_i(reg1_ctrl_enable[0]),
	.h_res_i  ({ 16'h0, reg3_res_h[15:0]}),
	.v_res_i  ({ 16'h0, reg3_res_v[15:0]}),
	.rect_hs_i({ 16'h0, reg4_srect_h[15:0]}),
	.rect_vs_i({ 16'h0, reg4_srect_v[15:0]}),
	.rect_he_i({ 16'h0, reg5_erect_h[15:0]}),
	.rect_ve_i({ 16'h0, reg5_erect_v[15:0]}),
	.start_pat_r_i(reg6_start_pat_r[7:0]),
	.start_pat_g_i(reg6_start_pat_g[7:0]),
	.start_pat_b_i(reg6_start_pat_b[7:0]),
	.patinc_r_i(reg7_patinc_r[7:0]),
	.patinc_g_i(reg7_patinc_g[7:0]),
	.patinc_b_i(reg7_patinc_b[7:0]),
	.start_pat2_r_i(reg9_start_pat2_r[7:0]),
	.start_pat2_g_i(reg9_start_pat2_g[7:0]),
	.start_pat2_b_i(reg9_start_pat2_b[7:0]),
	.patinc2_r_i(reg10_patinc2_r[7:0]),
	.patinc2_g_i(reg10_patinc2_g[7:0]),
	.patinc2_b_i(reg10_patinc2_b[7:0]),
	.str1_slop_r(reg14_stream1_slop_r[7:0]),
	.str1_slop_g(reg14_stream1_slop_g[7:0]),
	.str1_slop_b(reg14_stream1_slop_b[7:0]),
	.str2_slop_r(reg15_stream2_slop_r[7:0]),
	.str2_slop_g(reg15_stream2_slop_g[7:0]),
	.str2_slop_b(reg15_stream2_slop_b[7:0]),
	.lcnt_o(reg8_lcnt[31:0]),
	.ready_o(dp_chk_ready[0]),
	.hfp_i({22'd0, reg12_hfp[9:0]}),
	.hsw_i({22'd0, reg12_hsw[9:0]}),
	.hbp_i({22'd0, reg12_hbp[9:0]}),
	.vfp_i({22'd0, reg13_vfp[9:0]}),
	.vsw_i({22'd0, reg13_vsw[9:0]}),
	.vbp_i({22'd0, reg13_vbp[9:0]}),
	.bpg_en(reg11_enable),
	.bpg_en_pulse(reg11_enable_pulse),
	.r_i(vid_red32[31:0]),
	.g_i(vid_green32[31:0]),
	.b_i(vid_blue32[31:0]),
	.h_sync_i(vid_h_sync),
	.v_sync_i(vid_v_sync),
	.data_en_i(vid_data_en),
	.err_i(32'd0),

	// To the next DP checker in the pipeline
	// For now empty, since no other checker.
	.r_o(),
	.g_o(),
	.b_o(),
	.h_sync_o(),
	.v_sync_o(),
	.data_en_o(),
	.err_o(dp_err[31:0]),
	.hs_out(bpg_hs_int),
	.vs_out(bpg_vs_int),
	.de_out(bpg_de_int),
	.pixel_out(bpg_out_int[35:0]),
	.irq_o(dp_irqs[0]),
	.dbg0_o(dp_dbg0[127:0]),
	.dbg1_o(dp_dbg1[127:0]),
	.dbg0_ext_o(dp_dbg0_ext[15:0]),
	.dbg1_ext_o(dp_dbg1_ext[15:0])
);

assign	err_out8_o = {
	7'h0, ((reg0_stat_err[7:0] & ~reg1_ctrl_mask[7:0]) != 8'h0)
};

// Output handling and debugging outputs.
assign	dbg0_o[127:0] = dp_dbg0[127:0];
assign	dbg1_o[127:0] = dp_dbg1[127:0];
assign	dbg0_ext_o[15:0] = dp_dbg0_ext[15:0];
assign	dbg1_ext_o[15:0] = dp_dbg1_ext[15:0];

// 8 bit per color only for BPG

assign	bpg_fld = 0; // Only Progressive support

endmodule

module dp_checker(
	input wire		clk_i,
	input wire		rst_i,
	input wire		enable_i,
	input wire[31:0]	h_res_i,
	input wire[31:0]	v_res_i,
	input wire[31:0]	rect_hs_i,
	input wire[31:0]	rect_vs_i,
	input wire[31:0]	rect_he_i,
	input wire[31:0]	rect_ve_i,
	input wire[7:0]		start_pat_r_i,
	input wire[7:0]		start_pat_g_i,
	input wire[7:0]		start_pat_b_i,
	input wire[7:0]		patinc_r_i,
	input wire[7:0]		patinc_g_i,
	input wire[7:0]		patinc_b_i,
	input wire[7:0]		start_pat2_r_i,
	input wire[7:0]		start_pat2_g_i,
	input wire[7:0]		start_pat2_b_i,
	input wire[7:0]		patinc2_r_i,
	input wire[7:0]		patinc2_g_i,
	input wire[7:0]		patinc2_b_i,
	input wire[7:0]		str1_slop_r,
	input wire[7:0]		str1_slop_g,
	input wire[7:0]		str1_slop_b,
	input wire[7:0]		str2_slop_r,
	input wire[7:0]		str2_slop_g,
	input wire[7:0]		str2_slop_b,
	input wire[31:0]	r_i,
	input wire[31:0]	g_i,
	input wire[31:0]	b_i,
	input wire		h_sync_i,
	input wire		v_sync_i,
	input wire		data_en_i,
	input wire[31:0]	err_i,
	input wire[31:0]	hfp_i,
	input wire[31:0]	hsw_i,
	input wire[31:0]	hbp_i,
	input wire[31:0]	vfp_i,
	input wire[31:0]	vsw_i,
	input wire[31:0]	vbp_i,
	input wire	bpg_en,
	input wire	bpg_en_pulse,
	output wire[7:0]	r_o,
	output wire[7:0]	g_o,
	output wire[7:0]	b_o,
	output wire		v_sync_o,
	output wire		h_sync_o,
	output wire		data_en_o,
	output wire[31:0]	err_o,
	output wire		irq_o,
	output wire[31:0]	lcnt_o,
	output wire		ready_o,
	output wire		hs_out,
	output wire		vs_out,
	output wire		de_out,
	output wire[35:0]	pixel_out,
	output wire[127:0]	dbg0_o,
	output wire[127:0]	dbg1_o,
	output wire[127:0]	dbg2_o,
	output wire[15:0]	dbg0_ext_o,
	output wire[15:0]	dbg1_ext_o,
	output wire[15:0]	dbg2_ext_o
);

parameter	INST_NUM = 0;

// Now write your checker--taking hsync/vsync and calculate your own
// internal horiz and vert counters.  One easy strategy is have a value
// which is the horiz or vert value on the ending edge of hsync/vsync,
// which is settable by software.  Then, when you detect that edge, the
// corresponding counter always jumps to that value.  Otherwise, it
// increments and wraps at 2199 or 1125.  Now that you have recreated the
// horiz/vert counters, you can check the pixel data.

// Descaling the pixel from 12bit to 8bit(Since current format used 8bpc)
// pixel8[7:0] = pixel12[11:4] + ((pixel12[11:4] != 8'ff) && pixel12[3]);
wire[7:0]	colr8 = r_i[11:4] + ((r_i[11:4] != 8'hff) && r_i[3]);
wire[7:0]	colg8 = g_i[11:4] + ((g_i[11:4] != 8'hff) && g_i[3]);
wire[7:0]	colb8 = b_i[11:4] + ((b_i[11:4] != 8'hff) && b_i[3]);

reg[7:0]	colr_r = 8'h0;
reg[7:0]	colg_r = 8'h0;
reg[7:0]	colb_r = 8'h0;
reg		h_sync_r = 1'h0;
reg		v_sync_r = 1'h0;
reg[31:0]	v_res_r = 'h0;
reg[31:0]	h_res_r = 'h0;
reg		data_en_r = 1'h0;
reg		enable_r = 1'b0;

//	Sync to VSYNC/HSYNC and mark checker as ready when it happens
reg[31:0]	h_end_r = 'h0;
reg[31:0]	v_end_r;
wire		chk_ready = (h_end_r[31:0] > 32'd0) && (v_end_r[31:0] > 32'd0);
wire[31:0]	h_end = h_sync_r ? h_res_r[31:0] : h_end_r[31:0];

reg[31:0]	h_cnt_r = 32'h0;
wire[31:0]	h_cnt_next = (h_cnt_r[31:0] < (h_end_r[31:0] - 32'd1)) ?
					(h_cnt_r[31:0] + 32'd1) : 32'd0;
wire		h_cnt_count = (data_en_r && chk_ready);
wire[31:0]	h_cnt = (~enable_r && v_sync_r) ? 32'd0 : (h_cnt_count ? h_cnt_next[31:0] : h_cnt_r[31:0]);

// reg[31:0]	v_end_r = 'h0;
wire[31:0]	v_end = v_sync_r ? v_res_r[31:0] : v_end_r[31:0];

wire		v_do_count = (h_cnt_r[31:0] == (h_end_r[31:0] - 1));
reg[31:0]	v_cnt_r = 32'h0;
wire[31:0]	v_cnt_next = (v_cnt_r[31:0] < (v_end_r[31:0] - 32'd1)) ?
					(v_cnt_r[31:0] + 32'd1) : 32'd0;
wire[31:0]	v_cnt = (~enable_r && v_sync_r) ? 32'd0 : (v_do_count ? v_cnt_next[31:0] : v_cnt_r[31:0]);

// wire		chk_ready = (h_end_r[31:0] > 32'd0) && (v_end_r[31:0] > 32'd0);

reg[31:0]	hv_sum_r = 32'h0;
wire[31:0]	hv_sum = (chk_ready && data_en_r) ?
			(h_cnt[31:0] + v_cnt[31:0]) : hv_sum_r[31:0];
wire h_sync_pulse = h_sync_i & (!h_sync_r);
wire de_pulse = data_en_i & (!data_en_r);

reg[31:0]	data_en_cnt_ff = 32'h0;
wire[31:0]	data_en_cnt = v_sync_r ? 0 : (de_pulse ? (data_en_cnt_ff+32'h1)
							: data_en_cnt_ff);

reg[31:0]	hsync_cnt_ff = 32'h0;
wire[31:0]	hsync_cnt = (data_en_i && (data_en_cnt ==  32'h1)) ? 0 :
			(h_sync_pulse ? (hsync_cnt_ff+32'h1) : hsync_cnt_ff);

// During VBL, offset_x updated from start_pat_r(REG6) every clock cycle.
// Similarly strategy used for inc_x update from patinc_x
reg[7:0]	offset_r_ff = 8'h0;
reg[7:0]	offset_g_ff = 8'h0;
reg[7:0]	offset_b_ff = 8'h0;
wire[7:0]	offset_r = (data_en_cnt == 32'h0) ? start_pat_r_i[7:0]:
						offset_r_ff[7:0];
wire[7:0]	offset_g = (data_en_cnt == 32'h0) ? start_pat_g_i[7:0]:
						offset_g_ff[7:0];
wire[7:0]	offset_b = (data_en_cnt == 32'h0) ? start_pat_b_i[7:0]:
						offset_b_ff[7:0];

reg[7:0]	patinc_r_ff = 8'h0;
reg[7:0]	patinc_g_ff = 8'h0;
reg[7:0]	patinc_b_ff = 8'h0;
wire[7:0]	inc_r = (data_en_cnt == 32'h0) ? patinc_r_i[7:0]
						: patinc_r_ff[7:0];
wire[7:0]	inc_g = (data_en_cnt == 32'h0) ? patinc_g_i[7:0]
						: patinc_g_ff[7:0];
wire[7:0]	inc_b = (data_en_cnt == 32'h0) ? patinc_b_i[7:0]
						: patinc_b_ff[7:0];

reg[7:0]	patr_r = 8'h0;
// 0x01 - Increment; 0xff - Decrement

wire[7:0]	patr = ((inc_r == 8'h01) ?
			(({24'h0,offset_r[7:0]}+hv_sum[31:0])%32'd256) : 8'h0) |
			((inc_r == 8'hff) ?
			(({24'h0,offset_r[7:0]}-hv_sum[31:0])%32'd256) : 8'h0) |
			((inc_r == 8'h00) ?
			({24'h0, offset_r[7:0]} % 32'd256) : 8'h0);
			
reg[7:0]	patg_r = 8'h0;
wire[7:0]	patg =  ((inc_g == 8'h01) ?
			(({24'h0,offset_g[7:0]}+hv_sum[31:0])%32'd256) : 8'h0) |
			((inc_g == 8'hff) ?
			(({24'h0,offset_g[7:0]}-hv_sum[31:0])%32'd256) : 8'h0) |
			((inc_g == 8'h00) ?
			({24'h0, offset_g[7:0]} % 32'd256) : 8'h0);

reg[7:0]	patb_r = 8'h0;
wire[7:0]	patb =  ((inc_b == 8'h01) ?
			(({24'h0,offset_b[7:0]}+hv_sum[31:0])%32'd256) : 8'h0) |
			((inc_b == 8'hff) ?
			(({24'h0,offset_b[7:0]}-hv_sum[31:0])%32'd256) : 8'h0) |
			((inc_b == 8'h00) ?
			({24'h0, offset_b[7:0]} % 32'd256) : 8'h0);

// Alpha Blending enhancement
// Logic to generate Stream2 "expected" values

reg[7:0]	offset2_r_ff = 8'h0;
reg[7:0]	offset2_g_ff = 8'h0;
reg[7:0]	offset2_b_ff = 8'h0;
wire[7:0]	offset2_r = (data_en_cnt == 32'h0) ?
					start_pat2_r_i[7:0] :
					offset2_r_ff[7:0];
wire[7:0]	offset2_g = (data_en_cnt == 32'h0) ?
					start_pat2_g_i[7:0] :
					offset2_g_ff[7:0];
wire[7:0]	offset2_b = (data_en_cnt==32'h0) ?
					start_pat2_b_i[7:0] :
					offset2_b_ff[7:0];

reg[7:0]	patinc2_r_ff = 8'h0;
reg[7:0]	patinc2_g_ff = 8'h0;
reg[7:0]	patinc2_b_ff = 8'h0;
wire[7:0]	inc2_r = (data_en_cnt == 32'h0) ? patinc2_r_i[7:0]
						: patinc2_r_ff[7:0];
wire[7:0]	inc2_g = (data_en_cnt == 32'h0) ? patinc2_g_i[7:0]
						: patinc2_g_ff[7:0];
wire[7:0]	inc2_b = (data_en_cnt == 32'h0) ? patinc2_b_i[7:0]
						: patinc2_b_ff[7:0];

reg[7:0]	pat2r_r = 8'h0;
wire[7:0]	pat2r = ((inc2_r == 8'h01) ?
			(({24'h0,offset2_r[7:0]}+hv_sum[31:0])%32'd256) :8'h0) |
			((inc2_r == 8'hff) ?
			(({24'h0,offset2_r[7:0]}-hv_sum[31:0])%32'd256) :8'h0) |
			((inc2_r == 8'h00) ?
			({24'h0, offset2_r[7:0]} % 32'd256) : 8'h0);
			
reg[7:0]	pat2g_r = 8'h0;
wire[7:0]	pat2g =  ((inc2_g == 8'h01) ?
			(({24'h0,offset2_g[7:0]}+hv_sum[31:0])%32'd256) :8'h0) |
			((inc2_g == 8'hff) ?
			(({24'h0,offset2_g[7:0]}-hv_sum[31:0])%32'd256) :8'h0) |
			((inc2_g == 8'h00) ?
			({24'h0, offset2_g[7:0]} % 32'd256) : 8'h0);

reg[7:0]	pat2b_r = 8'h0;
wire[7:0]	pat2b =  ((inc2_b == 8'h01) ?
			(({24'h0,offset2_b[7:0]}+hv_sum[31:0])%32'd256) :8'h0) |
			((inc2_b == 8'hff) ?
			(({24'h0,offset2_b[7:0]}-hv_sum[31:0])%32'd256) :8'h0) |
			((inc2_b == 8'h00) ?
			({24'h0, offset2_b[7:0]} % 32'd256) : 8'h0);

wire[7:0]	blend_patr = ((h_cnt_r[31:0] % 32'h2) == 0) ? patr_r[7:0]
								: pat2r_r[7:0];
wire[7:0]	blend_patg = ((h_cnt_r[31:0] % 32'h2) == 0) ? patg_r[7:0]
								: pat2g_r[7:0];
wire[7:0]	blend_patb = ((h_cnt_r[31:0] % 32'h2) == 0) ? patb_r[7:0]
								: pat2b_r[7:0];

wire		rect_in =
			(h_cnt_r[31:0] >= rect_hs_i[31:0]) &&
			(h_cnt_r[31:0] <= rect_he_i[31:0]) &&
			(v_cnt_r[31:0] >= rect_vs_i[31:0]) &&
			(v_cnt_r[31:0] <= rect_ve_i[31:0]);

// Pixel exact checker (old rtl)
// wire		colr_eq = (blend_patr[7:0] == colr_r[7:0]);
// wire		colg_eq = (blend_patg[7:0] == colg_r[7:0]);
// wire		colb_eq = (blend_patb[7:0] == colb_r[7:0]);

//  With Slop parameter
wire[7:0]	str1_r_max = ((patr_r[7:0] + str1_slop_r[7:0]) > 9'hff)?
				8'hff :
				(patr_r[7:0] + str1_slop_r[7:0]);
wire[7:0]	str1_r_min = (patr_r[7:0] >= str1_slop_r[7:0]) ?
				(patr_r[7:0] - str1_slop_r[7:0]):
				8'h0;
wire[7:0]	str1_g_max = ((patg_r[7:0] + str1_slop_g[7:0]) > 9'hff)?
				8'hff :
				(patg_r[7:0] + str1_slop_g[7:0]);
wire[7:0]	str1_g_min = (patg_r[7:0] >= str1_slop_g[7:0]) ?
				(patg_r[7:0] - str1_slop_g[7:0]) :
				8'h0;
wire[7:0]	str1_b_max = ((patb_r[7:0] + str1_slop_b[7:0]) > 9'hff)?
				8'hff :
				(patb_r[7:0] + str1_slop_b[7:0]);
wire[7:0]	str1_b_min = (patb_r[7:0] >= str1_slop_b[7:0]) ?
				(patb_r[7:0] - str1_slop_b[7:0]):
				8'h0;

wire[7:0]	str2_r_max = ((pat2r_r[7:0]+ str2_slop_r[7:0]) > 9'hff)?
				8'hff :
				(pat2r_r[7:0] + str2_slop_r[7:0]);
wire[7:0]	str2_r_min = (pat2r_r[7:0] >= str2_slop_r[7:0]) ?
				(pat2r_r[7:0] - str2_slop_r[7:0]):
				8'h0;
wire[7:0]	str2_g_max = ((pat2g_r[7:0]+ str2_slop_g[7:0]) > 9'hff)?
				8'hff :
				(pat2g_r[7:0] + str2_slop_g[7:0]);
wire[7:0]	str2_g_min = (pat2g_r[7:0] >= str2_slop_g[7:0]) ?
				(pat2g_r[7:0] - str2_slop_g[7:0]):
				8'h0;
wire[7:0]	str2_b_max = ((pat2b_r[7:0]+ str2_slop_b[7:0]) > 9'hff)?
				8'hff :
				(pat2b_r[7:0] + str2_slop_b[7:0]);
wire[7:0]	str2_b_min = (pat2b_r[7:0] >= str2_slop_b[7:0]) ?
				(pat2b_r[7:0] - str2_slop_b[7:0]):
				8'h0;
// Pixel comparision of RGB888

wire		colr_eq = ((h_cnt_r[31:0] % 32'h2) == 0) ?
			((colr_r[7:0] >= str1_r_min[7:0]) &&
				(str1_r_max[7:0] >= colr_r[7:0])):
			((colr_r[7:0] >= str2_r_min[7:0]) &&
				(str2_r_max[7:0] >= colr_r[7:0]));

wire		colg_eq = ((h_cnt_r[31:0] % 32'h2) == 0) ?
			((colg_r[7:0] >= str1_g_min[7:0]) &&
				(str1_g_max[7:0] >= colg_r[7:0])):
			((colg_r[7:0] >= str2_g_min[7:0]) &&
				(str2_g_max[7:0] >= colg_r[7:0]));

wire		colb_eq = ((h_cnt_r[31:0] % 32'h2) == 0) ?
			((colb_r[7:0] >= str1_b_min[7:0]) &&
				(str1_b_max[7:0] >= colb_r[7:0])):
			((colb_r[7:0] >= str2_b_min[7:0]) &&
				(str2_b_max[7:0] >= colb_r[7:0]));

reg		col_eq_r = 1'b0;
wire		col_eq = colr_eq && colg_eq && colb_eq;

wire		has_err = chk_ready && enable_r && data_en_r &&
				!col_eq;

reg[31:0]	dbg_cnt_r = 32'h0;
wire[31:0]	dbg_cnt = dbg_cnt_r[31:0] + 32'd1;

reg[31:0]	err_pos_ff;
wire[31:0]	err_pos = has_err ? err_pos_ff[31:0] :
				{v_cnt[15:0], h_cnt[15:0]};

// BURST PATGEN (BPG) Enhancement for Live Video testing
// wire[31:0]	htotal_i = h_res_i[31:0] +  hfp_i[31:0] +
// 				hbp_i[31:0] + hsw_i[31:0];

wire[31:0]	htotal_i_res_fp = h_res_i[31:0] +  hfp_i[31:0];
wire[31:0]	htotal_i_bp_sw = hbp_i[31:0] +  hsw_i[31:0];
wire[31:0]	htotal_i = htotal_i_res_fp[31:0] +  htotal_i_bp_sw[31:0];
reg[31:0]	htotal_ff;

//wire[31:0]	vtotal_i = v_res_i[31:0] +  vfp_i[31:0] +
//				vbp_i[31:0] + vsw_i[31:0];

wire[31:0]	vtotal_i_res_fp = v_res_i[31:0] +  vfp_i[31:0];
wire[31:0]	vtotal_i_bp_sw = vbp_i[31:0] +  vsw_i[31:0];
wire[31:0]	vtotal_i = vtotal_i_res_fp[31:0] +  vtotal_i_bp_sw[31:0];
reg[31:0]	vtotal_ff;

reg[31:0]	hcount_ff;
wire[31:0]	hcount_int = (hcount_ff == (htotal_ff - 32'h1)) ? 0
						: (hcount_ff + 32'h1) ;
wire[31:0]	hcount = bpg_en ? hcount_int : 0;
reg[31:0]	vcount_ff;
wire[31:0]	vcount_int = (vcount_ff == (vtotal_ff - 32'h1)) ? 0
						: (vcount_ff + 32'h1);
wire[31:0]	vcount = bpg_en ? ((hcount_ff == (htotal_ff - 32'h1))
						?  vcount_int : vcount_ff) : 0;
reg[31:0]	hfp_ff, hbp_ff, hsw_ff;
wire[31:0]	hfp = bpg_en_pulse ? hfp_i : hfp_ff;
wire[31:0]	hbp = bpg_en_pulse ? hbp_i : hbp_ff;
wire[31:0]	hsw = bpg_en_pulse ? hsw_i : hsw_ff;
reg[31:0]	vfp_ff, vbp_ff, vsw_ff;
wire[31:0]	vfp = bpg_en_pulse ? vfp_i : vfp_ff;
wire[31:0]	vbp = bpg_en_pulse ? vbp_i : vbp_ff;
wire[31:0]	vsw = bpg_en_pulse ? vsw_i : vsw_ff;
wire[31:0] 	x_out = (hcount_ff - (hsw_ff + hbp_ff));
wire[31:0] 	y_out = (vcount_ff - (vsw_ff + vbp_ff));

assign hs_out = (hcount_ff < hsw_ff);
assign de_out = (((vcount_ff >= vsw_ff + vbp_ff) &&
		(vcount_ff <= vtotal_ff - vfp_ff - 1'b1)) &&
		((hcount_ff >= hsw_ff + hbp_ff) &&
		(hcount_ff <= htotal_ff - hfp_ff - 1'b1)));
assign vs_out = (vcount_ff < vsw_ff);

// Generate a de pulse
reg de_out_ff;
wire de_sig = de_out & (!de_out_ff);

// Count de pulses
reg[31:0]	de_cnt_ff = 32'h0;
wire[31:0]	de_cnt = vs_out ? 0 : (de_sig ? (de_cnt_ff+32'h1) : de_cnt_ff);

// Take the start values from same regs for dp_chk
reg[31:0]	delta_r_ff = 32'h0;
reg[31:0]	delta_g_ff = 32'h0;
reg[31:0]	delta_b_ff = 32'h0;
wire[31:0]	delta_r = (de_cnt == 32'h0) ? {24'd0, start_pat_r_i[7:0]}:
						delta_r_ff[31:0];
wire[31:0]	delta_g = (de_cnt == 32'h0) ? {24'd0, start_pat_g_i[7:0]}:
						delta_g_ff[31:0];
wire[31:0]	delta_b = (de_cnt == 32'h0) ? {24'd0, start_pat_b_i[7:0]}:
						delta_b_ff[31:0];

// Take inc values from same regs for dp_chk
reg[7:0]	incr_r_ff = 8'h0;
reg[7:0]	incr_g_ff = 8'h0;
reg[7:0]	incr_b_ff = 8'h0;
wire[7:0]	incr_r = (de_cnt == 32'h0) ? patinc_r_i[7:0]
						: incr_r_ff[7:0];
wire[7:0]	incr_g = (de_cnt == 32'h0) ? patinc_g_i[7:0]
						: incr_g_ff[7:0];
wire[7:0]	incr_b = (de_cnt == 32'h0) ? patinc_b_i[7:0]
						: incr_b_ff[7:0];

// Form the pixel value to driven based on (x_out, y_out)
// and then the start and incr values
wire[31:0] r_data =	((incr_r == 8'h01) ?
			((delta_r[31:0] + x_out[31:0]+y_out[31:0]) % 32'd256)
					: 32'h0) |
			((incr_r == 8'hff) ?
			((delta_r[31:0] - (x_out[31:0]+y_out[31:0])) % 32'd256)
					: 32'h0) |
			((incr_r == 8'h00) ?
			(delta_r[31:0] % 32'd256) : 32'h0);
			
wire[31:0] g_data = 	((incr_g == 8'h01) ?
			((delta_g[31:0] + x_out[31:0]+y_out[31:0]) % 32'd256)
					: 32'h0) |
			((incr_g == 8'hff) ?
			((delta_g[31:0] - (x_out[31:0]+y_out[31:0])) % 32'd256)
					: 32'h0) |
			((incr_g == 8'h00) ?
			(delta_g[31:0] % 32'd256) : 32'h0);

wire[31:0] b_data = 	((incr_b == 8'h01) ?
			((delta_b[31:0] + x_out[31:0]+y_out[31:0]) % 32'd256)
					: 32'h0) |
			((incr_b == 8'hff) ?
			((delta_b[31:0] - (x_out[31:0]+y_out[31:0])) % 32'd256)
					: 32'h0) |
			((incr_b == 8'h00) ?
			(delta_b[31:0] % 32'd256) : 32'h0);

assign pixel_out[35:0] = {r_data[7:0],4'b0,g_data[7:0],4'b0,b_data[7:0],4'b0};

wire[31:0]	lcnt = (hsync_cnt == vtotal_i) ? 0 : hsync_cnt;

always @(posedge clk_i) begin
	colr_r[7:0]	<= rst_i ? colr8[7:0]		:8'h0;
	colg_r[7:0]	<= rst_i ? colg8[7:0]		:8'h0;
	colb_r[7:0]	<= rst_i ? colb8[7:0]		:8'h0;
	v_res_r[31:0]	<= rst_i ? v_res_i[31:0]	:32'h0;
	h_res_r[31:0]	<= rst_i ? h_res_i[31:0]	:32'h0;
	h_end_r[31:0]	<= rst_i ? h_end[31:0]		:32'h0;
	v_end_r[31:0]	<= rst_i ? v_end[31:0]		:32'h0;
	h_cnt_r[31:0]	<= rst_i ? h_cnt[31:0]		:32'h0;
	v_cnt_r[31:0]	<= rst_i ? v_cnt[31:0]		:32'h0;
	hv_sum_r[31:0]	<= rst_i ? hv_sum[31:0]		:32'h0;
	patr_r[7:0]	<= rst_i ? patr[7:0]		:8'h0;
	patg_r[7:0] 	<= rst_i ? patg[7:0]		:8'h0;
	patb_r[7:0] 	<= rst_i ? patb[7:0]		:8'h0;
	pat2r_r[7:0]	<= rst_i ? pat2r[7:0]		:8'h0;
	pat2g_r[7:0] 	<= rst_i ? pat2g[7:0]		:8'h0;
	pat2b_r[7:0] 	<= rst_i ? pat2b[7:0]		:8'h0;
	dbg_cnt_r[31:0] <= rst_i ? dbg_cnt[31:0]	:32'h0;
	col_eq_r	<= rst_i ? col_eq		:1'b0;
	h_sync_r	<= rst_i ? h_sync_i		:1'b0;
	v_sync_r 	<= rst_i ? v_sync_i		:1'b0;
	data_en_r	<= rst_i ? data_en_i		:1'b0;
	enable_r	<= rst_i ? enable_i		:1'b0;
	offset_r_ff[7:0]	<= rst_i ? offset_r[7:0]	:8'h0;
	offset_g_ff[7:0]	<= rst_i ? offset_g[7:0]	:8'h0;
	offset_b_ff[7:0]	<= rst_i ? offset_b[7:0]	:8'h0;
	patinc_r_ff[7:0]	<= rst_i ? inc_r[7:0]	:8'h0;
	patinc_g_ff[7:0]	<= rst_i ? inc_g[7:0]	:8'h0;
	patinc_b_ff[7:0]	<= rst_i ? inc_b[7:0]	:8'h0;
	offset2_r_ff[7:0]	<= rst_i ? offset2_r[7:0]	:8'h0;
	offset2_g_ff[7:0]	<= rst_i ? offset2_g[7:0]	:8'h0;
	offset2_b_ff[7:0]	<= rst_i ? offset2_b[7:0]	:8'h0;
	patinc2_r_ff[7:0]	<= rst_i ? inc2_r[7:0]	:8'h0;
	patinc2_g_ff[7:0]	<= rst_i ? inc2_g[7:0]	:8'h0;
	patinc2_b_ff[7:0]	<= rst_i ? inc2_b[7:0]	:8'h0;
	hsync_cnt_ff[31:0]	<= rst_i ? hsync_cnt[31:0]	:32'h0;
	data_en_cnt_ff[31:0]	<= rst_i ? data_en_cnt[31:0]	:32'h0;
	err_pos_ff[31:0]	<= rst_i ? err_pos[31:0]	:32'h0;
	hcount_ff[31:0]		<= rst_i ? hcount[31:0]		:32'h0;
	htotal_ff[31:0]		<= rst_i ? htotal_i[31:0]	:32'h0;
	hfp_ff[31:0]		<= rst_i ? hfp[31:0]		:32'h0;
	hsw_ff[31:0]		<= rst_i ? hsw[31:0]		:32'h0;
	hbp_ff[31:0]		<= rst_i ? hbp[31:0]		:32'h0;
	vcount_ff[31:0]		<= rst_i ? vcount[31:0]		:32'h0;
	vtotal_ff[31:0]		<= rst_i ? vtotal_i[31:0]	:32'h0;
	vfp_ff[31:0]		<= rst_i ? vfp[31:0]		:32'h0;
	vsw_ff[31:0]		<= rst_i ? vsw[31:0]		:32'h0;
	vbp_ff[31:0]		<= rst_i ? vbp[31:0]		:32'h0;
	de_out_ff		<= rst_i ? de_out		: 1'b0;
	de_cnt_ff[31:0]		<= rst_i ? de_cnt[31:0]		:32'h0;
	delta_r_ff[31:0]	<= rst_i ? delta_r[31:0]	:32'h0;
	delta_g_ff[31:0]	<= rst_i ? delta_g[31:0]	:32'h0;
	delta_b_ff[31:0]	<= rst_i ? delta_b[31:0]	:32'h0;
	incr_r_ff[7:0]		<= rst_i ? incr_r[7:0]	:8'h0;
	incr_g_ff[7:0]		<= rst_i ? incr_g[7:0]	:8'h0;
	incr_b_ff[7:0]		<= rst_i ? incr_b[7:0]	:8'h0;
end

wire[3:0]	err_bus_3_0 = { 2'b0, rect_in, 1'b0 };
assign	ready_o = chk_ready;
assign	err_o = (err_bus_3_0[3:0] << (4*INST_NUM)) | err_i[31:0];
assign	r_o = colr_r[7:0];
assign	g_o = colg_r[7:0];
assign	b_o = colb_r[7:0];
assign	v_sync_o = v_sync_r;
assign	h_sync_o = h_sync_r;
assign	data_en_o = data_en_r;
assign	irq_o = has_err;
assign	lcnt_o[31:0] = lcnt[31:0];

// reg[31:0]	err_pos_ff = 0;
// wire[31:0]	err_pos = has_err ? err_pos_ff[31:0] :
//				{v_cnt[15:0], h_cnt[15:0]};

assign	dbg0_o[127:0] = {

	v_end_r[15:0], h_end_r[15:0],		// 127:96

	has_err ? err_pos_ff[31:0] : 0,		// 63:32

	v_cnt_r[15:0],				// 31:16

	lcnt[11:0], has_err, v_sync_r, h_sync_r, data_en_r	// 15:0
};
assign dbg0_ext_o[15:0] = {16'h0};

assign dbg1_o[127:0] =	{
	str2_r_min[7:0], str2_r_max[7:0], str1_r_min[7:0], str1_r_max[7:0],

	// v_end_r[15:0], h_end_r[15:0],		// 127:96
	v_cnt_r[15:0],	h_cnt_r[15:0],			// 95:64

	colr_r[7:0], colg_r[7:0], colb_r[7:0],		// 63:32
	3'h0, irq_o,
	1'b0, colr_eq,  colg_eq, colb_eq,
	blend_patr[7:0], blend_patg[7:0], blend_patb[7:0],	// 31:8
	2'd0, v_sync_r, h_sync_r,			// 7:4
	chk_ready, enable_r, data_en_r, col_eq };	// 3:0

assign dbg1_ext_o[15:0] = {16'h0};

assign dbg2_o[127:0] = {
	v_res_r[15:0], h_res_r[15:0],			// 127:96

	v_res_i[15:0], h_res_i[15:0],			// 95:64

	rect_hs_i[15:0], rect_he_i[15:0],               // 63:32

	rect_vs_i[15:0], rect_ve_i[15:0] };             // 31:0

assign dbg2_ext_o[15:0] = { 16'haced};

endmodule

