// $KmKId: axi_exerciser.v,v 1.146 2020-05-25 16:09:59+00 kentd Exp $
// Copyright 2009-2020, ProValid, LLC
// ProValid Confidential Information

// Memory map:	00000-0003f = registers
//		08000-0ffff = Cmdram
//		10000-up = Slvram

module axi_exerciser
	#(
parameter C_FAMILY = "virtex4",
parameter C_OUTFILE = "ex0.mem.out",
parameter C_BASEADDR = 32'hffffffff,
parameter C_HIGHADDR = 32'h00000000,
parameter C_ENABLE_HIGHMEM = 0,
parameter C_HIGHMEM_BASEADDR = 40'hffffffff,
parameter C_HIGHMEM_HIGHADDR = 40'h00000000,
parameter C_ZERO_INVALID = 1,
parameter C_IS_AXI4 = 1,
parameter C_IS_ACE = 0,			// 1=Full ACE, 2=ACE-Lite
parameter C_IS_ACP = 0,
parameter C_IS_AFI = 0,			// 1=cannot access PLB/PCIE/SRAM mem
parameter C_AFI_NUM = 0,
parameter C_IS_PELE_GS = 0,		// 1=cannot access PLB/PCIE memories
parameter C_IS_ON_CCI400 = 0,
parameter C_IS_ON_SEMI_CCI400 = 0,
parameter C_IS_ON_SYSCACHE = 0,
parameter C_IS_FLAG0 = 0,		// Reserved for future use
parameter C_IS_FLAG1 = 0,
parameter C_IS_FLAG2 = 0,
parameter C_IS_FLAG3 = 0,
parameter C_NUM_EXCL = 8,
parameter C_SMID_WIDTH = 1,
parameter C_REGISTER_CMD = 1,
parameter C_S_RD_IN_ORDER = 0,
parameter C_S_B_IN_ORDER = 0,
parameter C_M_AXI_THREAD_ID_WIDTH = 1,
parameter C_M_AXI_DATA_WIDTH = 32,
parameter C_M_AXI_ADDR_WIDTH = 32,
parameter C_S_AXI_DATA_WIDTH = 32,
parameter C_S_AXI_ADDR_WIDTH = 32,
parameter C_S_AXI_AWUSER_WIDTH = 1,
parameter C_S_AXI_ARUSER_WIDTH = 1,
parameter C_M_AXI_AWUSER_WIDTH = 1,
parameter C_M_AXI_ARUSER_WIDTH = 1,
parameter C_S_AXI_ID_WIDTH = 1
	) (
input Clk,
input Rst_n,

input [C_S_AXI_ID_WIDTH-1:0] awid_s,
input [C_S_AXI_ADDR_WIDTH-1:0] awaddr_s,
input [7:0] awlen_s,
input [3:0] awlen3_s,
input [2:0] awsize_s,
input [1:0] awburst_s,
input [1:0] awlock_s,
input	awlock1_s,
input [3:0] awcache_s,
input [2:0] awprot_s,
input [3:0] awqos_s,
input [C_S_AXI_AWUSER_WIDTH-1:0] awuser_s,
input	awvalid_s,
output	awready_s,
input [C_S_AXI_ID_WIDTH-1:0] wid_s,
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
input [C_S_AXI_ADDR_WIDTH-1:0] araddr_s,
input [7:0] arlen_s,
input [3:0] arlen3_s,
input [2:0] arsize_s,
input [1:0] arburst_s,
input [1:0] arlock_s,
input	arlock1_s,
input [3:0] arcache_s,
input [2:0] arprot_s,
input [3:0] arqos_s,
input [C_S_AXI_ARUSER_WIDTH-1:0] aruser_s,
input	arvalid_s,
output	arready_s,
output [C_S_AXI_ID_WIDTH-1:0] rid_s,
output	rlast_s,
output [C_S_AXI_DATA_WIDTH-1:0] rdata_s,
output [1:0] rresp_s,
output	rvalid_s,
input	rready_s,

output [C_M_AXI_THREAD_ID_WIDTH-1:0] awid_m,
output [C_M_AXI_ADDR_WIDTH-1:0] awaddr_m,
output [7:0] awlen_m,
output [3:0] awlen3_m,
output [2:0] awsize_m,
output [1:0] awburst_m,
output [1:0] awlock_m,
output	awlock1_m,
output [3:0] awcache_m,
output [2:0] awprot_m,
output [3:0] awqos_m,
output [C_M_AXI_AWUSER_WIDTH-1:0] awuser_m,
output	awvalid_m,
input	awready_m,
output [C_M_AXI_THREAD_ID_WIDTH-1:0] wid_m,
output	wlast_m,
output [C_M_AXI_DATA_WIDTH-1:0] wdata_m,
output [C_M_AXI_DATA_WIDTH/8-1:0] wstrb_m,
output	wvalid_m,
input	wready_m,
input [C_M_AXI_THREAD_ID_WIDTH-1:0] bid_m,
input [1:0] bresp_m,
input	bvalid_m,
output	bready_m,

output [C_M_AXI_THREAD_ID_WIDTH-1:0] arid_m,
output [C_M_AXI_ADDR_WIDTH-1:0] araddr_m,
output [7:0] arlen_m,
output [3:0] arlen3_m,
output [2:0] arsize_m,
output [1:0] arburst_m,
output [1:0] arlock_m,
output	arlock1_m,
output [3:0] arcache_m,
output [2:0] arprot_m,
output [3:0] arqos_m,
output [C_M_AXI_ARUSER_WIDTH-1:0] aruser_m,
output	arvalid_m,
input	arready_m,
input [C_M_AXI_THREAD_ID_WIDTH-1:0] rid_m,
input	rlast_m,
input [C_M_AXI_DATA_WIDTH-1:0] rdata_m,
input [1:0] rresp_m,
input	rvalid_m,
output	rready_m,

output [C_M_AXI_THREAD_ID_WIDTH-1:0] mace_awid,
output [C_M_AXI_ADDR_WIDTH-1:0] mace_awaddr,
output [7:0] mace_awlen,
output [2:0] mace_awsize,
output [1:0] mace_awburst,
output	mace_awlock,
output [3:0] mace_awcache,
output [2:0] mace_awprot,
output [1:0] mace_awdomain,
output [2:0] mace_awsnoop,
output [1:0] mace_awbar,
output [3:0] mace_awqos,
output [C_M_AXI_AWUSER_WIDTH-1:0] mace_awuser,
output	mace_awvalid,
input	mace_awready,
output [C_M_AXI_THREAD_ID_WIDTH-1:0] mace_wid,
output	mace_wlast,
output	mace_wuser,
output [C_M_AXI_DATA_WIDTH-1:0] mace_wdata,
output [C_M_AXI_DATA_WIDTH/8-1:0] mace_wstrb,
output	mace_wvalid,
input	mace_wready,
input [C_M_AXI_THREAD_ID_WIDTH-1:0] mace_bid,
input [1:0] mace_bresp,
input	mace_bvalid,
input	mace_buser,
output	mace_bready,

output [C_M_AXI_THREAD_ID_WIDTH-1:0] mace_arid,
output [C_M_AXI_ADDR_WIDTH-1:0] mace_araddr,
output [7:0] mace_arlen,
output [2:0] mace_arsize,
output [1:0] mace_arburst,
output	mace_arlock,
output [3:0] mace_arcache,
output [2:0] mace_arprot,
output [1:0] mace_ardomain,
output [3:0] mace_arsnoop,
output [1:0] mace_arbar,
output [3:0] mace_arqos,
output [C_M_AXI_ARUSER_WIDTH-1:0] mace_aruser,
output	mace_arvalid,
input	mace_arready,
input [C_M_AXI_THREAD_ID_WIDTH-1:0] mace_rid,
input	mace_rlast,
input [C_M_AXI_DATA_WIDTH-1:0] mace_rdata,
input [3:0] mace_rresp,
input	mace_ruser,
input	mace_rvalid,
output	mace_rready,

input [C_M_AXI_ADDR_WIDTH-1:0] mace_acaddr,
input [3:0] mace_acsnoop,
input [2:0] mace_acprot,
input	mace_acvalid,
output	mace_acready,

output [4:0] mace_crresp,
output	mace_crvalid,
input	mace_crready,

output [C_M_AXI_DATA_WIDTH-1:0] mace_cddata,
output	mace_cdlast,
output	mace_cdvalid,
input	mace_cdready,

output	mace_wack,
output	mace_rack,

output	irq_out,
output	err_out,
output [127:0] dbg_out,
output [15:0] dbg_out_ext,
input	global_test_en_l

);

localparam ARBUF_WIDTH = C_S_AXI_ID_WIDTH + C_SMID_WIDTH + 56;

wire	is_axi4 = (C_IS_AXI4 != 0);
wire	is_acp = (C_IS_ACP != 0);
wire	is_ace = (C_IS_ACE != 0);
wire	is_afi = (C_IS_AFI != 0);
wire	is_pele_gs = (C_IS_PELE_GS != 0) || (C_IS_ACE >= 2);
			// C_IS_ACE >= 2 means ACE-Lite
wire	is_a53_acp = is_acp && is_axi4;
wire	is_on_syscache = (C_IS_ON_SYSCACHE != 0);
wire	is_on_cci400 = (C_IS_ON_CCI400 != 0);
wire	is_on_semi_cci400 = (C_IS_ON_SEMI_CCI400 != 0);
wire [1:0] afi_num_raw = C_AFI_NUM;
wire [1:0] afi_num = afi_num_raw[1:0] | { 1'b0, is_on_cci400 } |
					{ is_on_syscache, is_on_syscache };

wire [7:0] reg0_rev = 8'h2c;		// version, revision
wire [2:0] reg0_m_id_width = C_M_AXI_THREAD_ID_WIDTH;

wire [31:0] base_addr = C_BASEADDR;
wire [31:0] high_addr = C_HIGHADDR;
wire [31:0] addr_mask = base_addr[31:0] ^ high_addr[31:0];

reg [9:0] reg0_mr_ptr_ff = 10'h0;
reg [9:0] reg0_mw_ptr_ff = 10'h0;
reg	reg0_m_enable_ff = 1'b0;
reg	reg0_m_enable_2ff = 1'b0;
reg	reg0_m_enable_3ff = 1'b0;
reg	reg0_m_enable_4ff = 1'b0;
reg [31:0] reg1_slvctl_ff = 32'h0;
reg [31:0] reg2_err_ff = 32'h0;
reg [31:0] reg3_err_en_ff = 32'h0;
reg [31:0] reg4_mstctl_ff = 32'h0;
reg [31:0] reg9_dbgpause1_ff = 32'h0;
reg [31:0] reg10_dbgpause2_ff = 32'h0;
reg [31:0] reg11_dbgpause3_ff = 32'h0;
reg [31:0] reg14_cmdext_wr_ff = 32'h0;
reg [31:0] reg15_cmdext_rd_ff = 32'h0;

reg	mr_done_ff = 1'b0;
reg	mw_done_ff = 1'b0;
reg	global_test_en_l_ff = 1'b1;
reg	Rst_ff = 1'b1;

wire	rst_l = ~Rst_ff;

always @(posedge Clk) begin
	Rst_ff <= ~Rst_n;
	global_test_en_l_ff <= global_test_en_l;
end

wire [1:0] reg1_awready_pause_sel = reg1_slvctl_ff[1:0];
wire [1:0] reg1_arready_pause_sel = reg1_slvctl_ff[3:2];
wire [1:0] reg1_wready_pause_sel = reg1_slvctl_ff[5:4];
wire [1:0] reg1_bvalid_pause_sel = reg1_slvctl_ff[7:6];
wire [1:0] reg1_rvalid_pause_sel = reg1_slvctl_ff[9:8];
wire [1:0] reg1_bfifo_pause_sel = reg1_slvctl_ff[11:10];
wire [1:0] reg1_rdata_pause_sel = reg1_slvctl_ff[13:12];
wire	reg1_excl_oflow_enable = reg1_slvctl_ff[14];
wire	reg1_errsig_enable = reg1_slvctl_ff[15];
wire	reg1_sgl_slv_rd = reg1_slvctl_ff[16];
wire	reg1_sgl_slv_wr = reg1_slvctl_ff[17];
wire	reg1_disallow_excl = reg1_slvctl_ff[18];
wire	reg1_wrs_block_rds = reg1_slvctl_ff[19];
wire [2:0] reg1_excl_shift = reg1_slvctl_ff[22:20];
wire	reg1_dbg_slave = reg1_slvctl_ff[23];
wire	reg1_excl_smid_and_id = 0;

wire [1:0] reg4_awvalid_pause_sel = reg4_mstctl_ff[1:0];
wire [1:0] reg4_arvalid_pause_sel = reg4_mstctl_ff[3:2];
wire [1:0] reg4_wvalid_pause_sel = reg4_mstctl_ff[5:4];
wire [1:0] reg4_bready_pause_sel = reg4_mstctl_ff[7:6];
wire [1:0] reg4_rready_pause_sel = reg4_mstctl_ff[9:8];
wire [1:0] reg4_acready_pause_sel = reg4_mstctl_ff[11:10];
wire [1:0] reg4_crvalid_pause_sel = reg4_mstctl_ff[13:12];

wire	reg4_errsig_enable = reg4_mstctl_ff[15];
wire	reg4_restart = reg4_mstctl_ff[14];
wire [3:0] reg4_awqos = reg4_mstctl_ff[19:16];
wire [3:0] reg4_arqos = reg4_mstctl_ff[23:20];


wire [3:0] dbg_pause;
assign	dbg_pause[0] = 1'b0;

dbgcnt3 Dbgcnt1 (
	.Clk(Clk),
	.rst_l(rst_l),
	.glbl_en_in(~global_test_en_l_ff),
	.dbgcnt_in(reg9_dbgpause1_ff[31:0]),
	.dbg_output(dbg_pause[1])
);
dbgcnt3 Dbgcnt2 (
	.Clk(Clk),
	.rst_l(rst_l),
	.glbl_en_in(~global_test_en_l_ff),
	.dbgcnt_in(reg10_dbgpause2_ff[31:0]),
	.dbg_output(dbg_pause[2])
);
dbgcnt3 Dbgcnt3 (
	.Clk(Clk),
	.rst_l(rst_l),
	.glbl_en_in(~global_test_en_l_ff),
	.dbgcnt_in(reg11_dbgpause3_ff[31:0]),
	.dbg_output(dbg_pause[3])
);

wire [7:0] excl_arhit, excl_valid, excl_awexok;
wire [7:0] excl_ar_wr;
wire	excl_arvalid;
wire	excl_aw_agen_wr;
wire [ARBUF_WIDTH-1:0] arfifo_out;
wire	arfifo_valid;
wire [ARBUF_WIDTH-1:0] awfifo_out;
wire	awfifo_valid;
wire [8*32-1:0] excl_dbg;
wire [15:0] aw_agen_addr;

ex_excl #(
.NUM(0),
.C_NUM_EXCL(C_NUM_EXCL),
.SMID_WIDTH(C_SMID_WIDTH),
.ID_WIDTH(C_S_AXI_ID_WIDTH)
) Excl0 (
	.Clk(Clk),
	.rst_l(rst_l),
	.excl_smid_and_id(reg1_excl_smid_and_id),
	.in_arvalid(excl_arvalid),
	.in_arid(arfifo_out[56+C_S_AXI_ID_WIDTH-1:56]),
	.in_arsmid(arfifo_out[ARBUF_WIDTH-1:ARBUF_WIDTH-C_SMID_WIDTH]),
	.in_aretc(arfifo_out[53:32]),
	.in_araddr(arfifo_out[31:0]),
	.out_arhit(excl_arhit[0]),
	.out_valid(excl_valid[0]),
	.in_arwrite(excl_ar_wr[0]),

	.in_awvalid(awfifo_valid),
	.in_awid(awfifo_out[56+C_S_AXI_ID_WIDTH-1:56]),
	.in_awsmid(awfifo_out[ARBUF_WIDTH-1:ARBUF_WIDTH-C_SMID_WIDTH]),
	.in_awetc(awfifo_out[53:32]),
	.in_awaddr(awfifo_out[31:0]),
	.in_aw_agen_addr(aw_agen_addr[15:0]),
	.in_aw_agen_wr(excl_aw_agen_wr),
	.out_awexok(excl_awexok[0]),
	.out_dbg(excl_dbg[31:0])
);

ex_excl #(
.NUM(1),
.C_NUM_EXCL(C_NUM_EXCL),
.SMID_WIDTH(C_SMID_WIDTH),
.ID_WIDTH(C_S_AXI_ID_WIDTH)
) Excl1 (
	.Clk(Clk),
	.rst_l(rst_l),
	.excl_smid_and_id(reg1_excl_smid_and_id),
	.in_arvalid(excl_arvalid),
	.in_arid(arfifo_out[56+C_S_AXI_ID_WIDTH-1:56]),
	.in_arsmid(arfifo_out[ARBUF_WIDTH-1:ARBUF_WIDTH-C_SMID_WIDTH]),
	.in_aretc(arfifo_out[53:32]),
	.in_araddr(arfifo_out[31:0]),
	.out_arhit(excl_arhit[1]),
	.out_valid(excl_valid[1]),
	.in_arwrite(excl_ar_wr[1]),

	.in_awvalid(awfifo_valid),
	.in_awid(awfifo_out[56+C_S_AXI_ID_WIDTH-1:56]),
	.in_awsmid(awfifo_out[ARBUF_WIDTH-1:ARBUF_WIDTH-C_SMID_WIDTH]),
	.in_awetc(awfifo_out[53:32]),
	.in_awaddr(awfifo_out[31:0]),
	.in_aw_agen_addr(aw_agen_addr[15:0]),
	.in_aw_agen_wr(excl_aw_agen_wr),
	.out_awexok(excl_awexok[1]),
	.out_dbg(excl_dbg[63:32])
);

generate
genvar gi;
for(gi = 2; gi < 8; gi = gi + 1) begin: excl
ex_excl #(
.NUM(gi),
.C_NUM_EXCL(C_NUM_EXCL),
.SMID_WIDTH(C_SMID_WIDTH),
.ID_WIDTH(C_S_AXI_ID_WIDTH)
) Excl (
	.Clk(Clk),
	.rst_l(rst_l),
	.excl_smid_and_id(reg1_excl_smid_and_id),
	.in_arvalid(excl_arvalid),
	.in_arid(arfifo_out[56+C_S_AXI_ID_WIDTH-1:56]),
	.in_arsmid(arfifo_out[ARBUF_WIDTH-1:ARBUF_WIDTH-C_SMID_WIDTH]),
	.in_aretc(arfifo_out[53:32]),
	.in_araddr(arfifo_out[31:0]),
	.out_arhit(excl_arhit[gi]),
	.out_valid(excl_valid[gi]),
	.in_arwrite(excl_ar_wr[gi]),

	.in_awvalid(awfifo_valid),
	.in_awid(awfifo_out[56+C_S_AXI_ID_WIDTH-1:56]),
	.in_awsmid(awfifo_out[ARBUF_WIDTH-1:ARBUF_WIDTH-C_SMID_WIDTH]),
	.in_awetc(awfifo_out[53:32]),
	.in_awaddr(awfifo_out[31:0]),
	.in_aw_agen_addr(aw_agen_addr[15:0]),
	.in_aw_agen_wr(excl_aw_agen_wr),
	.out_awexok(excl_awexok[gi]),
	.out_dbg(excl_dbg[gi*32+31:gi*32])
);
end
endgenerate

reg	slv_block_rdata2_ff;

wire	slv_block_awready = (dbg_pause[3:0] >> reg1_awready_pause_sel[1:0]);
wire	slv_block_arready = (dbg_pause[3:0] >> reg1_arready_pause_sel[1:0]);
wire	slv_block_wready = (dbg_pause[3:0] >> reg1_wready_pause_sel[1:0]);
wire	slv_block_bvalid = (dbg_pause[3:0] >> reg1_bvalid_pause_sel[1:0]);
wire	slv_block_rvalid = (dbg_pause[3:0] >> reg1_rvalid_pause_sel[1:0]);
wire	slv_block_bfifo = (dbg_pause[3:0] >> reg1_bfifo_pause_sel[1:0]);
wire	slv_block_rdata = (dbg_pause[3:0] >> reg1_rdata_pause_sel[1:0]);

wire	mst_block_awvalid = (dbg_pause[3:0] >> reg4_awvalid_pause_sel[1:0]);
wire	mst_block_arvalid = (dbg_pause[3:0] >> reg4_arvalid_pause_sel[1:0]);
wire	mst_block_wvalid = (dbg_pause[3:0] >> reg4_wvalid_pause_sel[1:0]);
wire	mst_block_bready = (dbg_pause[3:0] >> reg4_bready_pause_sel[1:0]);
wire	mst_block_rready = (dbg_pause[3:0] >> reg4_rready_pause_sel[1:0]);
wire	mst_block_acready = (dbg_pause[3:0] >> reg4_acready_pause_sel[1:0]);
wire	mst_block_crvalid = (dbg_pause[3:0] >> reg4_crvalid_pause_sel[1:0]);


// For the slave interface, we need to take reads and buffer them in
//  the arfifo to allow out-of-order responses.
// Writes will queue up to 2 (address and data), and then be written to
//  slvram/regs.

wire [7:0] arlen8_s = arlen_s[7:0] | { 4'h0, arlen3_s[3:0] };
wire [31:0] ar_addr_masked = araddr_s[31:0] & addr_mask[31:0];
wire	ar_isslvram = (ar_addr_masked[22:16] != 'h0);
wire [1:0] arlock2_s = (reg1_disallow_excl || ~ar_isslvram) ? 2'b00 :
					arlock_s[1:0] | { 1'b0, arlock1_s };

wire	ar_iscmd = ~ar_isslvram && araddr_s[15];
wire [C_SMID_WIDTH-1:0] ar_smid = aruser_s[C_S_AXI_ARUSER_WIDTH-1:0];
wire [ARBUF_WIDTH-1:0] arbuf_data = {
		ar_smid[C_SMID_WIDTH-1:0],				//zz:yy
		arid_s[C_S_AXI_ID_WIDTH-1:0],				//xx:56
		ar_isslvram, ar_iscmd, arprot_s[2:0], arsize_s[2:0],	//55:48
		arburst_s[1:0], arlock2_s[1:0], arcache_s[3:0],		//47:40
		arlen8_s[7:0],						//39:32
		araddr_s[31:0] };					//31:0

wire	ar_agen0_valid, ar_agen1_valid, ar_agen2_valid, ar_agen3_valid;

wire	arfifo_notfull;
wire	arfifo_push = arvalid_s && arready_s;
wire	arfifo_pop;
reg	strv_ar_starving_ff;

ex_fifo #(
.WIDTH(ARBUF_WIDTH),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Arfifo (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(arbuf_data[ARBUF_WIDTH-1:0]),
	.in_push(arfifo_push),
	.in_pop(arfifo_pop),
	.in_block_notfull(slv_block_arready || strv_ar_starving_ff),
	.in_block_outvalid(1'b0),
	.out_data(arfifo_out[ARBUF_WIDTH-1:0]),
	.is_notfull(arfifo_notfull),
	.out_valid(arfifo_valid)
);

wire [63:0] arfifo_out64 = arfifo_out[ARBUF_WIDTH-1:0];

assign arready_s = arfifo_notfull;

reg [2:0] excl_ptr_ff;
reg	excl_bad_arhit_ff, excl_bad_oflow_ff;

wire [1:0] arfifo_out_lock = arfifo_out[45:44];
wire	excl_somehit = (excl_arhit[7:0] != 8'h00);
wire [7:0] excl_bad_arhit8 = excl_arhit[7:0] & (excl_arhit[7:0] - 8'h01);
wire	excl_bad_arhit = (excl_bad_arhit8[7:0] != 8'h00);
assign	excl_arvalid = arfifo_valid && arfifo_out_lock[0] && (C_NUM_EXCL > 0);
wire [8:0] excl_valid9 = { 1'b0, excl_valid[7:0] } + 9'h01;
wire [8:0] excl_valid_full = 9'h1 << C_NUM_EXCL;
wire	excl_bad_oflow = reg1_excl_oflow_enable && excl_arvalid &&
				~excl_somehit && excl_valid9[C_NUM_EXCL];
wire [7:0] excl_ar_wr_pre = (excl_somehit) ? excl_arhit[7:0] :
						(8'h1 << excl_ptr_ff[2:0]);
assign	excl_ar_wr[7:0] = (excl_arvalid) ? excl_ar_wr_pre[7:0] : 8'h00;
wire [2:0] excl_ptr_inc = excl_ptr_ff[2:0] + 3'b001;
wire [2:0] excl_ptr_inced = (excl_ptr_inc[2:0] >= C_NUM_EXCL) ? 3'b000 :
							excl_ptr_inc[2:0];

wire	excl_use_ptr = excl_arvalid && ~excl_somehit;
wire [2:0] excl_ptr = (excl_use_ptr) ? excl_ptr_inced[2:0] : excl_ptr_ff[2:0];
wire [1:0] ar_calc_resp = (arfifo_out_lock[0]) ? 2'b01 : 2'b00;

always @(posedge Clk) begin
	excl_ptr_ff[2:0] <= (rst_l) ? excl_ptr[2:0] : 3'b000;
	excl_bad_arhit_ff <= (rst_l) ? excl_bad_arhit : 1'b0;
	excl_bad_oflow_ff <= (rst_l) ? excl_bad_oflow : 1'b0;
end

wire	ar_agen0_pop, ar_agen1_pop, ar_agen2_pop, ar_agen3_pop;
wire	ar_agen0_done, ar_agen1_done, ar_agen2_done, ar_agen3_done;

wire [3:0] artrk_fifo_num;
wire [C_S_AXI_ID_WIDTH-1:0] artrk_in_push_id =
					arfifo_out[C_S_AXI_ID_WIDTH+55:56];
wire	ar_agen0_eff_valid = ar_agen0_valid && ~(ar_agen0_done && ar_agen0_pop);
wire	ar_agen1_eff_valid = ar_agen1_valid && ~(ar_agen1_done && ar_agen1_pop);
wire	ar_agen2_eff_valid = ar_agen2_valid && ~(ar_agen2_done && ar_agen2_pop);
wire	ar_agen3_eff_valid = ar_agen3_valid && ~(ar_agen3_done && ar_agen3_pop);
wire [3:0] ar_agen_eff_valid = { ar_agen3_eff_valid, ar_agen2_eff_valid,
				ar_agen1_eff_valid, ar_agen0_eff_valid };
wire [3:0] ar_agen_push = ~ar_agen_eff_valid[3:0] & artrk_fifo_num[3:0];
wire [3:0] artrk_clear_pos = ~ar_agen_eff_valid[3:0];
assign	arfifo_pop = arfifo_valid && (ar_agen_push[3:0] != 4'h0);

id_track #(
.FORCE_IN_ORDER(C_S_RD_IN_ORDER),
.ID_WIDTH(C_S_AXI_ID_WIDTH)
) Ar_track (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_push_id(artrk_in_push_id[C_S_AXI_ID_WIDTH-1:0]),
	.in_push(arfifo_valid),
	.in_search_id({ C_S_AXI_ID_WIDTH { 1'b0 } } ),
	.in_clear_pos(artrk_clear_pos[3:0]),
	.in_only_entry0(reg1_sgl_slv_rd),
	.out_push_pos(artrk_fifo_num[3:0]),
	.out_search_hit(),
	.out_free()
);


wire [3:0] arbuf_wrsel = (arfifo_pop) ? ar_agen_push[3:0] : 4'h0;

wire [15:0] ar_agen0_addr, ar_agen1_addr, ar_agen2_addr, ar_agen3_addr;
wire [C_S_AXI_ID_WIDTH+4-1:0] ar_agen0_id, ar_agen1_id;
wire [C_S_AXI_ID_WIDTH+4-1:0] ar_agen2_id, ar_agen3_id;
wire [C_S_AXI_DATA_WIDTH/8-1:0] ar_agen0_be, ar_agen1_be;
wire [C_S_AXI_DATA_WIDTH/8-1:0] ar_agen2_be, ar_agen3_be;

addrgen #(
.USE_ADDR_OFFSET(0),
.C_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
.ID_WIDTH(C_S_AXI_ID_WIDTH+4),
.IS_READ(1)
) Ar_agen0 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_addr(arfifo_out[15:0]),
	.in_addr_offset(arfifo_out[9:0]),
	.in_id({ arfifo_out[55:54], ar_calc_resp[1:0],
					arfifo_out[56+C_S_AXI_ID_WIDTH-1:56] }),
		// arfifo_out[55:54] = ar_isslvram, ar_iscmd
	.in_len(arfifo_out[39:32]),
	.in_size(arfifo_out[50:48]),
	.in_lastaddr(7'b000000),
	.in_burst(arfifo_out[47:46]),
	.in_push(arbuf_wrsel[0]),
	.in_pop(ar_agen0_pop),
	.out_addr(ar_agen0_addr[15:0]),
	.out_be(ar_agen0_be[C_S_AXI_DATA_WIDTH/8-1:0]),
	.out_id(ar_agen0_id[C_S_AXI_ID_WIDTH+4-1:0]),
	.out_done(ar_agen0_done),
	.out_valid(ar_agen0_valid)
);

addrgen #(
.USE_ADDR_OFFSET(0),
.C_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
.ID_WIDTH(C_S_AXI_ID_WIDTH+4),
.IS_READ(1)
) Ar_agen1 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_addr(arfifo_out[15:0]),
	.in_addr_offset(arfifo_out[9:0]),
	.in_id({ arfifo_out[55:54], ar_calc_resp[1:0],
					arfifo_out[56+C_S_AXI_ID_WIDTH-1:56] }),
	.in_len(arfifo_out[39:32]),
	.in_size(arfifo_out[50:48]),
	.in_lastaddr(7'b000000),
	.in_burst(arfifo_out[47:46]),
	.in_push(arbuf_wrsel[1]),
	.in_pop(ar_agen1_pop),
	.out_addr(ar_agen1_addr[15:0]),
	.out_be(ar_agen1_be[C_S_AXI_DATA_WIDTH/8-1:0]),
	.out_id(ar_agen1_id[C_S_AXI_ID_WIDTH+4-1:0]),
	.out_done(ar_agen1_done),
	.out_valid(ar_agen1_valid)
);

addrgen #(
.USE_ADDR_OFFSET(0),
.C_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
.ID_WIDTH(C_S_AXI_ID_WIDTH+4),
.IS_READ(1)
) Ar_agen2 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_addr(arfifo_out[15:0]),
	.in_addr_offset(arfifo_out[9:0]),
	.in_id({ arfifo_out[55:54], ar_calc_resp[1:0],
					arfifo_out[56+C_S_AXI_ID_WIDTH-1:56] }),
	.in_len(arfifo_out[39:32]),
	.in_size(arfifo_out[50:48]),
	.in_lastaddr(7'b00000),
	.in_burst(arfifo_out[47:46]),
	.in_push(arbuf_wrsel[2]),
	.in_pop(ar_agen2_pop),
	.out_addr(ar_agen2_addr[15:0]),
	.out_be(ar_agen2_be[C_S_AXI_DATA_WIDTH/8-1:0]),
	.out_id(ar_agen2_id[C_S_AXI_ID_WIDTH+4-1:0]),
	.out_done(ar_agen2_done),
	.out_valid(ar_agen2_valid)
);

addrgen #(
.USE_ADDR_OFFSET(0),
.C_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
.ID_WIDTH(C_S_AXI_ID_WIDTH+4),
.IS_READ(1)
) Ar_agen3 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_addr(arfifo_out[15:0]),
	.in_addr_offset(arfifo_out[9:0]),
	.in_id({ arfifo_out[55:54], ar_calc_resp[1:0],
					arfifo_out[56+C_S_AXI_ID_WIDTH-1:56] }),
	.in_len(arfifo_out[39:32]),
	.in_size(arfifo_out[50:48]),
	.in_lastaddr(7'b00000),
	.in_burst(arfifo_out[47:46]),
	.in_push(arbuf_wrsel[3]),
	.in_pop(ar_agen3_pop),
	.out_addr(ar_agen3_addr[15:0]),
	.out_be(ar_agen3_be[C_S_AXI_DATA_WIDTH/8-1:0]),
	.out_id(ar_agen3_id[C_S_AXI_ID_WIDTH+4-1:0]),
	.out_done(ar_agen3_done),
	.out_valid(ar_agen3_valid)
);

wire [3:0] ar_agen_sel = (ar_agen3_valid) ? 4'h8 :
			(ar_agen2_valid) ? 4'h4 :
			(ar_agen1_valid) ? 4'h2 :
			(ar_agen0_valid) ? 4'h1 : 4'h0;

wire [15:0] ar_agen_addr = ((ar_agen_sel[0]) ? ar_agen0_addr[15:0] : 16'h0) |
			((ar_agen_sel[1]) ? ar_agen1_addr[15:0] : 16'h0) |
			((ar_agen_sel[2]) ? ar_agen2_addr[15:0] : 16'h0) |
			((ar_agen_sel[3]) ? ar_agen3_addr[15:0] : 16'h0);
wire [C_S_AXI_ID_WIDTH+4-1:0] ar_agen_id =
	((ar_agen_sel[0]) ? ar_agen0_id[C_S_AXI_ID_WIDTH+4-1:0] : 1'b0) |
	((ar_agen_sel[1]) ? ar_agen1_id[C_S_AXI_ID_WIDTH+4-1:0] : 1'b0) |
	((ar_agen_sel[2]) ? ar_agen2_id[C_S_AXI_ID_WIDTH+4-1:0] : 1'b0) |
	((ar_agen_sel[3]) ? ar_agen3_id[C_S_AXI_ID_WIDTH+4-1:0] : 1'b0);
wire [1:0] ar_agen_memsel = ar_agen_id[C_S_AXI_ID_WIDTH+3:C_S_AXI_ID_WIDTH+2];
wire [63:0] ar_agen_be =
	((ar_agen_sel[0]) ? ar_agen0_be[C_S_AXI_DATA_WIDTH/8-1:0] : 32'h0) |
	((ar_agen_sel[1]) ? ar_agen1_be[C_S_AXI_DATA_WIDTH/8-1:0] : 32'h0) |
	((ar_agen_sel[2]) ? ar_agen2_be[C_S_AXI_DATA_WIDTH/8-1:0] : 32'h0) |
	((ar_agen_sel[3]) ? ar_agen3_be[C_S_AXI_DATA_WIDTH/8-1:0] : 32'h0);
wire	ar_agen_done = ((ar_agen_sel[0]) ? ar_agen0_done : 1'b0) |
			((ar_agen_sel[1]) ? ar_agen1_done : 1'b0) |
			((ar_agen_sel[2]) ? ar_agen2_done : 1'b0) |
			((ar_agen_sel[3]) ? ar_agen3_done : 1'b0);

reg [39:0] rd_reg_data_ff;
reg [C_S_AXI_ID_WIDTH-1:0] rd_reg_id_ff;
reg [(C_S_AXI_DATA_WIDTH/8)-1:0] rd_reg_be_ff;
reg	rd_reg_valid_ff, rddec6_valid_ff;
reg	reg0_m_restart_ff;
reg	err_detect_ff;
wire	rdataout_nfull;

// Read arbuf_data_ff's address.
wire [15:0] rd_reg_decode = 16'h1 << ar_agen_addr[5:2];

wire [2:0] datam_width_enc = (C_M_AXI_DATA_WIDTH == 64) ? 3'b001 :
				(C_M_AXI_DATA_WIDTH == 128) ? 3'b010 :
				(C_M_AXI_DATA_WIDTH == 256) ? 3'b011 :
				(C_M_AXI_DATA_WIDTH == 512) ? 3'b100 : 3'b000;
wire [2:0] datas_width_enc = (C_S_AXI_DATA_WIDTH == 64) ? 3'b001 :
				(C_S_AXI_DATA_WIDTH == 128) ? 3'b010 :
				(C_S_AXI_DATA_WIDTH == 256) ? 3'b011 :
				(C_S_AXI_DATA_WIDTH == 512) ? 3'b100 : 3'b000;
wire [5:0] reg5_saddr_width = C_S_AXI_ADDR_WIDTH - 32;
wire [5:0] reg5_maddr_width = C_M_AXI_ADDR_WIDTH - 32;
wire [4:0] reg5_s_id_width = C_S_AXI_ID_WIDTH;
wire [3:0] reg5_num_excl = C_NUM_EXCL;

wire [31:0] reg0_rd = { reg0_rev[7:0],					//31:24
			reg0_m_id_width[2:0], reg0_m_enable_ff,		//23:20
			reg0_mw_ptr_ff[9:0], reg0_mr_ptr_ff[9:0] };	//19:0
wire [31:0] reg1_rd = { 4'h0, reg1_slvctl_ff[27:0] };
wire [31:0] reg2_rd = reg2_err_ff[31:0];
wire [31:0] reg3_rd = reg3_err_en_ff[31:0];
wire [31:0] reg4_rd = { global_test_en_l_ff, 7'h0, reg4_mstctl_ff[23:0] };
wire [31:0] reg5_rd = { 1'b0, is_axi4, datam_width_enc[1:0],		//31:28
		datas_width_enc[1:0], is_acp, is_afi,			//27:24
		reg5_s_id_width[3:0], is_pele_gs, is_ace, afi_num[1:0],	//23:16
		reg5_num_excl[3:0],					//15:12
		is_on_semi_cci400, reg5_s_id_width[4],
			datam_width_enc[2], datas_width_enc[2],		//11:8
		reg5_saddr_width[5:2], reg5_maddr_width[5:2] };		//7:0

wire [3:0] reg7_smid_width = C_SMID_WIDTH;
wire [4:0] reg7_awuser_width = C_S_AXI_AWUSER_WIDTH;
wire [4:0] reg7_aruser_width = C_S_AXI_ARUSER_WIDTH;
wire	reg7_reg_cmd = C_REGISTER_CMD;
wire	reg7_zero_inv = C_ZERO_INVALID;
wire	reg7_rd_in_order = C_S_RD_IN_ORDER;
wire	reg7_b_in_order = C_S_B_IN_ORDER;
wire	reg7_flag0 = C_IS_FLAG0;
wire	reg7_flag1 = C_IS_FLAG1;
wire	reg7_flag2 = C_IS_FLAG2;
wire	reg7_flag3 = C_IS_FLAG3;
wire [31:0] reg7_rd = { 8'h0,						// 31:24
		reg7_flag3, reg7_flag2, reg7_flag1, reg7_flag0,		// 23:20
		2'b00, reg7_reg_cmd, reg7_awuser_width[4:0],		// 19:12
		reg7_zero_inv, reg7_rd_in_order, reg7_b_in_order,
						reg7_aruser_width[4:0],	// 11:4
		reg7_smid_width[3:0] };					// 3:0
wire [31:0] reg8_rd = 32'h0;

wire [31:0] rd_reg_data_raw =
	((rd_reg_decode[0]) ? reg0_rd[31:0] : 32'h0) |
	((rd_reg_decode[1]) ? reg1_rd[31:0] : 32'h0) |
	((rd_reg_decode[2]) ? reg2_rd[31:0] : 32'h0) |
	((rd_reg_decode[3]) ? reg3_rd[31:0] : 32'h0) |
	((rd_reg_decode[4]) ? reg4_rd[31:0] : 32'h0) |
	((rd_reg_decode[5]) ? reg5_rd[31:0] : 32'h0) |
	((rd_reg_decode[6]) ? reg2_rd[31:0] : 32'h0) |
	((rd_reg_decode[7]) ? reg7_rd[31:0] : 32'h0) |
	((rd_reg_decode[8]) ? reg8_rd[31:0] : 32'h0) |
	((rd_reg_decode[9]) ? reg9_dbgpause1_ff[31:0] : 32'h0) |
	((rd_reg_decode[10]) ? reg10_dbgpause2_ff[31:0] : 32'h0) |
	((rd_reg_decode[11]) ? reg11_dbgpause3_ff[31:0] : 32'h0) |
	((rd_reg_decode[14]) ? reg14_cmdext_wr_ff[31:0] : 32'h0) |
	((rd_reg_decode[15]) ? reg15_cmdext_rd_ff[31:0] : 32'h0);

wire	rd_reg_err = rd_reg_decode[13] && ar_agen_addr[7] &&
						(ar_agen_memsel[1:0] == 2'b00);
wire [1:0] rd_reg_rresp = (rd_reg_err) ? 2'b10 :
				ar_agen_id[C_S_AXI_ID_WIDTH+1:C_S_AXI_ID_WIDTH];
wire [39:0] rd_reg_data = {
		ar_agen_memsel[1:0], ar_agen_addr[3:2],			//39:36
		1'b0, ar_agen_done, rd_reg_rresp[1:0],			//35:32
		rd_reg_data_raw[31:0] };				//31:0
		// ar_agen_memsel[1:0] = ar_isslvram, ar_iscmd
wire [C_S_AXI_ID_WIDTH-1:0] rd_reg_id = ar_agen_id[C_S_AXI_ID_WIDTH-1:0];
wire [(C_S_AXI_DATA_WIDTH/8)-1:0] rd_reg_be =
					ar_agen_be[(C_S_AXI_DATA_WIDTH/8)-1:0];

assign	ar_agen0_pop = ar_agen_sel[0] && rdataout_nfull && ~slv_block_rdata2_ff;
assign	ar_agen1_pop = ar_agen_sel[1] && rdataout_nfull && ~slv_block_rdata2_ff;
assign	ar_agen2_pop = ar_agen_sel[2] && rdataout_nfull && ~slv_block_rdata2_ff;
assign	ar_agen3_pop = ar_agen_sel[3] && rdataout_nfull && ~slv_block_rdata2_ff;
wire	rd_reg_valid = ar_agen0_pop || ar_agen1_pop || ar_agen2_pop ||
								ar_agen3_pop;
wire	rddec6_valid = rd_reg_valid && rd_reg_decode[6] &&
					(rd_reg_data[39:38] == 2'b00);

always @(posedge Clk) begin
	rd_reg_data_ff[39:0] <= (rst_l) ? rd_reg_data[39:0] : 40'h0;
	rd_reg_id_ff[C_S_AXI_ID_WIDTH-1:0] <= (rst_l) ?
				rd_reg_id[C_S_AXI_ID_WIDTH-1:0] : 1'b0;
	rd_reg_be_ff[(C_S_AXI_DATA_WIDTH/8)-1:0] <= (rst_l) ?
				rd_reg_be[(C_S_AXI_DATA_WIDTH/8)-1:0] : 1'b0;
	rd_reg_valid_ff <= (rst_l) ? rd_reg_valid : 1'b0;
	rddec6_valid_ff <= (rst_l) ? rddec6_valid : 1'b0;
end

// Next cycle, write rd_reg_data_ff into rdata_fifo
wire [C_S_AXI_DATA_WIDTH+C_S_AXI_ID_WIDTH+8-1:0] rdata_pre;
wire [143:0] cmd_out_mr, cmd_out_mw;		// Cmdram

wire [C_S_AXI_DATA_WIDTH-1:0] slvram_rd_out;
wire [31:0] cmdram_rd_out =
		((rd_reg_data_ff[37:36] == 2'b00) ? cmd_out_mr[31:0] : 32'h0) |
		((rd_reg_data_ff[37:36] == 2'b01) ? cmd_out_mr[63:32] : 32'h0) |
		((rd_reg_data_ff[37:36] == 2'b10) ? cmd_out_mr[95:64] : 32'h0) |
		((rd_reg_data_ff[37:36] == 2'b11) ? cmd_out_mr[127:96] : 32'h0);
wire [C_S_AXI_DATA_WIDTH-1:0] rd_data_muxed =
	(rd_reg_data_ff[39]) ? slvram_rd_out[C_S_AXI_DATA_WIDTH-1:0] :
	(rd_reg_data_ff[38]) ?  { 16 { cmdram_rd_out[31:0] } } :
				{ 16 { rd_reg_data_ff[31:0] } };
wire [63:0] rd_data_be = rd_reg_be_ff[(C_S_AXI_DATA_WIDTH/8)-1:0];
wire [511:0] rd_data_mask = {
	{ 8 { rd_data_be[63] } }, { 8 { rd_data_be[62] } }, 
	{ 8 { rd_data_be[61] } }, { 8 { rd_data_be[60] } }, 
	{ 8 { rd_data_be[59] } }, { 8 { rd_data_be[58] } }, 
	{ 8 { rd_data_be[57] } }, { 8 { rd_data_be[56] } }, 
	{ 8 { rd_data_be[55] } }, { 8 { rd_data_be[54] } }, 
	{ 8 { rd_data_be[53] } }, { 8 { rd_data_be[52] } }, 
	{ 8 { rd_data_be[51] } }, { 8 { rd_data_be[50] } }, 
	{ 8 { rd_data_be[49] } }, { 8 { rd_data_be[48] } }, 
	{ 8 { rd_data_be[47] } }, { 8 { rd_data_be[46] } }, 
	{ 8 { rd_data_be[45] } }, { 8 { rd_data_be[44] } }, 
	{ 8 { rd_data_be[43] } }, { 8 { rd_data_be[42] } }, 
	{ 8 { rd_data_be[41] } }, { 8 { rd_data_be[40] } }, 
	{ 8 { rd_data_be[39] } }, { 8 { rd_data_be[38] } }, 
	{ 8 { rd_data_be[37] } }, { 8 { rd_data_be[36] } }, 
	{ 8 { rd_data_be[35] } }, { 8 { rd_data_be[34] } }, 
	{ 8 { rd_data_be[33] } }, { 8 { rd_data_be[32] } }, 
	{ 8 { rd_data_be[31] } }, { 8 { rd_data_be[30] } }, 
	{ 8 { rd_data_be[29] } }, { 8 { rd_data_be[28] } }, 
	{ 8 { rd_data_be[27] } }, { 8 { rd_data_be[26] } }, 
	{ 8 { rd_data_be[25] } }, { 8 { rd_data_be[24] } }, 
	{ 8 { rd_data_be[23] } }, { 8 { rd_data_be[22] } }, 
	{ 8 { rd_data_be[21] } }, { 8 { rd_data_be[20] } }, 
	{ 8 { rd_data_be[19] } }, { 8 { rd_data_be[18] } }, 
	{ 8 { rd_data_be[17] } }, { 8 { rd_data_be[16] } }, 
	{ 8 { rd_data_be[15] } }, { 8 { rd_data_be[14] } }, 
	{ 8 { rd_data_be[13] } }, { 8 { rd_data_be[12] } }, 
	{ 8 { rd_data_be[11] } }, { 8 { rd_data_be[10] } }, 
	{ 8 { rd_data_be[9] } }, { 8 { rd_data_be[8] } }, 
	{ 8 { rd_data_be[7] } }, { 8 { rd_data_be[6] } }, 
	{ 8 { rd_data_be[5] } }, { 8 { rd_data_be[4] } }, 
	{ 8 { rd_data_be[3] } }, { 8 { rd_data_be[2] } }, 
	{ 8 { rd_data_be[1] } }, { 8 { rd_data_be[0] } } };
wire [C_S_AXI_DATA_WIDTH-1:0] rd_data_masked =
		rd_data_muxed[C_S_AXI_DATA_WIDTH-1:0] &
					rd_data_mask[C_S_AXI_DATA_WIDTH-1:0];

ex_fifo #(
.WIDTH(C_S_AXI_DATA_WIDTH+C_S_AXI_ID_WIDTH+8),
.DEPTH(8),
.DEPTHBITS(3),
.ZERO_INVALID(C_ZERO_INVALID),
.HEADREG(1),
.FULL_LEVEL(5)
) Rdataout (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ rd_reg_id_ff[C_S_AXI_ID_WIDTH-1:0], rd_reg_data_ff[39:32],
				rd_data_masked[C_S_AXI_DATA_WIDTH-1:0] }),
	.in_push(rd_reg_valid_ff),
	.in_pop((rvalid_s && rready_s)),
	.in_block_notfull(1'b0),
	.in_block_outvalid(slv_block_rvalid),
	.out_data(rdata_pre[C_S_AXI_DATA_WIDTH+C_S_AXI_ID_WIDTH+8-1:0]),
	.is_notfull(rdataout_nfull),
	.out_valid(rvalid_s)
);

assign	rdata_s[C_S_AXI_DATA_WIDTH-1:0] = rdata_pre[C_S_AXI_DATA_WIDTH-1:0];
assign	rresp_s[1:0] = rdata_pre[C_S_AXI_DATA_WIDTH+2-1:C_S_AXI_DATA_WIDTH];
assign	rlast_s = rdata_pre[C_S_AXI_DATA_WIDTH+2];
assign	rid_s[C_S_AXI_ID_WIDTH-1:0] =
	rdata_pre[C_S_AXI_DATA_WIDTH+C_S_AXI_ID_WIDTH+7:C_S_AXI_DATA_WIDTH+8];


// Slave writes
wire [7:0] awlen8_s = awlen_s[7:0] | { 4'h0, awlen3_s[3:0] };
wire [1:0] awlock2_s = awlock_s[1:0] | { 1'b0, awlock1_s };

wire [C_SMID_WIDTH-1:0] aw_smid = awuser_s[C_S_AXI_AWUSER_WIDTH-1:0];
wire [31:0] aw_addr_masked = awaddr_s[31:0] & addr_mask[31:0];
wire	aw_isslvram = (aw_addr_masked[22:16] != 'h0);
wire	aw_iscmd = ~aw_isslvram && awaddr_s[15];
wire [ARBUF_WIDTH-1:0] awbuf_rawdata = {
		aw_smid[C_SMID_WIDTH-1:0],				//zz:yy
		awid_s[C_S_AXI_ID_WIDTH-1:0],				//xx:56
		aw_isslvram, aw_iscmd, awprot_s[2:0], awsize_s[2:0],	//55:48
		awburst_s[1:0], awlock2_s[1:0], awcache_s[3:0],		//47:40
		awlen8_s[7:0],						//39:32
		awaddr_s[31:0] };					//31:0
wire	awbuf_valid = awvalid_s && awready_s;

wire	awfifo_notfull;
wire	aw_agen_write;
reg	strv_b_starving_ff;

ex_fifo #(
.WIDTH(ARBUF_WIDTH),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Awfifo (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(awbuf_rawdata[ARBUF_WIDTH-1:0]),
	.in_push(awbuf_valid),
	.in_pop(aw_agen_write),
	.in_block_notfull(slv_block_awready || strv_b_starving_ff),
	.in_block_outvalid(1'b0),
	.out_data(awfifo_out[ARBUF_WIDTH-1:0]),
	.is_notfull(awfifo_notfull),
	.out_valid(awfifo_valid)
);

wire [63:0] awfifo_out64 = awfifo_out[ARBUF_WIDTH-1:0];
assign awready_s = awfifo_notfull;


wire	aw_agen_valid;

wire	awfifo_out_is_excl = awfifo_out[44];
assign	aw_agen_write = awfifo_valid && ~aw_agen_valid;

wire	aw_err = (awfifo_out[55:54] == 2'b00) && (awfifo_out[5:2] == 4'hd) &&
					awfifo_out[7];
				// writing to reg13, at 0xb4
wire	excl_wr_ok = (excl_awexok[7:0] != 8'h0);
wire [1:0] awfifo_out_excl = (awfifo_out_is_excl && excl_wr_ok) ? 2'b01 : 2'b00;
wire	awfifo_out_null = aw_err || (awfifo_out_is_excl && ~excl_wr_ok);
wire [1:0] awfifo_out_resp = (aw_err) ? 2'b10 : awfifo_out_excl[1:0];


wire [C_S_AXI_ID_WIDTH+5-1:0] aw_agen_id;
wire	aw_agen_pop;
wire	aw_agen_done;
wire [C_S_AXI_DATA_WIDTH/8-1:0] aw_agen_be;
addrgen #(
.USE_ADDR_OFFSET(0),
.C_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
.ID_WIDTH(C_S_AXI_ID_WIDTH+5),
.IS_READ(0)
) Aw_agen (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_addr(awfifo_out[15:0]),
	.in_addr_offset(awfifo_out[9:0]),
	.in_id({ awfifo_out[55:54], awfifo_out_resp[1:0], awfifo_out_null,
					awfifo_out[56+C_S_AXI_ID_WIDTH-1:56]}),
	.in_len(awfifo_out[39:32]),
	.in_size(awfifo_out[50:48]),
	.in_lastaddr(7'b00000),
	.in_burst(awfifo_out[47:46]),
	.in_push(aw_agen_write),
	.in_pop(aw_agen_pop),
	.out_addr(aw_agen_addr[15:0]),
	.out_id(aw_agen_id[C_S_AXI_ID_WIDTH+5-1:0]),
	.out_be(aw_agen_be[C_S_AXI_DATA_WIDTH/8-1:0]),
	.out_done(aw_agen_done),
	.out_valid(aw_agen_valid)
);

wire [1:0] aw_agen_memsel = aw_agen_id[C_S_AXI_ID_WIDTH+5-1:C_S_AXI_ID_WIDTH+3];

wire	excl_aw_agen_nulled = aw_agen_id[C_S_AXI_ID_WIDTH];
assign	excl_aw_agen_wr = aw_agen_valid && ~excl_aw_agen_nulled;

// Buffer write data in a fifo
wire	wbuf_valid = wvalid_s && wready_s;

wire	wbuf_pop;
wire [C_S_AXI_DATA_WIDTH*9/8+1-1:0] wfifo_out;
wire	wfifo_notfull;
wire	wfifo_valid;

ex_fifo #(
.WIDTH(C_S_AXI_DATA_WIDTH*9/8+1),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Wfifo (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ wlast_s, wstrb_s[C_S_AXI_DATA_WIDTH/8-1:0],
				wdata_s[C_S_AXI_DATA_WIDTH-1:0] }),
	.in_push(wbuf_valid),
	.in_pop(wbuf_pop),
	.in_block_notfull(slv_block_wready),
	.in_block_outvalid(1'b0),
	.out_data(wfifo_out[C_S_AXI_DATA_WIDTH*9/8+1-1:0]),
	.is_notfull(wfifo_notfull),
	.out_valid(wfifo_valid)
);

assign wready_s = wfifo_notfull;

// Buffer bresps in fifos as well
wire [C_S_AXI_ID_WIDTH-1:0] bbuf_id = aw_agen_id[C_S_AXI_ID_WIDTH-1:0];
wire [1:0] bbuf_resp = aw_agen_id[C_S_AXI_ID_WIDTH+2:C_S_AXI_ID_WIDTH+1];
wire [C_S_AXI_ID_WIDTH+2-1:0] bbuf_rawdata = {
			bbuf_resp[1:0], bbuf_id[C_S_AXI_ID_WIDTH-1:0] };

wire [3:0] btrk_fifo_num, btrk_free;
wire	bfifo0_pop, bfifo1_pop, bfifo2_pop, bfifo3_pop;
wire	bfifo0_notfull, bfifo1_notfull, bfifo2_notfull, bfifo3_notfull;
wire	bfifo0_valid, bfifo1_valid, bfifo2_valid, bfifo3_valid;
wire [C_S_AXI_ID_WIDTH+2-1:0] bfifo0_out, bfifo1_out, bfifo2_out, bfifo3_out;

wire [C_S_AXI_ID_WIDTH-1:0] btrk_in_push_id = bbuf_id[C_S_AXI_ID_WIDTH-1:0];
wire [3:0] b_fifo_valid = { bfifo3_valid, bfifo2_valid,
				bfifo1_valid, bfifo0_valid };
wire [3:0] b_fifo_push = ~b_fifo_valid[3:0] & btrk_fifo_num[3:0];
wire [3:0] btrk_clear_pos = ~b_fifo_valid[3:0];
wire	btrk_push = aw_agen_pop && aw_agen_done;

wire [C_S_AXI_ID_WIDTH-1:0] dummy_search_id = 32'h0;

id_track #(
.FORCE_IN_ORDER(C_S_B_IN_ORDER),
.ID_WIDTH(C_S_AXI_ID_WIDTH)
) B_track (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_push_id(btrk_in_push_id[C_S_AXI_ID_WIDTH-1:0]),
	.in_push(btrk_push),
	.in_search_id(dummy_search_id[C_S_AXI_ID_WIDTH-1:0]),
	.in_clear_pos(btrk_clear_pos[3:0]),
	.in_only_entry0(reg1_sgl_slv_wr),
	.out_push_pos(btrk_fifo_num[3:0]),
	.out_search_hit(),
	.out_free(btrk_free[3:0])
);

ex_fifo #(
.WIDTH(C_S_AXI_ID_WIDTH+2),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(0),
.FULL_LEVEL(5)
) B_fifo0 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(bbuf_rawdata[C_S_AXI_ID_WIDTH+2-1:0]),
	.in_push(btrk_fifo_num[0]),
	.in_pop(bfifo0_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(bfifo0_out[C_S_AXI_ID_WIDTH+2-1:0]),
	.is_notfull(bfifo0_notfull),
	.out_valid(bfifo0_valid)
);

ex_fifo #(
.WIDTH(C_S_AXI_ID_WIDTH+2),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(0),
.FULL_LEVEL(5)
) B_fifo1 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(bbuf_rawdata[C_S_AXI_ID_WIDTH+2-1:0]),
	.in_push(btrk_fifo_num[1]),
	.in_pop(bfifo1_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(bfifo1_out[C_S_AXI_ID_WIDTH+2-1:0]),
	.is_notfull(bfifo1_notfull),
	.out_valid(bfifo1_valid)
);

ex_fifo #(
.WIDTH(C_S_AXI_ID_WIDTH+2),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(0),
.FULL_LEVEL(5)
) B_fifo2 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(bbuf_rawdata[C_S_AXI_ID_WIDTH+2-1:0]),
	.in_push(btrk_fifo_num[2]),
	.in_pop(bfifo2_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(bfifo2_out[C_S_AXI_ID_WIDTH+2-1:0]),
	.is_notfull(bfifo2_notfull),
	.out_valid(bfifo2_valid)
);

ex_fifo #(
.WIDTH(C_S_AXI_ID_WIDTH+2),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(0),
.FULL_LEVEL(5)
) B_fifo3 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(bbuf_rawdata[C_S_AXI_ID_WIDTH+2-1:0]),
	.in_push(btrk_fifo_num[3]),
	.in_pop(bfifo3_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(bfifo3_out[C_S_AXI_ID_WIDTH+2-1:0]),
	.is_notfull(bfifo3_notfull),
	.out_valid(bfifo3_valid)
);


wire [C_S_AXI_ID_WIDTH+2-1:0] bfifo_out;
wire	bfifo_valid;
wire	bfifo_notfull;

wire [3:0] bfifo_sel = (bfifo3_valid) ? 4'h8 :
			(bfifo2_valid) ? 4'h4 :
			(bfifo1_valid) ? 4'h2 :
			(bfifo0_valid) ? 4'h1 : 4'h0;

assign	bfifo0_pop = bfifo_notfull && bfifo_sel[0];
assign	bfifo1_pop = bfifo_notfull && bfifo_sel[1];
assign	bfifo2_pop = bfifo_notfull && bfifo_sel[2];
assign	bfifo3_pop = bfifo_notfull && bfifo_sel[3];

wire [C_S_AXI_ID_WIDTH+2-1:0] bfifo_in_data =
		((bfifo_sel[0]) ? bfifo0_out[C_S_AXI_ID_WIDTH+2-1:0] : 1'b0) |
		((bfifo_sel[1]) ? bfifo1_out[C_S_AXI_ID_WIDTH+2-1:0] : 1'b0) |
		((bfifo_sel[2]) ? bfifo2_out[C_S_AXI_ID_WIDTH+2-1:0] : 1'b0) |
		((bfifo_sel[3]) ? bfifo3_out[C_S_AXI_ID_WIDTH+2-1:0] : 1'b0);

wire	bfifo_pop = bfifo_valid && bready_s;
wire	bfifo_push = bfifo_notfull && (bfifo_sel[3:0] != 4'h0);

ex_fifo #(
.WIDTH(C_S_AXI_ID_WIDTH+2),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.ZERO_INVALID(C_ZERO_INVALID),
.FULL_LEVEL(5)
) Bfifo (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(bfifo_in_data[C_S_AXI_ID_WIDTH+2-1:0]),
	.in_push(bfifo_push),
	.in_pop(bfifo_pop),
	.in_block_notfull(slv_block_bfifo),
	.in_block_outvalid(slv_block_bvalid),
	.out_data(bfifo_out[C_S_AXI_ID_WIDTH+2-1:0]),
	.is_notfull(bfifo_notfull),
	.out_valid(bfifo_valid)
);

assign	wbuf_pop = wfifo_valid && aw_agen_valid &&
			bfifo0_notfull && bfifo1_notfull && bfifo2_notfull &&
			bfifo3_notfull && (btrk_free[3:0] != 4'h0);
assign	aw_agen_pop = wbuf_pop;

wire	wfifo_bad_last = wbuf_pop &&
			(aw_agen_done != wfifo_out[C_S_AXI_DATA_WIDTH*9/8]);
wire [C_S_AXI_DATA_WIDTH/8-1:0] wfifo_out_be =
			wfifo_out[C_S_AXI_DATA_WIDTH*9/8-1:C_S_AXI_DATA_WIDTH];

wire	wfifo_bad_be_pre = (~aw_agen_be[C_S_AXI_DATA_WIDTH/8-1:0] &
			wfifo_out_be[C_S_AXI_DATA_WIDTH/8-1:0]) != 8'h0;
wire	wfifo_bad_be = wbuf_pop && wfifo_bad_be_pre;


assign bresp_s[1:0] = bfifo_out[C_S_AXI_ID_WIDTH+1:C_S_AXI_ID_WIDTH];
assign bid_s[C_S_AXI_ID_WIDTH-1:0] = bfifo_out[C_S_AXI_ID_WIDTH-1:0];
assign bvalid_s = bfifo_valid;

reg [6:0] strv_ar_cntr_ff, strv_b_cntr_ff;
reg [3:0] strv_ar_pend_ff, strv_ar_pend2_ff, strv_b_pend_ff, strv_b_pend2_ff;
reg	strv_ar_cntr_wrap_ff, strv_b_cntr_wrap_ff;

wire	slv_wr_pending = awfifo_valid || aw_agen_valid;
wire	slv_block_rdata2 = (reg1_wrs_block_rds && slv_wr_pending) ? ~bfifo_push:
					slv_block_rdata;
		// Don't block rd if a write just completed, avoid starvation
		//  and override slv_block_rdata if block_rds && wr_pending.

wire [3:0] strv_ar_valids = { ar_agen3_valid, ar_agen2_valid,
					ar_agen1_valid, ar_agen0_valid };
wire [3:0] strv_ar_pops = { ar_agen3_pop, ar_agen2_pop,
					ar_agen1_pop, ar_agen0_pop };
wire [6:0] strv_ar_cntr_inced = strv_ar_cntr_ff[6:0] + 7'h01;
wire [6:0] strv_ar_cntr = (strv_ar_valids[3:0] == 4'h0) ? 7'h00 :
						strv_ar_cntr_inced[6:0];
wire	strv_ar_cntr_wrap = (strv_ar_cntr_ff[6:0] == 7'h7f);
wire [3:0] strv_ar_pend = (strv_ar_starving_ff) ? 4'h0 :
				(strv_ar_cntr_wrap_ff) ? strv_ar_valids[3:0] :
				(strv_ar_pend_ff[3:0] & ~strv_ar_pops[3:0]);
wire [3:0] strv_ar_pend2 = (strv_ar_starving_ff) ? 4'h0 :
			(strv_ar_cntr_wrap_ff) ? strv_ar_pend_ff[3:0] :
					strv_ar_pend2_ff[3:0];
wire [3:0] strv_ar_starving_set = strv_ar_pend2_ff[3:0] & strv_ar_pend_ff[3:0];
wire	strv_ar_starving = (strv_ar_valids[3:0] != 4'h0) &&
		((strv_ar_starving_set[3:0] != 4'h0) || strv_ar_starving_ff);

// And do B as well
wire [3:0] strv_b_valids = { bfifo3_valid, bfifo2_valid,
						bfifo1_valid, bfifo0_valid };
wire [3:0] strv_b_pops = { bfifo3_pop, bfifo2_pop, bfifo1_pop, bfifo0_pop };
wire [6:0] strv_b_cntr_inced = strv_b_cntr_ff[6:0] + 7'h01;
wire [6:0] strv_b_cntr = (strv_b_valids[3:0] == 4'h0) ? 7'h00 :
						strv_b_cntr_inced[6:0];
wire	strv_b_cntr_wrap = (strv_b_cntr_ff[6:0] == 7'h7f);
wire [3:0] strv_b_pend = (strv_b_starving_ff) ? 4'h0 :
				(strv_b_cntr_wrap_ff) ? strv_b_valids[3:0] :
				(strv_b_pend_ff[3:0] & ~strv_b_pops[3:0]);
wire [3:0] strv_b_pend2 = (strv_b_starving_ff) ? 4'h0 :
			(strv_b_cntr_wrap_ff) ? strv_b_pend_ff[3:0] :
					strv_b_pend2_ff[3:0];
wire [3:0] strv_b_starving_set = strv_b_pend2_ff[3:0] & strv_b_pend_ff[3:0];
wire	strv_b_starving = (strv_b_valids[3:0] != 4'h0) &&
		((strv_b_starving_set[3:0] != 4'h0) || strv_b_starving_ff);


always @(posedge Clk) begin
	slv_block_rdata2_ff <= (rst_l) ? slv_block_rdata2 : 1'b0;
	strv_ar_cntr_ff[6:0] <= (rst_l) ? strv_ar_cntr[6:0] : 7'h00;
	strv_ar_pend_ff[3:0] <= (rst_l) ? strv_ar_pend[3:0] : 4'h0;
	strv_ar_pend2_ff[3:0] <= (rst_l) ? strv_ar_pend2[3:0] : 4'h0;
	strv_ar_cntr_wrap_ff <= (rst_l) ? strv_ar_cntr_wrap : 1'b0;
	strv_ar_starving_ff <= (rst_l) ? strv_ar_starving : 1'b0;
	strv_b_cntr_ff[6:0] <= (rst_l) ? strv_b_cntr[6:0] : 7'h00;
	strv_b_pend_ff[3:0] <= (rst_l) ? strv_b_pend[3:0] : 4'h0;
	strv_b_pend2_ff[3:0] <= (rst_l) ? strv_b_pend2[3:0] : 4'h0;
	strv_b_cntr_wrap_ff <= (rst_l) ? strv_b_cntr_wrap : 1'b0;
	strv_b_starving_ff <= (rst_l) ? strv_b_starving : 1'b0;
end


wire [9:0] reg0_mr_ptr_update, reg0_mw_ptr_update;	// Will be set by mr/mw

wire	wr_reg_isreg = (aw_agen_memsel[1:0] == 2'b00) && aw_agen_pop &&
							~aw_agen_addr[7];
wire [15:0] wr_reg_decode = { 15'h0, wr_reg_isreg } << aw_agen_addr[5:2];
wire [11:0] wr_reg_shift = (C_S_AXI_DATA_WIDTH == 32) ? 12'h0 :
		(C_S_AXI_DATA_WIDTH == 64) ? { 6'h0, aw_agen_addr[2], 5'h0 } :
		(C_S_AXI_DATA_WIDTH == 128) ? { 5'h0, aw_agen_addr[3:2], 5'h0 }:
		(C_S_AXI_DATA_WIDTH == 256) ? { 4'h0, aw_agen_addr[4:2], 5'h0 }:
					{ 3'b0, aw_agen_addr[5:2], 5'h0 };
wire [31:0] wr_reg_data = wfifo_out[C_S_AXI_DATA_WIDTH-1:0] >>
							wr_reg_shift[11:0];

wire	reg0_m_restart = reg4_restart && ~reg0_m_enable_ff &&
				~reg0_m_enable_2ff && ~err_detect_ff;
wire [9:0] reg0_mr_ptr = (wr_reg_decode[0]) ? wr_reg_data[9:0] :
			(reg0_m_restart) ? 10'h0 : reg0_mr_ptr_update[9:0];
wire [9:0] reg0_mw_ptr = (wr_reg_decode[0]) ? wr_reg_data[19:10] :
			(reg0_m_restart) ? 10'h0 : reg0_mw_ptr_update[9:0];
wire	reg0_m_disable = mr_done_ff && mw_done_ff;
wire	reg0_m_enable = (wr_reg_decode[0]) ? wr_reg_data[20] :
		(reg0_m_disable) ? 1'b0 : (reg0_m_restart_ff) ? 1'b1 :
							reg0_m_enable_ff;

wire [31:0] reg1_slvctl = (wr_reg_decode[1]) ? wr_reg_data[31:0] :
							reg1_slvctl_ff[31:0];
wire [31:0] reg2_err_pre2 = (wr_reg_decode[2]) ?
			~wr_reg_data[31:0] & reg2_err_ff[31:0] :
							reg2_err_ff[31:0];
wire [31:0] reg3_err_en = (wr_reg_decode[3]) ? wr_reg_data[31:0] :
							reg3_err_en_ff[31:0];
wire [31:0] reg4_mstctl = (wr_reg_decode[4]) ? wr_reg_data[31:0] :
						reg4_mstctl_ff[31:0];

wire [31:0] reg9_dbgpause1 = (wr_reg_decode[9]) ? wr_reg_data[31:0] :
						reg9_dbgpause1_ff[31:0];
wire [31:0] reg10_dbgpause2 = (wr_reg_decode[10]) ? wr_reg_data[31:0] :
						reg10_dbgpause2_ff[31:0];
wire [31:0] reg11_dbgpause3 = (wr_reg_decode[11]) ? wr_reg_data[31:0] :
						reg11_dbgpause3_ff[31:0];
wire [31:0] reg14_cmdext_wr = (wr_reg_decode[14]) ? wr_reg_data[31:0]:
						reg14_cmdext_wr_ff[31:0];
wire [31:0] reg15_cmdext_rd = { 16'h0, cmd_out_mr[143:128] };

wire [31:0] reg2_err_pre = { ~rddec6_valid_ff && reg2_err_pre2[31],
							reg2_err_pre2[30:0] };
wire [31:16] err_new_mst;
wire [15:0] err_new_slv;
wire [31:0] reg2_err = reg2_err_pre[31:0] |
	(reg3_err_en_ff[31:0] & { err_new_mst[31:16], err_new_slv[15:0] });

wire	reg0_m_enable_3 = reg0_m_enable_ff && reg0_m_enable_2ff;
wire	reg0_m_enable_4 = reg0_m_enable_ff && reg0_m_enable_3ff;

always @(posedge Clk) begin
	reg0_mr_ptr_ff[9:0] <= (rst_l) ? reg0_mr_ptr[9:0] : 10'h0;
	reg0_mw_ptr_ff[9:0] <= (rst_l) ? reg0_mw_ptr[9:0] : 10'h0;
	reg0_m_enable_ff <= (rst_l) ? reg0_m_enable : 1'b0;
	reg0_m_enable_2ff <= (rst_l) ? reg0_m_enable_ff : 1'b0;
	reg0_m_enable_3ff <= (rst_l) ? reg0_m_enable_3 : 1'b0;
	reg0_m_enable_4ff <= (rst_l) ? reg0_m_enable_4 : 1'b0;
	reg0_m_restart_ff <= (rst_l) ? reg0_m_restart : 1'b0;
	reg1_slvctl_ff[31:0] <= (rst_l) ? reg1_slvctl[31:0] : 32'h0;
	reg2_err_ff[31:0] <= (rst_l) ? reg2_err[31:0] : 32'h0;
	reg3_err_en_ff[31:0] <= (rst_l) ? reg3_err_en[31:0] : 32'h0;
	reg4_mstctl_ff[31:0] <= (rst_l) ? reg4_mstctl[31:0] : 32'h0;
	reg9_dbgpause1_ff[31:0] <= (rst_l) ? reg9_dbgpause1[31:0] : 32'h0;
	reg10_dbgpause2_ff[31:0] <= (rst_l) ? reg10_dbgpause2[31:0] : 32'h0;
	reg11_dbgpause3_ff[31:0] <= (rst_l) ? reg11_dbgpause3[31:0] : 32'h0;
	reg14_cmdext_wr_ff[31:0] <= (rst_l) ? reg14_cmdext_wr[31:0] : 32'h0;
	reg15_cmdext_rd_ff[31:0] <= (rst_l) ? reg15_cmdext_rd[31:0] : 32'h0;
end

wire	slvram_do_write = wbuf_pop && aw_agen_memsel[1] && ~excl_aw_agen_nulled;
wire [C_S_AXI_DATA_WIDTH/8-1:0] slvram_we = (slvram_do_write) ?
			wfifo_out_be[C_S_AXI_DATA_WIDTH/8-1:0] : 'h0;

wire [C_S_AXI_DATA_WIDTH-1:0] sim_slvram_rddata;
wire [C_S_AXI_DATA_WIDTH-1:0] slvram_rd_out_pre;
wire [C_S_AXI_DATA_WIDTH-1:0] slvram_wr_data =
					wfifo_out[C_S_AXI_DATA_WIDTH-1:0];

wire [1023:0] zero = 32'h0;
reg [15:0] sim_addr_ff = 16'h0;
reg	sim_dump = 1'b0;
reg	sim_clk = 1'b0;
wire [14:0] slvram_addr_b = (sim_dump) ? sim_addr_ff[14:0] : aw_agen_addr[14:0];
slvram #(
.C_FAMILY(C_FAMILY),
.C_DATA_WIDTH(C_S_AXI_DATA_WIDTH)
) Slvram (
	.clk_a(Clk),
	.we_a(zero[C_S_AXI_DATA_WIDTH/8-1:0]),
	.addr_a(ar_agen_addr[14:0]),
	.wr_data_a(zero[C_S_AXI_DATA_WIDTH-1:0]),
	.rd_data_a(slvram_rd_out_pre[C_S_AXI_DATA_WIDTH-1:0]),

	.clk_b((sim_dump) ? sim_clk : Clk),
	.we_b(slvram_we[C_S_AXI_DATA_WIDTH/8-1:0]),
	.addr_b(slvram_addr_b[14:0]),
	.wr_data_b(slvram_wr_data[C_S_AXI_DATA_WIDTH-1:0]),
	.rd_data_b(sim_slvram_rddata[C_S_AXI_DATA_WIDTH-1:0])
);

reg [C_S_AXI_DATA_WIDTH-1:0] slvram_wr_datareg_ff;
reg [63:0] slvram_rdwr_mask_ff;

// Handle simultaneous read and write to the same address.  Forward write data
//  to the read.
wire [14:0] rdwr_match_mask =
			(C_S_AXI_DATA_WIDTH == 512) ? 15'h7fc0 :
			(C_S_AXI_DATA_WIDTH == 256) ? 15'h3fe0 :
			(C_S_AXI_DATA_WIDTH == 128) ? 15'h1ff0 :
			(C_S_AXI_DATA_WIDTH == 64) ? 15'h1ff8 : 15'h1ffc;
wire	slvram_rdwr_match = slvram_do_write &&
			((ar_agen_addr[14:0] & rdwr_match_mask[14:0]) ==
				(aw_agen_addr[14:0] & rdwr_match_mask[14:0]));
wire [C_S_AXI_DATA_WIDTH-1:0] slvram_wr_datareg = (slvram_rdwr_match) ?
			slvram_wr_data[C_S_AXI_DATA_WIDTH-1:0] :
			slvram_wr_datareg_ff[C_S_AXI_DATA_WIDTH-1:0];
wire [63:0] slvram_rdwr_mask = (slvram_rdwr_match) ?
				wfifo_out_be[C_S_AXI_DATA_WIDTH/8-1:0] : 'h0;

wire [C_S_AXI_DATA_WIDTH-1:0] slvram_rdwr_mask_exp = {
	{ 8 { slvram_rdwr_mask_ff[63] } }, { 8 { slvram_rdwr_mask_ff[62] } },
	{ 8 { slvram_rdwr_mask_ff[61] } }, { 8 { slvram_rdwr_mask_ff[60] } },
	{ 8 { slvram_rdwr_mask_ff[59] } }, { 8 { slvram_rdwr_mask_ff[58] } },
	{ 8 { slvram_rdwr_mask_ff[57] } }, { 8 { slvram_rdwr_mask_ff[56] } },
	{ 8 { slvram_rdwr_mask_ff[55] } }, { 8 { slvram_rdwr_mask_ff[54] } },
	{ 8 { slvram_rdwr_mask_ff[53] } }, { 8 { slvram_rdwr_mask_ff[52] } },
	{ 8 { slvram_rdwr_mask_ff[51] } }, { 8 { slvram_rdwr_mask_ff[50] } },
	{ 8 { slvram_rdwr_mask_ff[49] } }, { 8 { slvram_rdwr_mask_ff[48] } },
	{ 8 { slvram_rdwr_mask_ff[47] } }, { 8 { slvram_rdwr_mask_ff[46] } },
	{ 8 { slvram_rdwr_mask_ff[45] } }, { 8 { slvram_rdwr_mask_ff[44] } },
	{ 8 { slvram_rdwr_mask_ff[43] } }, { 8 { slvram_rdwr_mask_ff[42] } },
	{ 8 { slvram_rdwr_mask_ff[41] } }, { 8 { slvram_rdwr_mask_ff[40] } },
	{ 8 { slvram_rdwr_mask_ff[39] } }, { 8 { slvram_rdwr_mask_ff[38] } },
	{ 8 { slvram_rdwr_mask_ff[37] } }, { 8 { slvram_rdwr_mask_ff[36] } },
	{ 8 { slvram_rdwr_mask_ff[35] } }, { 8 { slvram_rdwr_mask_ff[34] } },
	{ 8 { slvram_rdwr_mask_ff[33] } }, { 8 { slvram_rdwr_mask_ff[32] } },
	{ 8 { slvram_rdwr_mask_ff[31] } }, { 8 { slvram_rdwr_mask_ff[30] } },
	{ 8 { slvram_rdwr_mask_ff[29] } }, { 8 { slvram_rdwr_mask_ff[28] } },
	{ 8 { slvram_rdwr_mask_ff[27] } }, { 8 { slvram_rdwr_mask_ff[26] } },
	{ 8 { slvram_rdwr_mask_ff[25] } }, { 8 { slvram_rdwr_mask_ff[24] } },
	{ 8 { slvram_rdwr_mask_ff[23] } }, { 8 { slvram_rdwr_mask_ff[22] } },
	{ 8 { slvram_rdwr_mask_ff[21] } }, { 8 { slvram_rdwr_mask_ff[20] } },
	{ 8 { slvram_rdwr_mask_ff[19] } }, { 8 { slvram_rdwr_mask_ff[18] } },
	{ 8 { slvram_rdwr_mask_ff[17] } }, { 8 { slvram_rdwr_mask_ff[16] } },
	{ 8 { slvram_rdwr_mask_ff[15] } }, { 8 { slvram_rdwr_mask_ff[14] } },
	{ 8 { slvram_rdwr_mask_ff[13] } }, { 8 { slvram_rdwr_mask_ff[12] } },
	{ 8 { slvram_rdwr_mask_ff[11] } }, { 8 { slvram_rdwr_mask_ff[10] } },
	{ 8 { slvram_rdwr_mask_ff[9] } }, { 8 { slvram_rdwr_mask_ff[8] } },
	{ 8 { slvram_rdwr_mask_ff[7] } }, { 8 { slvram_rdwr_mask_ff[6] } },
	{ 8 { slvram_rdwr_mask_ff[5] } }, { 8 { slvram_rdwr_mask_ff[4] } },
	{ 8 { slvram_rdwr_mask_ff[3] } }, { 8 { slvram_rdwr_mask_ff[2] } },
	{ 8 { slvram_rdwr_mask_ff[1] } }, { 8 { slvram_rdwr_mask_ff[0] } } };
assign slvram_rd_out[C_S_AXI_DATA_WIDTH-1:0] =
		(slvram_rdwr_mask_exp[C_S_AXI_DATA_WIDTH-1:0] &
			slvram_wr_datareg_ff[C_S_AXI_DATA_WIDTH-1:0]) |
		(~slvram_rdwr_mask_exp[C_S_AXI_DATA_WIDTH-1:0] &
			slvram_rd_out_pre[C_S_AXI_DATA_WIDTH-1:0]);

always @(posedge Clk) begin
	slvram_wr_datareg_ff[C_S_AXI_DATA_WIDTH-1:0] <= (rst_l) ?
		slvram_wr_datareg[C_S_AXI_DATA_WIDTH-1:0] : 'h0;
	slvram_rdwr_mask_ff[63:0] <= (rst_l) ? slvram_rdwr_mask[63:0] : 64'h0;
end

assign err_new_slv[15:0] = { 12'h0,
		excl_bad_oflow_ff, excl_bad_arhit_ff,
					wfifo_bad_be, wfifo_bad_last };


// MASTER Logic

// MASTER READ
// [31:0] addr
// [39:32] len[7:0]		[7:0]
// [41:40] lock[1:0]		[9:8]
// [43:42] burst[1:0]		[11:10]
// [46:44] size[2:0]		[14:12]
// [52:47] id[5:0]		[20:15]
// [55:53] prot[2:0]		[23:21]
// [59:56] arb_delay[3:0]	[27:24]
// [62:60] lastaddr[2:0]	[30:28]
// [63] valid_cmd (0 = stop)	[31]
// [76:64] fifo_index[12:0]	[12:0]
// [85:77] other_depend[8:0]	[21:13]
// [94:86] my_depend[8:0]	[30:22]
// [95] reserved		[31]
// [98:96] expected_resp	[2:0]
// [103:100] cache[3:0]		[7:4]
// [111:104] user[7:0]		[15:8]
// [115:112] reserved[3:0]	[19:16]
// [119:116] lastaddr[6:3]	[23:20] (upper bit only needed for 1024 wide)
// [127:120] addr[39:32]	[31:24]
// [143:128] addr[55:40]	[15:0]

reg [8:0] mrd_complete_ptr_ff, mwr_complete_ptr_ff;
reg [7:0] mar_cnt_ff;
reg	mar_done_ff, mar_fifo_push_ff, mar_block_push_ff;

wire	mar_fifo_notfull;
wire	mar_fifo0_notfull, mar_fifo1_notfull, mar_fifo2_notfull,
		mar_fifo3_notfull;
wire [3:0] martrk_free;

wire [8:0] mar_complete_depth = (reg0_mr_ptr_ff[8:0]-mrd_complete_ptr_ff[8:0]);
wire	mar_block_push = (mar_complete_depth[8:0] >= 9'h0d);

// Push cmd_out_mr into mar_fifo, if rd_depend and wr_depend are met

wire	mar_cnt_reload = ~reg0_m_enable_4ff || mar_fifo_push_ff;
wire [7:0] mar_cnt_expand =
		((cmd_out_mr[59:56] == 4'h0) ? 8'h00 : 8'h00) |
		((cmd_out_mr[59:56] == 4'h1) ? 8'h00 : 8'h00) |
		((cmd_out_mr[59:56] == 4'h2) ? 8'h01 : 8'h00) |
		((cmd_out_mr[59:56] == 4'h3) ? 8'h02 : 8'h00) |
		((cmd_out_mr[59:56] == 4'h4) ? 8'h06 : 8'h00) |
		((cmd_out_mr[59:56] == 4'h5) ? 8'h09 : 8'h00) |
		((cmd_out_mr[59:56] == 4'h6) ? 8'h0c : 8'h00) |
		((cmd_out_mr[59:56] == 4'h7) ? 8'h11 : 8'h00) |
		((cmd_out_mr[59:56] == 4'h8) ? 8'h18 : 8'h00) |
		((cmd_out_mr[59:56] == 4'h9) ? 8'h21 : 8'h00) |
		((cmd_out_mr[59:56] == 4'ha) ? 8'h32 : 8'h00) |
		((cmd_out_mr[59:56] == 4'hb) ? 8'h45 : 8'h00) |
		((cmd_out_mr[59:56] == 4'hc) ? 8'h68 : 8'h00) |
		((cmd_out_mr[59:56] == 4'hd) ? 8'h81 : 8'h00) |
		((cmd_out_mr[59:56] == 4'he) ? 8'hbe : 8'h00) |
		((cmd_out_mr[59:56] == 4'hf) ? 8'hff : 8'h00);
wire	mar_cnt_is_not0 = (mar_cnt_ff[7:0] != 8'h00);
wire	mar_cnt_ok = ~mar_cnt_reload && ~mar_cnt_is_not0;

wire [8:0] mar_wr_depend = cmd_out_mr[85:77];
wire [8:0] mar_rd_depend = cmd_out_mr[94:86];
wire	mar_depend_ok = (mar_rd_depend[8:0] <= mrd_complete_ptr_ff[8:0]) &&
			(mar_wr_depend[8:0] <= mwr_complete_ptr_ff[8:0]);
wire	mar_valid = cmd_out_mr[63] && reg0_m_enable_3ff;
wire	mar_delay_ok = (cmd_out_mr[59:56] == 4'h0) || mar_cnt_ok;
wire	mar_cnt_do_dec = mar_fifo_notfull && mar_depend_ok &&
			mar_fifo0_notfull && mar_fifo1_notfull &&
			mar_fifo2_notfull && mar_fifo3_notfull &&
			~mar_block_push_ff && (martrk_free[3:0] != 4'h0);
wire	mar_fifo_push = mar_valid && mar_cnt_do_dec && mar_delay_ok;
wire [7:0] mar_cnt = (mar_cnt_reload) ? mar_cnt_expand[7:0] :
	(mar_cnt_do_dec) ? mar_cnt_ff[7:0] - { 7'h0, mar_cnt_is_not0 } :
						mar_cnt_ff[7:0];
wire	mar_done = reg0_m_enable_ff && reg0_m_enable_3ff &&
					(~mar_valid || mar_done_ff);

wire [9:0] mar_ptr_new = (mar_fifo_push) ? reg0_mr_ptr_ff[9:0] + 10'h1 :
						reg0_mr_ptr_ff[9:0];
assign	reg0_mr_ptr_update[9:0] = mar_ptr_new[9:0];

always @(posedge Clk) begin
	mar_done_ff <= (rst_l) ? mar_done : 1'b0;
	mar_fifo_push_ff <= (rst_l) ? mar_fifo_push : 1'b0;
	mar_block_push_ff <= (rst_l) ? mar_block_push : 1'b0;
	mar_cnt_ff[7:0] <= (rst_l) ? mar_cnt[7:0] : 8'h00;
end

wire [120:0] mar_fifo_out;
wire	mar_fifo_valid, mar_fifo_pop;

ex_fifo #(
.WIDTH(121),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.ZERO_INVALID(C_ZERO_INVALID),
.FULL_LEVEL(5)
) Mar_fifo (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ cmd_out_mr[143:100], cmd_out_mr[76:0] }),
	.in_push(mar_fifo_push),
	.in_pop(mar_fifo_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(mst_block_arvalid),
	.out_data(mar_fifo_out[120:0]),
	.is_notfull(mar_fifo_notfull),
	.out_valid(mar_fifo_valid)
);

assign mar_fifo_pop = (arvalid_m && arready_m) ||
						(mace_arvalid && mace_arready);

wire [63:0] araddr_m_64_1 = { mar_fifo_out[120:97], mar_fifo_out[31:0] };
wire [63:0] araddr_m_64 = (is_a53_acp) ? { araddr_m_64_1[63:4], 4'h0 } :
							araddr_m_64_1[63:0];
assign araddr_m[C_M_AXI_ADDR_WIDTH-1:0] = araddr_m_64[C_M_AXI_ADDR_WIDTH-1:0];
assign arlen_m[7:0] = mar_fifo_out[39:32];
assign arlen3_m[3:0] = mar_fifo_out[35:32];
assign arlock_m[1:0] = mar_fifo_out[41:40];
assign arlock1_m = mar_fifo_out[40];
assign arburst_m[1:0] = mar_fifo_out[43:42];
assign arsize_m[2:0] = mar_fifo_out[46:44];
assign arid_m[C_M_AXI_THREAD_ID_WIDTH-1:0] = mar_fifo_out[52:47];
assign arprot_m[2:0] = mar_fifo_out[55:53];
assign arvalid_m = mar_fifo_valid;
assign arcache_m[3:0] = mar_fifo_out[80:77];
assign aruser_m[C_M_AXI_ARUSER_WIDTH-1:0] = mar_fifo_out[88:81];
assign arqos_m[3:0] = reg4_arqos[3:0];

assign mace_araddr[C_M_AXI_ADDR_WIDTH-1:0] =araddr_m_64[C_M_AXI_ADDR_WIDTH-1:0];
assign mace_arlen[7:0] = mar_fifo_out[39:32];
assign mace_arlock = mar_fifo_out[40];
assign mace_arburst[1:0] = mar_fifo_out[43:42];
assign mace_arsize[2:0] = mar_fifo_out[46:44];
assign mace_arid[C_M_AXI_THREAD_ID_WIDTH-1:0] = mar_fifo_out[52:47];
assign mace_arprot[2:0] = mar_fifo_out[55:53];
assign mace_arvalid = mar_fifo_valid;
assign mace_arcache[3:0] = mar_fifo_out[80:77];
assign mace_aruser[C_M_AXI_ARUSER_WIDTH-1:0] = { 4'hf, mar_fifo_out[52:47] };
assign mace_arqos[3:0] = reg4_arqos[3:0];
assign mace_ardomain[1:0] = mar_fifo_out[82:81];	// USER[1:0]
assign mace_arbar[1:0] = mar_fifo_out[84:83];		// USER[3:2]
assign mace_arsnoop[3:0] = mar_fifo_out[88:85];		// USER[7:4]

wire [91:0] mar_fifo0_out, mar_fifo1_out, mar_fifo2_out, mar_fifo3_out;
wire	mar_fifo0_valid, mar_fifo0_pop;
wire	mar_fifo1_valid, mar_fifo1_pop;
wire	mar_fifo2_valid, mar_fifo2_pop;
wire	mar_fifo3_valid, mar_fifo3_pop;
wire	mar_agen0_valid, mar_agen1_valid, mar_agen2_valid, mar_agen3_valid;

wire [3:0] martrk_clear_pos = { ~mar_agen3_valid && ~mar_fifo3_valid,
				~mar_agen2_valid && ~mar_fifo2_valid,
				~mar_agen1_valid && ~mar_fifo1_valid,
				~mar_agen0_valid && ~mar_fifo0_valid };

wire [3:0] martrk_fifo_num, martrk_mr_hit;
wire [C_M_AXI_DATA_WIDTH+10-1:0] mr_fifo_out;

wire [C_M_AXI_THREAD_ID_WIDTH-1:0] martrk_in_push_id = cmd_out_mr[52:47];
wire [C_M_AXI_THREAD_ID_WIDTH-1:0] martrk_in_search_id =
		mr_fifo_out[C_M_AXI_DATA_WIDTH+10-1:C_M_AXI_DATA_WIDTH+4];
id_track #(
.ID_WIDTH(C_M_AXI_THREAD_ID_WIDTH)
) Mar_track (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_push_id(martrk_in_push_id[C_M_AXI_THREAD_ID_WIDTH-1:0]),
	.in_push(mar_fifo_push),
	.in_search_id(martrk_in_search_id[C_M_AXI_THREAD_ID_WIDTH-1:0]),
	.in_clear_pos(martrk_clear_pos[3:0]),
	.in_only_entry0(1'b0),
	.out_push_pos(martrk_fifo_num[3:0]),
	.out_search_hit(martrk_mr_hit[3:0]),
	.out_free(martrk_free[3:0])
);

ex_fifo #(
.WIDTH(92),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Mar_fifo0 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ reg0_mr_ptr_ff[7:0], cmd_out_mr[119:116], cmd_out_mr[98:96],
						cmd_out_mr[76:0] }),
	.in_push(martrk_fifo_num[0]),
	.in_pop(mar_fifo0_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(mar_fifo0_out[91:0]),
	.is_notfull(mar_fifo0_notfull),
	.out_valid(mar_fifo0_valid)
);

wire [15:0] mar_agen0_addr, mar_agen0_id;
wire [C_M_AXI_DATA_WIDTH/8-1:0] mar_agen0_be;
wire [7:0] mar_agen0_tag;
wire	mar_agen0_done, mar_agen0_pop;
wire	mr_fifo_valid;

addrgen #(
.USE_ADDR_OFFSET(1),
.C_DATA_WIDTH(C_M_AXI_DATA_WIDTH),
.IS_READ(1)
) Mar_agen0 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_addr({ mar_fifo0_out[79:64] }),
	.in_addr_offset(mar_fifo0_out[9:0]),
	.in_id({ mar_fifo0_out[91:84], 2'b00, mar_fifo0_out[52:47]}),
	.in_len(mar_fifo0_out[39:32]),
	.in_size(mar_fifo0_out[46:44]),
	.in_lastaddr({ mar_fifo0_out[83:80], mar_fifo0_out[62:60] }),
	.in_burst(mar_fifo0_out[43:42]),
	.in_push(mar_fifo0_pop),
	.in_pop(mar_agen0_pop),
	.out_addr(mar_agen0_addr[15:0]),
	.out_id(mar_agen0_id[15:0]),
	.out_be(mar_agen0_be[C_M_AXI_DATA_WIDTH/8-1:0]),
	.out_done(mar_agen0_done),
	.out_valid(mar_agen0_valid)
);

ex_fifo #(
.WIDTH(92),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Mar_fifo1 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ reg0_mr_ptr_ff[7:0], cmd_out_mr[119:116], cmd_out_mr[98:96],
						cmd_out_mr[76:0] }),
	.in_push(martrk_fifo_num[1]),
	.in_pop(mar_fifo1_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(mar_fifo1_out[91:0]),
	.is_notfull(mar_fifo1_notfull),
	.out_valid(mar_fifo1_valid)
);

wire [15:0] mar_agen1_addr, mar_agen1_id;
wire [C_M_AXI_DATA_WIDTH/8-1:0] mar_agen1_be;
wire	mar_agen1_done, mar_agen1_pop;

addrgen #(
.USE_ADDR_OFFSET(1),
.C_DATA_WIDTH(C_M_AXI_DATA_WIDTH),
.IS_READ(1)
) Mar_agen1 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_addr({ mar_fifo1_out[79:64] }),
	.in_addr_offset(mar_fifo1_out[9:0]),
	.in_id({ mar_fifo1_out[91:84], 2'b00, mar_fifo1_out[52:47]}),
	.in_len(mar_fifo1_out[39:32]),
	.in_size(mar_fifo1_out[46:44]),
	.in_lastaddr({ mar_fifo1_out[83:80], mar_fifo1_out[62:60] }),
	.in_burst(mar_fifo1_out[43:42]),
	.in_push(mar_fifo1_pop),
	.in_pop(mar_agen1_pop),
	.out_addr(mar_agen1_addr[15:0]),
	.out_id(mar_agen1_id[15:0]),
	.out_be(mar_agen1_be[C_M_AXI_DATA_WIDTH/8-1:0]),
	.out_done(mar_agen1_done),
	.out_valid(mar_agen1_valid)
);

ex_fifo #(
.WIDTH(92),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Mar_fifo2 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ reg0_mr_ptr_ff[7:0], cmd_out_mr[119:116], cmd_out_mr[98:96],
						cmd_out_mr[76:0] }),
	.in_push(martrk_fifo_num[2]),
	.in_pop(mar_fifo2_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(mar_fifo2_out[91:0]),
	.is_notfull(mar_fifo2_notfull),
	.out_valid(mar_fifo2_valid)
);

wire [15:0] mar_agen2_addr, mar_agen2_id;
wire [C_M_AXI_DATA_WIDTH/8-1:0] mar_agen2_be;
wire	mar_agen2_done, mar_agen2_pop;

addrgen #(
.USE_ADDR_OFFSET(1),
.C_DATA_WIDTH(C_M_AXI_DATA_WIDTH),
.IS_READ(1)
) Mar_agen2 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_addr({ mar_fifo2_out[79:64] }),
	.in_addr_offset(mar_fifo2_out[9:0]),
	.in_id({ mar_fifo2_out[91:84], 2'b00, mar_fifo2_out[52:47]}),
	.in_len(mar_fifo2_out[39:32]),
	.in_size(mar_fifo2_out[46:44]),
	.in_lastaddr({ mar_fifo2_out[83:80], mar_fifo2_out[62:60] }),
	.in_burst(mar_fifo2_out[43:42]),
	.in_push(mar_fifo2_pop),
	.in_pop(mar_agen2_pop),
	.out_addr(mar_agen2_addr[15:0]),
	.out_id(mar_agen2_id[15:0]),
	.out_be(mar_agen2_be[C_M_AXI_DATA_WIDTH/8-1:0]),
	.out_done(mar_agen2_done),
	.out_valid(mar_agen2_valid)
);

ex_fifo #(
.WIDTH(92),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Mar_fifo3 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ reg0_mr_ptr_ff[7:0], cmd_out_mr[119:116], cmd_out_mr[98:96],
						cmd_out_mr[76:0] }),
	.in_push(martrk_fifo_num[3]),
	.in_pop(mar_fifo3_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(mar_fifo3_out[91:0]),
	.is_notfull(mar_fifo3_notfull),
	.out_valid(mar_fifo3_valid)
);

wire [15:0] mar_agen3_addr, mar_agen3_id;
wire [C_M_AXI_DATA_WIDTH/8-1:0] mar_agen3_be;
wire	mar_agen3_done, mar_agen3_pop;

addrgen #(
.USE_ADDR_OFFSET(1),
.C_DATA_WIDTH(C_M_AXI_DATA_WIDTH),
.IS_READ(1)
) Mar_agen3 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_addr({ mar_fifo3_out[79:64] }),
	.in_addr_offset(mar_fifo3_out[9:0]),
	.in_id({ mar_fifo3_out[91:84], 2'b00, mar_fifo3_out[52:47]}),
	.in_len(mar_fifo3_out[39:32]),
	.in_size(mar_fifo3_out[46:44]),
	.in_lastaddr({ mar_fifo3_out[83:80], mar_fifo3_out[62:60] }),
	.in_burst(mar_fifo3_out[43:42]),
	.in_push(mar_fifo3_pop),
	.in_pop(mar_agen3_pop),
	.out_addr(mar_agen3_addr[15:0]),
	.out_id(mar_agen3_id[15:0]),
	.out_be(mar_agen3_be[C_M_AXI_DATA_WIDTH/8-1:0]),
	.out_done(mar_agen3_done),
	.out_valid(mar_agen3_valid)
);

assign	mar_fifo0_pop = ~mar_agen0_valid && mar_fifo0_valid;
assign	mar_fifo1_pop = ~mar_agen1_valid && mar_fifo1_valid;
assign	mar_fifo2_pop = ~mar_agen2_valid && mar_fifo2_valid;
assign	mar_fifo3_pop = ~mar_agen3_valid && mar_fifo3_valid;

assign	mar_agen0_pop = mr_fifo_valid && mar_agen0_valid && martrk_mr_hit[0];
assign	mar_agen1_pop = mr_fifo_valid && mar_agen1_valid && martrk_mr_hit[1];
assign	mar_agen2_pop = mr_fifo_valid && mar_agen2_valid && martrk_mr_hit[2];
assign	mar_agen3_pop = mr_fifo_valid && mar_agen3_valid && martrk_mr_hit[3];

// Receive master data returns
wire	mr_fifo_notfull, mr_fifo_pop;

wire [5:0] mr_id = rid_m[C_M_AXI_THREAD_ID_WIDTH-1:0] |
					mace_rid[C_M_AXI_THREAD_ID_WIDTH-1:0];
wire [C_M_AXI_DATA_WIDTH+10-1:0] mr_in_data = {
		mr_id[5:0],
		1'b0, rlast_m || mace_rlast, rresp_m[1:0] | mace_rresp[1:0],
		rdata_m[C_M_AXI_DATA_WIDTH-1:0] |
					mace_rdata[C_M_AXI_DATA_WIDTH-1:0] };

ex_fifo #(
.WIDTH(C_M_AXI_DATA_WIDTH+10),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Mr_fifo (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(mr_in_data[C_M_AXI_DATA_WIDTH+10-1:0]),
	.in_push((rvalid_m && rready_m) || (mace_rvalid && mace_rready)),
	.in_pop(mr_fifo_pop),
	.in_block_notfull(mst_block_rready),
	.in_block_outvalid(1'b0),
	.out_data(mr_fifo_out[C_M_AXI_DATA_WIDTH+10-1:0]),
	.is_notfull(mr_fifo_notfull),
	.out_valid(mr_fifo_valid)
);

assign mr_fifo_pop = mar_agen0_pop || mar_agen1_pop || mar_agen2_pop ||
						mar_agen3_pop;
assign rready_m = mr_fifo_notfull;
assign mace_rready = mr_fifo_notfull;

wire [15:0] mram_waddr = ((mar_agen0_pop) ? mar_agen0_addr[15:0] : 16'h0) |
			((mar_agen1_pop) ? mar_agen1_addr[15:0] : 16'h0) |
			((mar_agen2_pop) ? mar_agen2_addr[15:0] : 16'h0) |
			((mar_agen3_pop) ? mar_agen3_addr[15:0] : 16'h0);

wire [C_M_AXI_DATA_WIDTH-1:0] mram_dummy_out;
wire [C_M_AXI_DATA_WIDTH-1:0] mram_out;
wire [15:0] maw_agen_addr;

wire [C_M_AXI_DATA_WIDTH/8-1:0] mram_we =
	((mar_agen0_pop) ? mar_agen0_be[C_M_AXI_DATA_WIDTH/8-1:0] : 'h0) |
	((mar_agen1_pop) ? mar_agen1_be[C_M_AXI_DATA_WIDTH/8-1:0] : 'h0) |
	((mar_agen2_pop) ? mar_agen2_be[C_M_AXI_DATA_WIDTH/8-1:0] : 'h0) |
	((mar_agen3_pop) ? mar_agen3_be[C_M_AXI_DATA_WIDTH/8-1:0] : 'h0);

wire [1:0] mr_fifo_out_resp =
			mr_fifo_out[C_M_AXI_DATA_WIDTH+2-1:C_M_AXI_DATA_WIDTH];
wire [2:0] mr_fifo_out_resp_mask =
		((mr_fifo_out_resp[1:0] == 2'b00) ? 3'b001 : 3'b000) |
		((mr_fifo_out_resp[1:0] == 2'b01) ? 3'b010 : 3'b000) |
		((mr_fifo_out_resp[1] == 1'b1) ? 3'b100 : 3'b000);
wire [2:0] mr_fifo_out_resp_allowed = (mram_waddr[15:13] == 3'b000) ? 3'b001 :
							mram_waddr[15:13];
wire	mr_fifo_out_resp_ok =
		((mr_fifo_out_resp_allowed[2:0] & mr_fifo_out_resp_mask[2:0]) !=
								3'b000);
wire	mr_fifo_out_resp_bad = mr_fifo_pop && ~mr_fifo_out_resp_ok;

wire [C_M_AXI_DATA_WIDTH-1:0] mram_write_data =
					mr_fifo_out[C_M_AXI_DATA_WIDTH-1:0];
slvram #(
.C_FAMILY(C_FAMILY),
.C_DATA_WIDTH(C_M_AXI_DATA_WIDTH)
) Mram (
	.clk_a(Clk),
	.we_a(mram_we[C_M_AXI_DATA_WIDTH/8-1:0]),
	.addr_a({ 2'b0, mram_waddr[12:0] }),
	.wr_data_a(mram_write_data[C_M_AXI_DATA_WIDTH-1:0]),
	.rd_data_a(mram_dummy_out[C_M_AXI_DATA_WIDTH-1:0]),

	.clk_b(Clk),
	.we_b(zero[C_M_AXI_DATA_WIDTH/8-1:0]),
	.addr_b({ 2'b0, maw_agen_addr[12:0] }),
	.wr_data_b(zero[C_M_AXI_DATA_WIDTH-1:0]),
	.rd_data_b(mram_out[C_M_AXI_DATA_WIDTH-1:0])
);

reg	mr_unexp_maybe_ff, mr_unexp_maybe_2ff;
reg	mr_bad_last_ff;

wire	mr_exp_last = mr_fifo_out[C_M_AXI_DATA_WIDTH+2];
wire	mr_bad_last = (mar_agen0_pop && (mar_agen0_done != mr_exp_last)) ||
		(mar_agen1_pop && (mar_agen1_done != mr_exp_last)) ||
		(mar_agen2_pop && (mar_agen2_done != mr_exp_last)) ||
		(mar_agen3_pop && (mar_agen3_done != mr_exp_last));

wire	mr_unexp_maybe = mr_fifo_valid && ~mar_agen0_pop && ~mar_agen1_pop &&
					~mar_agen2_pop && ~mar_agen3_pop;

always @(posedge Clk) begin
	mr_unexp_maybe_ff <= (rst_l) ? mr_unexp_maybe : 1'b0;
	mr_unexp_maybe_2ff <= (rst_l) ? mr_unexp_maybe_ff : 1'b0;
	mr_bad_last_ff <= (rst_l) ? mr_bad_last : 1'b0;
end

wire	mr_unexp = mr_unexp_maybe_ff && mr_unexp_maybe_2ff;


// MASTER WRITE
reg	maw_done_ff, maw_fifo_push_ff, maw_fifow_push_block_ff;
reg	maw_block_push_ff;
reg [7:0] maw_cnt_ff;
reg [C_M_AXI_THREAD_ID_WIDTH-1:0] bid_in_ff;
reg [1:0] bresp_in_ff;
reg	b_complete_ff;

wire	maw_fifo_notfull, maw_fifow_notfull;
wire	maw_fifo0_notfull, maw_fifo1_notfull;
wire	maw_fifo2_notfull, maw_fifo3_notfull;
wire [3:0] mawtrk_free;

// Push cmd_out_mw into maw_fifo, if rd_depend and wr_depend are met, if
//  there's room in maw_fifo and maw_fifow.

wire [8:0] maw_complete_depth = (reg0_mw_ptr_ff[8:0]-mwr_complete_ptr_ff[8:0]);
wire	maw_block_push = (maw_complete_depth[8:0] >= 9'h0d);

wire	maw_cnt_reload = ~reg0_m_enable_4ff || maw_fifo_push_ff;
wire [7:0] maw_cnt_expand =
		((cmd_out_mw[59:56] == 4'h0) ? 8'h00 : 8'h00) |
		((cmd_out_mw[59:56] == 4'h1) ? 8'h00 : 8'h00) |
		((cmd_out_mw[59:56] == 4'h2) ? 8'h01 : 8'h00) |
		((cmd_out_mw[59:56] == 4'h3) ? 8'h02 : 8'h00) |
		((cmd_out_mw[59:56] == 4'h4) ? 8'h06 : 8'h00) |
		((cmd_out_mw[59:56] == 4'h5) ? 8'h09 : 8'h00) |
		((cmd_out_mw[59:56] == 4'h6) ? 8'h0c : 8'h00) |
		((cmd_out_mw[59:56] == 4'h7) ? 8'h11 : 8'h00) |
		((cmd_out_mw[59:56] == 4'h8) ? 8'h18 : 8'h00) |
		((cmd_out_mw[59:56] == 4'h9) ? 8'h21 : 8'h00) |
		((cmd_out_mw[59:56] == 4'ha) ? 8'h32 : 8'h00) |
		((cmd_out_mw[59:56] == 4'hb) ? 8'h45 : 8'h00) |
		((cmd_out_mw[59:56] == 4'hc) ? 8'h68 : 8'h00) |
		((cmd_out_mw[59:56] == 4'hd) ? 8'h81 : 8'h00) |
		((cmd_out_mw[59:56] == 4'he) ? 8'hbe : 8'h00) |
		((cmd_out_mw[59:56] == 4'hf) ? 8'hff : 8'h00);
wire	maw_cnt_is_not0 = (maw_cnt_ff[7:0] != 8'h00);
wire	maw_cnt_ok = ~maw_cnt_reload && ~maw_cnt_is_not0;

wire [8:0] maw_wr_depend = cmd_out_mw[94:86];
wire [8:0] maw_rd_depend = cmd_out_mw[85:77];
wire	maw_depend_ok = (maw_rd_depend[7:0] <= mrd_complete_ptr_ff) &&
			(maw_wr_depend[7:0] <= mwr_complete_ptr_ff);
wire	maw_valid = cmd_out_mw[63] && reg0_m_enable_3ff;
wire	maw_delay_ok = (cmd_out_mw[59:56] == 4'h0) || maw_cnt_ok;
wire	maw_cnt_do_dec = maw_fifo_notfull && maw_depend_ok &&
			maw_fifow_notfull && (mawtrk_free[3:0] != 4'h0) &&
			maw_fifo0_notfull && maw_fifo1_notfull &&
			maw_fifo2_notfull && maw_fifo3_notfull &&
			~maw_block_push_ff;
wire	maw_fifo_push = maw_valid && maw_cnt_do_dec && maw_delay_ok;
wire	maw_fifow_push = maw_valid && maw_cnt_do_dec &&
						~maw_fifow_push_block_ff;
wire	maw_fifow_push_block = ~maw_fifo_push && reg0_m_enable_3ff &&
				(maw_fifow_push || maw_fifow_push_block_ff);
wire [7:0] maw_cnt = (maw_cnt_reload) ? maw_cnt_expand[7:0] :
		(maw_cnt_do_dec) ? maw_cnt_ff[7:0] - { 7'h0, maw_cnt_is_not0 } :
						maw_cnt_ff[7:0];
wire	maw_done = reg0_m_enable_ff && reg0_m_enable_3ff &&
				(~maw_valid || maw_done_ff);

wire [9:0] maw_ptr_new = (maw_fifo_push) ? reg0_mw_ptr_ff[9:0] + 10'h1 :
						reg0_mw_ptr_ff[9:0];
assign	reg0_mw_ptr_update[9:0] = maw_ptr_new[9:0];

// Calculate separate maw_fifow_push to allow wdata to get data even if
//  mawaddr is blocked by cnt.

always @(posedge Clk) begin
	maw_done_ff <= (rst_l) ? maw_done : 1'b0;
	maw_fifo_push_ff <= (rst_l) ? maw_fifo_push : 1'b0;
	maw_block_push_ff <= (rst_l) ? maw_block_push : 1'b0;
	maw_fifow_push_block_ff <= (rst_l) ? maw_fifow_push_block : 1'b0;
	maw_cnt_ff[7:0] <= (rst_l) ? maw_cnt[7:0] : 8'h00;
end

wire [19:0] maw_fifo0_out, maw_fifo1_out, maw_fifo2_out, maw_fifo3_out;
wire	maw_fifo0_valid, maw_fifo0_pop;
wire	maw_fifo1_valid, maw_fifo1_pop;
wire	maw_fifo2_valid, maw_fifo2_pop;
wire	maw_fifo3_valid, maw_fifo3_pop;

wire [3:0] mawtrk_clear_pos = { ~maw_fifo3_valid,
				~maw_fifo2_valid,
				~maw_fifo1_valid,
				~maw_fifo0_valid };

wire [3:0] mawtrk_fifo_num, mawtrk_bid_hit;

wire [C_M_AXI_THREAD_ID_WIDTH-1:0] mawtrk_in_push_id = cmd_out_mw[52:47];
wire [C_M_AXI_THREAD_ID_WIDTH-1:0] mawtrk_in_search_id =
					bid_in_ff[C_M_AXI_THREAD_ID_WIDTH-1:0];
id_track #(
.ID_WIDTH(C_M_AXI_THREAD_ID_WIDTH)
) Maw_track (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_push_id(mawtrk_in_push_id[C_M_AXI_THREAD_ID_WIDTH-1:0]),
	.in_push(maw_fifo_push),
	.in_search_id(mawtrk_in_search_id[C_M_AXI_THREAD_ID_WIDTH-1:0]),
	.in_clear_pos(mawtrk_clear_pos[3:0]),
	.in_only_entry0(1'b0),
	.out_push_pos(mawtrk_fifo_num[3:0]),
	.out_search_hit(mawtrk_bid_hit[3:0]),
	.out_free(mawtrk_free[3:0])
);

wire [120:0] maw_fifo_out;
wire	maw_fifo_valid, maw_fifo_pop;

ex_fifo #(
.WIDTH(121),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.ZERO_INVALID(C_ZERO_INVALID),
.FULL_LEVEL(5)
) Maw_fifo (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ cmd_out_mw[143:100], cmd_out_mw[76:0] }),
	.in_push(maw_fifo_push),
	.in_pop(maw_fifo_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(mst_block_awvalid),
	.out_data(maw_fifo_out[120:0]),
	.is_notfull(maw_fifo_notfull),
	.out_valid(maw_fifo_valid)
);

assign maw_fifo_pop = (awvalid_m && awready_m) ||
						(mace_awvalid && mace_awready);

wire [63:0] awaddr_m_64_1 = { maw_fifo_out[120:97], maw_fifo_out[31:0] };
wire [63:0] awaddr_m_64 = (is_a53_acp) ? { awaddr_m_64_1[63:4], 4'h0 } :
							awaddr_m_64_1[63:0];
assign awaddr_m[C_M_AXI_ADDR_WIDTH-1:0] = awaddr_m_64[C_M_AXI_ADDR_WIDTH-1:0];
assign awlen_m[7:0] = maw_fifo_out[39:32];
assign awlen3_m[3:0] = maw_fifo_out[35:32];
assign awlock_m[1:0] = maw_fifo_out[41:40];
assign awlock1_m = maw_fifo_out[40];
assign awburst_m[1:0] = maw_fifo_out[43:42];
assign awsize_m[2:0] = maw_fifo_out[46:44];
assign awid_m[C_M_AXI_THREAD_ID_WIDTH-1:0] = maw_fifo_out[52:47];
assign awprot_m[2:0] = maw_fifo_out[55:53];
assign awvalid_m = maw_fifo_valid;
assign awcache_m[3:0] = maw_fifo_out[80:77];
assign awuser_m[C_M_AXI_AWUSER_WIDTH-1:0] = maw_fifo_out[88:81];
assign awqos_m[3:0] = reg4_awqos[3:0];

assign mace_awaddr[C_M_AXI_ADDR_WIDTH-1:0] =awaddr_m_64[C_M_AXI_ADDR_WIDTH-1:0];
assign mace_awlen[7:0] = maw_fifo_out[39:32];
assign mace_awlock = maw_fifo_out[40];
assign mace_awburst[1:0] = maw_fifo_out[43:42];
assign mace_awsize[2:0] = maw_fifo_out[46:44];
assign mace_awid[C_M_AXI_THREAD_ID_WIDTH-1:0] = maw_fifo_out[52:47];
assign mace_awprot[2:0] = maw_fifo_out[55:53];
assign mace_awvalid = maw_fifo_valid;
assign mace_awcache[3:0] = maw_fifo_out[80:77];
assign mace_awuser[C_M_AXI_AWUSER_WIDTH-1:0] = { 4'hf, maw_fifo_out[52:47] };
assign mace_awqos[3:0] = reg4_awqos[3:0];

assign mace_awdomain[1:0] = maw_fifo_out[82:81];	// USER[1:0]
assign mace_awbar[1:0] = maw_fifo_out[84:83];		// USER[3:2]
assign mace_awsnoop[2:0] = maw_fifo_out[87:85];		// USER[6:4]

wire [80:0] maw_fifow_out;
wire	maw_fifow_valid, maw_fifow_pop;

ex_fifo #(
.WIDTH(81),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Maw_fifow (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ cmd_out_mw[119:116], cmd_out_mw[76:0] }),
	.in_push(maw_fifow_push),
	.in_pop(maw_fifow_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(maw_fifow_out[80:0]),
	.is_notfull(maw_fifow_notfull),
	.out_valid(maw_fifow_valid)
);

wire [5:0] maw_agen_id;
wire [C_M_AXI_DATA_WIDTH/8-1:0] maw_agen_be;
wire	maw_agen_valid, maw_agen_done, maw_agen_pop;

addrgen #(
.USE_ADDR_OFFSET(1),
.C_DATA_WIDTH(C_M_AXI_DATA_WIDTH),
.ID_WIDTH(6),
.IS_READ(1)
) Maw_agen (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_addr({ 3'b000, maw_fifow_out[76:64] }),
	.in_addr_offset(maw_fifow_out[9:0]),
	.in_id(maw_fifow_out[52:47]),
	.in_len(maw_fifow_out[39:32]),
	.in_size(maw_fifow_out[46:44]),
	.in_lastaddr({ maw_fifow_out[80:77], maw_fifow_out[62:60] }),
	.in_burst(maw_fifow_out[43:42]),
	.in_push(maw_fifow_pop),
	.in_pop(maw_agen_pop),
	.out_addr(maw_agen_addr[15:0]),
	.out_id(maw_agen_id[5:0]),
	.out_be(maw_agen_be[C_M_AXI_DATA_WIDTH/8-1:0]),
	.out_done(maw_agen_done),
	.out_valid(maw_agen_valid)
);

wire	mw_fifo_notfull, mw_fifo_pop;

assign	maw_agen_pop = mw_fifo_notfull && maw_agen_valid;
assign	maw_fifow_pop = (~maw_agen_valid || maw_agen_done && maw_agen_pop) &&
							maw_fifow_valid;


// Transmit master write data
reg [5:0] mw_id_ff;
reg [C_M_AXI_DATA_WIDTH/8-1:0] maw_agen_be_ff;
reg [15:0] maw_agen_addr_ff;
reg	maw_agen_done_ff, maw_agen_pop_ff;

wire [C_M_AXI_DATA_WIDTH*9/8+7-1:0] mw_fifo_out;

wire [5:0] mw_id = maw_agen_id[5:0];
wire [63:0] mw_be32 = maw_agen_be_ff[C_M_AXI_DATA_WIDTH/8-1:0];
wire [511:0] mw_in_mask = {
	{ 8 { mw_be32[63] } }, { 8 { mw_be32[62] } }, 
	{ 8 { mw_be32[61] } }, { 8 { mw_be32[60] } }, 
	{ 8 { mw_be32[59] } }, { 8 { mw_be32[58] } }, 
	{ 8 { mw_be32[57] } }, { 8 { mw_be32[56] } }, 
	{ 8 { mw_be32[55] } }, { 8 { mw_be32[54] } }, 
	{ 8 { mw_be32[53] } }, { 8 { mw_be32[52] } }, 
	{ 8 { mw_be32[51] } }, { 8 { mw_be32[50] } }, 
	{ 8 { mw_be32[49] } }, { 8 { mw_be32[48] } }, 
	{ 8 { mw_be32[47] } }, { 8 { mw_be32[46] } }, 
	{ 8 { mw_be32[45] } }, { 8 { mw_be32[44] } }, 
	{ 8 { mw_be32[43] } }, { 8 { mw_be32[42] } }, 
	{ 8 { mw_be32[41] } }, { 8 { mw_be32[40] } }, 
	{ 8 { mw_be32[39] } }, { 8 { mw_be32[38] } }, 
	{ 8 { mw_be32[37] } }, { 8 { mw_be32[36] } }, 
	{ 8 { mw_be32[35] } }, { 8 { mw_be32[34] } }, 
	{ 8 { mw_be32[33] } }, { 8 { mw_be32[32] } }, 
	{ 8 { mw_be32[31] } }, { 8 { mw_be32[30] } }, 
	{ 8 { mw_be32[29] } }, { 8 { mw_be32[28] } }, 
	{ 8 { mw_be32[27] } }, { 8 { mw_be32[26] } }, 
	{ 8 { mw_be32[25] } }, { 8 { mw_be32[24] } }, 
	{ 8 { mw_be32[23] } }, { 8 { mw_be32[22] } }, 
	{ 8 { mw_be32[21] } }, { 8 { mw_be32[20] } }, 
	{ 8 { mw_be32[19] } }, { 8 { mw_be32[18] } }, 
	{ 8 { mw_be32[17] } }, { 8 { mw_be32[16] } }, 
	{ 8 { mw_be32[15] } }, { 8 { mw_be32[14] } }, 
	{ 8 { mw_be32[13] } }, { 8 { mw_be32[12] } }, 
	{ 8 { mw_be32[11] } }, { 8 { mw_be32[10] } }, 
	{ 8 { mw_be32[9] } }, { 8 { mw_be32[8] } }, 
	{ 8 { mw_be32[7] } }, { 8 { mw_be32[6] } }, 
	{ 8 { mw_be32[5] } }, { 8 { mw_be32[4] } }, 
	{ 8 { mw_be32[3] } }, { 8 { mw_be32[2] } }, 
	{ 8 { mw_be32[1] } }, { 8 { mw_be32[0] } } };

wire [C_M_AXI_DATA_WIDTH-1:0] mw_data_masked =
	mram_out[C_M_AXI_DATA_WIDTH-1:0] & mw_in_mask[C_M_AXI_DATA_WIDTH-1:0];

wire [C_M_AXI_DATA_WIDTH*9/8+7-1:0] mw_in_data = {
		mw_id_ff[5:0], maw_agen_done_ff,
		maw_agen_be_ff[C_M_AXI_DATA_WIDTH/8-1:0],
		mw_data_masked[C_M_AXI_DATA_WIDTH-1:0] };

always @(posedge Clk) begin
	mw_id_ff[5:0] <= (rst_l) ? mw_id[5:0] : 6'h0;
	maw_agen_be_ff[C_M_AXI_DATA_WIDTH/8-1:0] <= (rst_l) ?
				maw_agen_be[C_M_AXI_DATA_WIDTH/8-1:0] : 8'h0;
	maw_agen_addr_ff[15:0] <= (rst_l) ? maw_agen_addr[15:0] : 16'h0;
	maw_agen_done_ff <= (rst_l) ? maw_agen_done : 1'b0;
	maw_agen_pop_ff <= (rst_l) ? maw_agen_pop : 1'b0;
end


wire	mw_fifo_valid;

ex_fifo #(
.WIDTH(C_M_AXI_DATA_WIDTH*9/8+7),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.ZERO_INVALID(C_ZERO_INVALID),
.FULL_LEVEL(5)
) Mw_fifo (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(mw_in_data[C_M_AXI_DATA_WIDTH*9/8+7-1:0]),
	.in_push(maw_agen_pop_ff),
	.in_pop(mw_fifo_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(mst_block_wvalid),
	.out_data(mw_fifo_out[C_M_AXI_DATA_WIDTH*9/8+7-1:0]),
	.is_notfull(mw_fifo_notfull),
	.out_valid(mw_fifo_valid)
);

assign mw_fifo_pop = mw_fifo_valid && (wready_m || mace_wready);
assign wvalid_m = mw_fifo_valid;

assign wdata_m[C_M_AXI_DATA_WIDTH-1:0] = mw_fifo_out[C_M_AXI_DATA_WIDTH-1:0];
assign wstrb_m[C_M_AXI_DATA_WIDTH/8-1:0] =
		mw_fifo_out[C_M_AXI_DATA_WIDTH*9/8-1:C_M_AXI_DATA_WIDTH];
assign wlast_m = mw_fifo_out[C_M_AXI_DATA_WIDTH*9/8];
assign wid_m[C_M_AXI_THREAD_ID_WIDTH-1:0] =
	mw_fifo_out[C_M_AXI_DATA_WIDTH*9/8+7-1:C_M_AXI_DATA_WIDTH*9/8+1];

assign mace_wvalid = mw_fifo_valid;
assign mace_wdata[C_M_AXI_DATA_WIDTH-1:0] = mw_fifo_out[C_M_AXI_DATA_WIDTH-1:0];
assign mace_wstrb[C_M_AXI_DATA_WIDTH/8-1:0] =
		mw_fifo_out[C_M_AXI_DATA_WIDTH*9/8-1:C_M_AXI_DATA_WIDTH];
assign mace_wlast = mw_fifo_out[C_M_AXI_DATA_WIDTH*9/8];
assign mace_wid[C_M_AXI_THREAD_ID_WIDTH-1:0] =
	mw_fifo_out[C_M_AXI_DATA_WIDTH*9/8+7-1:C_M_AXI_DATA_WIDTH*9/8+1];
assign mace_wuser = 1'b0;

ex_fifo #(
.WIDTH(20),
.DEPTH(16),
.DEPTHBITS(4),
.HEADREG(1),
.FULL_LEVEL(13)
) Maw_fifo0 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ reg0_mw_ptr_ff[7:0], cmd_out_mw[99:96], cmd_out_mw[62:61],
							cmd_out_mw[52:47] }),
	.in_push(mawtrk_fifo_num[0]),
	.in_pop(maw_fifo0_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(maw_fifo0_out[19:0]),
	.is_notfull(maw_fifo0_notfull),
	.out_valid(maw_fifo0_valid)
);

ex_fifo #(
.WIDTH(20),
.DEPTH(16),
.DEPTHBITS(4),
.HEADREG(1),
.FULL_LEVEL(13)
) Maw_fifo1 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ reg0_mw_ptr_ff[7:0], cmd_out_mw[99:96], cmd_out_mw[62:61],
							cmd_out_mw[52:47] }),
	.in_push(mawtrk_fifo_num[1]),
	.in_pop(maw_fifo1_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(maw_fifo1_out[19:0]),
	.is_notfull(maw_fifo1_notfull),
	.out_valid(maw_fifo1_valid)
);

ex_fifo #(
.WIDTH(20),
.DEPTH(16),
.DEPTHBITS(4),
.HEADREG(1),
.FULL_LEVEL(13)
) Maw_fifo2 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ reg0_mw_ptr_ff[7:0], cmd_out_mw[99:96], cmd_out_mw[62:61],
							cmd_out_mw[52:47] }),
	.in_push(mawtrk_fifo_num[2]),
	.in_pop(maw_fifo2_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(maw_fifo2_out[19:0]),
	.is_notfull(maw_fifo2_notfull),
	.out_valid(maw_fifo2_valid)
);

ex_fifo #(
.WIDTH(20),
.DEPTH(16),
.DEPTHBITS(4),
.HEADREG(1),
.FULL_LEVEL(13)
) Maw_fifo3 (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data({ reg0_mw_ptr_ff[7:0], cmd_out_mw[99:96], cmd_out_mw[62:61],
							cmd_out_mw[52:47] }),
	.in_push(mawtrk_fifo_num[3]),
	.in_pop(maw_fifo3_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(1'b0),
	.out_data(maw_fifo3_out[19:0]),
	.is_notfull(maw_fifo3_notfull),
	.out_valid(maw_fifo3_valid)
);


assign maw_fifo0_pop = b_complete_ff && maw_fifo0_valid && mawtrk_bid_hit[0];
assign maw_fifo1_pop = b_complete_ff && maw_fifo1_valid && mawtrk_bid_hit[1];
assign maw_fifo2_pop = b_complete_ff && maw_fifo2_valid && mawtrk_bid_hit[2];
assign maw_fifo3_pop = b_complete_ff && maw_fifo3_valid && mawtrk_bid_hit[3];


// MASTER BID
reg	bready_int_ff = 1'b0;
reg	b_resp_unexp_ff;
reg	b_resp_bad_ff;

wire	bready_int = ~mst_block_bready;

wire	b_complete = (bready_m && bvalid_m) || (mace_bready && mace_bvalid);

wire [2:0] b_resp_exp = ((mawtrk_bid_hit[0]) ? maw_fifo0_out[10:8] : 3'b000) |
			((mawtrk_bid_hit[1]) ? maw_fifo1_out[10:8] : 3'b000) |
			((mawtrk_bid_hit[2]) ? maw_fifo2_out[10:8] : 3'b000) |
			((mawtrk_bid_hit[3]) ? maw_fifo3_out[10:8] : 3'b000);
wire [2:0] b_resp_mask =
		((bresp_in_ff[1:0] == 2'b00) ? 3'b001 : 3'b000) |
		((bresp_in_ff[1:0] == 2'b01) ? 3'b010 : 3'b000) |
		((bresp_in_ff[1] == 1'b1) ? 3'b100 : 3'b000);
wire [2:0] b_resp_allowed = (b_resp_exp[2:0] == 3'b000) ? 3'b001 :
								b_resp_exp[2:0];
wire	b_resp_ok = ((b_resp_mask[2:0] & b_resp_allowed[2:0]) != 3'b000);
wire	b_resp_bad = b_complete_ff && ~b_resp_ok;
wire	b_resp_unexp = b_complete_ff & (mawtrk_bid_hit[3:0] == 4'h0);
wire [C_M_AXI_THREAD_ID_WIDTH-1:0] bid_in = bid_m[C_M_AXI_THREAD_ID_WIDTH-1:0] |
					mace_bid[C_M_AXI_THREAD_ID_WIDTH-1:0];
wire [1:0] bresp_in = bresp_m[1:0] | mace_bresp[1:0];

always @(posedge Clk) begin
	bready_int_ff <= (rst_l) ? bready_int : 1'b0;
	b_complete_ff <= (rst_l) ? b_complete : 1'b0;
	b_resp_unexp_ff <= (rst_l) ? b_resp_unexp : 1'b0;
	b_resp_bad_ff <= (rst_l) ? b_resp_bad : 1'b0;
	bid_in_ff[C_M_AXI_THREAD_ID_WIDTH-1:0] <= (rst_l) ?
				bid_in[C_M_AXI_THREAD_ID_WIDTH-1:0] : 1'b0;
	bresp_in_ff[1:0] <= (rst_l) ? bresp_in[1:0] : 2'b00;
end

assign bready_m = bready_int_ff;
assign mace_bready = bready_int_ff;

// MASTER complete logic
reg [15:0] mar_complete_vec_ff;
reg [15:0] maw_complete_vec_ff;
reg	mar_rack_ff;

wire	mar_agen0_complete = mar_agen0_pop && mar_agen0_done;
wire	mar_agen1_complete = mar_agen1_pop && mar_agen1_done;
wire	mar_agen2_complete = mar_agen2_pop && mar_agen2_done;
wire	mar_agen3_complete = mar_agen3_pop && mar_agen3_done;

wire	mar_rack = mar_agen0_complete || mar_agen1_complete ||
				mar_agen2_complete || mar_agen3_complete;

wire [15:0] mar_agen0_tag_exp = (mar_agen0_complete) ?
			(16'h1 << mar_agen0_id[11:8]) : 16'h0;
wire [15:0] mar_agen1_tag_exp = (mar_agen1_complete) ?
			(16'h1 << mar_agen1_id[11:8]) : 16'h0;
wire [15:0] mar_agen2_tag_exp = (mar_agen2_complete) ?
			(16'h1 << mar_agen2_id[11:8]) : 16'h0;
wire [15:0] mar_agen3_tag_exp = (mar_agen3_complete) ?
			(16'h1 << mar_agen3_id[11:8]) : 16'h0;

wire [15:0] mar_complete_next2 = (16'h1 << mrd_complete_ptr_ff[3:0]);
wire [15:0] mar_complete_inc_exp = mar_complete_next2[15:0] &
						mar_complete_vec_ff[15:0];
wire	mar_complete_doinc = (mar_complete_inc_exp[15:0] != 16'h0);
wire [15:0] mar_complete_vec = ~mar_complete_inc_exp[15:0] &
		(mar_agen0_tag_exp[15:0] | mar_agen1_tag_exp[15:0] |
		mar_agen2_tag_exp[15:0] | mar_agen3_tag_exp[15:0] |
						mar_complete_vec_ff[15:0]);

wire [15:0] maw_fifo0_tag_exp = (maw_fifo0_pop) ?
			(16'h1 << maw_fifo0_out[15:12]) : 16'h0;
wire [15:0] maw_fifo1_tag_exp = (maw_fifo1_pop) ?
			(16'h1 << maw_fifo1_out[15:12]) : 16'h0;
wire [15:0] maw_fifo2_tag_exp = (maw_fifo2_pop) ?
			(16'h1 << maw_fifo2_out[15:12]) : 16'h0;
wire [15:0] maw_fifo3_tag_exp = (maw_fifo3_pop) ?
			(16'h1 << maw_fifo3_out[15:12]) : 16'h0;
wire [15:0] maw_complete_next2 = (16'h1 << mwr_complete_ptr_ff[3:0]);
wire [15:0] maw_complete_inc_exp = maw_complete_next2[15:0] &
						maw_complete_vec_ff[15:0];
wire	maw_complete_doinc = (maw_complete_inc_exp[15:0] != 16'h0);
wire [15:0] maw_complete_vec = ~maw_complete_inc_exp[15:0] &
		(maw_fifo0_tag_exp[15:0] | maw_fifo1_tag_exp[15:0] |
		maw_fifo2_tag_exp[15:0] | maw_fifo3_tag_exp[15:0] |
						maw_complete_vec_ff[15:0]);

wire [8:0] mrd_complete_ptr = (~reg0_m_enable_ff) ? 9'h0 :
		(mar_complete_doinc) ? mrd_complete_ptr_ff[8:0] + 9'h1 :
						mrd_complete_ptr_ff[8:0];

wire [8:0] mwr_complete_ptr = (~reg0_m_enable_ff) ? 9'h0 :
		(maw_complete_doinc) ? mwr_complete_ptr_ff[8:0] + 9'h1 :
						mwr_complete_ptr_ff[8:0];

wire	mw_done = reg0_m_enable_ff && maw_done_ff &&
			(mwr_complete_ptr[8:0] == reg0_mw_ptr_ff[8:0]);
wire	mr_done = reg0_m_enable_ff && mar_done_ff &&
			(mrd_complete_ptr[8:0] == reg0_mr_ptr_ff[8:0]);


wire	err_detect_slv = reg1_errsig_enable && (reg2_err_ff[15:0] != 16'h0);
wire	err_detect_mst = reg4_errsig_enable && (reg2_err_ff[30:16] != 15'h0);
wire	err_detect = err_detect_slv || err_detect_mst;

always @(posedge Clk) begin
	mrd_complete_ptr_ff[8:0] <= (rst_l) ? mrd_complete_ptr[8:0] : 9'h0;
	mwr_complete_ptr_ff[8:0] <= (rst_l) ? mwr_complete_ptr[8:0] : 9'h0;
	mar_complete_vec_ff[15:0] <= (rst_l) ? mar_complete_vec[15:0] : 16'h0;
	maw_complete_vec_ff[15:0] <= (rst_l) ? maw_complete_vec[15:0] : 16'h0;
	mr_done_ff <= (rst_l) ? mr_done : 1'b0;
	mw_done_ff <= (rst_l) ? mw_done : 1'b0;
	mar_rack_ff <= (rst_l) ? mar_rack : 1'b0;
	err_detect_ff <= (rst_l) ? err_detect : 1'b0;
end

assign err_new_mst[31:16] = { reg0_m_disable, 7'h0,
	3'b000, mr_unexp,
	b_resp_unexp_ff, b_resp_bad_ff, mr_fifo_out_resp_bad, mr_bad_last_ff };

assign	err_out = err_detect_ff;
assign	irq_out = reg2_err_ff[31];

assign	mace_wack = b_complete_ff;
assign	mace_rack = mar_rack_ff;

// Snoop response for ACE: ACFIFO

wire [1:0] acfifo_out;
wire	acfifo_push = mace_acvalid && mace_acready;
wire	acfifo_pop;
wire	acfifo_notfull, acfifo_valid;
wire	crfifo_notfull;

ex_fifo #(
.WIDTH(2),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Acfifo (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(2'b0),
	.in_push(acfifo_push),
	.in_pop(acfifo_pop),
	.in_block_notfull(mst_block_acready),
	.in_block_outvalid(1'b0),
	.out_data(acfifo_out[1:0]),
	.is_notfull(acfifo_notfull),
	.out_valid(acfifo_valid)
);

assign mace_acready = acfifo_notfull;
assign	acfifo_pop = acfifo_valid && crfifo_notfull;
wire	crfifo_push = acfifo_pop;


wire	crfifo_pop;
wire	crfifo_valid;
wire [1:0] crfifo_out;

ex_fifo #(
.WIDTH(2),
.DEPTH(8),
.DEPTHBITS(3),
.HEADREG(1),
.FULL_LEVEL(5)
) Crfifo (
	.Clk(Clk),
	.rst_l(rst_l),
	.in_data(2'b0),
	.in_push(crfifo_push),
	.in_pop(crfifo_pop),
	.in_block_notfull(1'b0),
	.in_block_outvalid(mst_block_crvalid),
	.out_data(crfifo_out[1:0]),
	.is_notfull(crfifo_notfull),
	.out_valid(crfifo_valid)
);

assign	crfifo_pop = mace_crvalid && mace_crready;

assign mace_crresp[4:0] = 5'b00000;
assign mace_crvalid = crfifo_valid;
assign mace_cddata[C_M_AXI_DATA_WIDTH-1:0] = { C_M_AXI_DATA_WIDTH { 1'b0 } };
assign mace_cdlast = 1'b0;
assign mace_cdvalid = 1'b0;


// CMD logic

wire [63:0] cmdram_we64 = wfifo_out_be[C_S_AXI_DATA_WIDTH/8-1:0];
wire [3:0] cmdram_we4 = cmdram_we64[63:60] | cmdram_we64[59:56] |
		cmdram_we64[55:52] | cmdram_we64[51:48] |
		cmdram_we64[47:44] | cmdram_we64[43:40] |
		cmdram_we64[39:36] | cmdram_we64[35:32] |
		cmdram_we64[31:28] | cmdram_we64[27:24] |
		cmdram_we64[23:20] | cmdram_we64[19:16] |
		cmdram_we64[15:12] | cmdram_we64[11:8] |
		cmdram_we64[7:4] | cmdram_we64[3:0];

wire [3:0] cmdram_we_pre = (wbuf_pop && aw_agen_memsel[0]) ? cmdram_we4[3:0] :
									4'h0;
wire [15:0] cmdram_we =
	(aw_agen_addr[3:2] == 2'b11) ? { cmdram_we_pre[3:0], 12'h0 } :
	(aw_agen_addr[3:2] == 2'b10) ? { 4'h0, cmdram_we_pre[3:0], 8'h0 } :
	(aw_agen_addr[3:2] == 2'b01) ? { 8'h0, cmdram_we_pre[3:0], 4'h0 } :
						{ 12'h0, cmdram_we_pre[3:0] };

wire [15:0] cmdram_addra = (reg0_m_enable_ff) ?
		{ 4'b0001, maw_ptr_new[7:0], 4'b0000 } :
		{ 3'b000, aw_agen_addr[12:4], 4'b0000 };

wire [15:0] cmdram_addrb = (reg0_m_enable_ff) ?
		{ 4'b0000, mar_ptr_new[7:0], 4'b0000 } :
		{ 3'b000, ar_agen0_addr[12:4], 4'b0000 };

wire [127:0] cmd_wr_data = { 4 { wr_reg_data[31:0] } };
wire [15:0] cmd_wr_ext_data = reg14_cmdext_wr_ff[15:0];

cmdram #(
.C_FAMILY(C_FAMILY),
.C_REGISTER_CMD(C_REGISTER_CMD)
) Cmdram (
	.clk_a(Clk),
	.we_a(cmdram_we[15:0]),
	.active(reg0_m_enable_ff),
	.addr_a_idle({ 3'b000, aw_agen_addr[12:4], 4'b0000 }),
	.addr_a_active( { 4'b0001, maw_ptr_new[7:0], 4'b0000 }),
	.wr_data_a(cmd_wr_data[127:0]),
	.wr_ext_data_a(cmd_wr_ext_data[15:0]),
	.rd_data_a(cmd_out_mw[143:0]),

	.clk_b(Clk),
	.addr_b_idle_latch(arfifo_valid),
	.addr_b_idle({ 3'b000, arfifo_out[12:4], 4'b0000 }),
	.addr_b_active({ 4'b0000, mar_ptr_new[7:0], 4'b0000 }),
	.rd_data_b(cmd_out_mr[143:0])
);

reg [127:0] dbg_data_ff;
reg [15:0] dbg_ext_ff;

wire [127:0] dbg_datam = { 4'h0,
		cmdram_we[15:0],					//123:08
		cmdram_addrb[11:4],					//107:00
		cmdram_addra[11:4],					//99:92
		mwr_complete_ptr_ff[7:0],				//91:84
		mrd_complete_ptr_ff[7:0],				//83:76
		mar_agen1_complete, mar_agen0_complete,
			maw_fifo1_pop, maw_fifo0_pop,			//75:72
		maw_agen_done, mw_fifo_valid, mw_fifo_pop,
					mw_fifo_notfull,		//71:68
		maw_fifow_pop, maw_fifow_valid, maw_agen_pop,
					maw_agen_valid,			//67:64
		maw_done_ff, maw_valid, maw_fifo_push_ff, maw_depend_ok,//63:60
		maw_agen_addr_ff[11:0],					//59:48
		mar_agen0_addr[11:0],					//47:36
		mram_we[3:0],						//35:32
		mar_agen0_done, mr_fifo_valid, mr_fifo_pop,
					mr_fifo_notfull,		//31:28
		mar_fifo0_pop, mar_fifo0_valid, mar_agen0_pop,
					mar_agen0_valid,		//27:24
		mar_done_ff, mar_valid, mar_fifo_push_ff, mar_depend_ok,//23:20
		reg0_mw_ptr_ff[7:0],					//19:12
		reg0_mr_ptr_ff[7:0],					//11:4
		mr_done_ff, mw_done_ff, 1'b0, reg0_m_enable_ff		//3:0
};

wire [31:0] dbg_excl32 = excl_dbg[255:0] >> { reg1_excl_shift[2:0], 5'b0 };
wire [127:0] dbg_datas = { dbg_excl32[31:0],
		excl_valid[7:0], excl_ar_wr[7:0], excl_arhit[7:0],
							excl_awexok[7:0],
		arfifo_out64[63:37], aw_agen_valid,
		awfifo_out_null, excl_aw_agen_nulled, excl_arvalid,
							excl_aw_agen_wr,
		awfifo_out64[63:32] };
wire [127:0] dbg_data = (reg1_dbg_slave) ? dbg_datas[127:0] : dbg_datam[127:0];

wire [15:0] dbg_ext = { wbuf_pop, wfifo_valid, aw_agen_valid, bfifo_notfull,
	bfifo0_notfull, bfifo1_notfull, bfifo2_notfull, bfifo3_notfull,
	btrk_free[3:0], 
	aw_agen_write, aw_agen_done, awfifo_valid, awfifo_out_null };

always @(posedge Clk) begin
	dbg_data_ff[127:0] <= (rst_l) ? dbg_data[127:0] : 128'h0;
	dbg_ext_ff[15:0] <= (rst_l) ? dbg_ext[15:0] : 16'h0;
end

assign dbg_out[127:0] = dbg_data_ff[127:0];
assign dbg_out_ext[15:0] = dbg_ext_ff[15:0];

reg	do_sim_dump_ff = 1'b0;
reg	do_sim_dump_2ff = 1'b0;
wire [15:0] sim_addr = (do_sim_dump_ff) ?
		sim_addr_ff[15:0] + (C_S_AXI_DATA_WIDTH/8) : sim_addr_ff[15:0];
`ifdef SIMULATION
integer rx_dump = 0;

always @(posedge top.endsim) begin
	rx_dump = $fopen(C_OUTFILE);
	sim_dump = 1;
end

always @(posedge sim_dump) begin
	#2;
	sim_addr_ff[15:0] = 16'h0;
	do_sim_dump_ff = 1'b0;
	sim_clk = 1'b0;
	#10;
	while(sim_dump) begin
		sim_clk = !sim_clk;
		#0.1;
	end
end

reg [15:0] sim_addr_2ff;

wire	do_sim_dump = sim_dump;

always @(posedge sim_clk) begin
	do_sim_dump_ff <= (rst_l) ? do_sim_dump : 1'b0;
	do_sim_dump_2ff <= (rst_l) ? do_sim_dump_ff : 1'b0;
	sim_addr_ff[15:0] <= (rst_l) ? sim_addr[15:0] : 16'h0;
	sim_addr_2ff[15:0] <= (rst_l) ? sim_addr_ff[15:0] : 16'h0;
end

wire	sim_addr_oflow = (C_S_AXI_DATA_WIDTH == 512) ? sim_addr_ff[15] :
			(C_S_AXI_DATA_WIDTH == 256) ? sim_addr_ff[14] :
						sim_addr_ff[13];
reg [31:0] simval32;
integer simshift;

always @(posedge sim_clk) begin
	#0.001;
	if(do_sim_dump_2ff && sim_dump) begin
		for(simshift = 0; simshift < C_S_AXI_DATA_WIDTH;
						simshift = simshift + 32) begin
			simval32[31:0] = sim_slvram_rddata >> simshift;
			$fdisplay(rx_dump, "%h", simval32[31:0]);
		end
	end
	if(sim_addr_oflow) begin
		top.dump_done = 1;
		sim_dump = 0;
		$fclose(rx_dump);
	end
end
`endif

endmodule

module slvram #(
parameter C_FAMILY = "virtex4",
parameter C_DATA_WIDTH = 64
) (
input clk_a,
input [C_DATA_WIDTH/8-1:0] we_a,
input [14:0] addr_a,
input [C_DATA_WIDTH-1:0] wr_data_a,
output [C_DATA_WIDTH-1:0] rd_data_a,

input clk_b,
input [C_DATA_WIDTH/8-1:0] we_b,
input [14:0] addr_b,
input [C_DATA_WIDTH-1:0] wr_data_b,
output [C_DATA_WIDTH-1:0] rd_data_b
);

// DATA=32 --> WIDTHP 9
// DATA=64 --> WIDTHP 18
// DATA=128 --> WIDTHP 36
// DATA=256 --> WIDTHP 36 (but 8 RAMB16s instead of 4)
// DATA=512 --> WIDTHP 36 (but 16 RAMB16s instead of 4)
localparam EFF_WIDTH = (C_DATA_WIDTH > 128) ? 128 : C_DATA_WIDTH;
localparam NUM_RAMS4 = C_DATA_WIDTH / 128;
localparam WIDTHP = (EFF_WIDTH/32) * 9;
localparam WIDTH = (EFF_WIDTH/32) * 8;
localparam BWIDTH = (EFF_WIDTH/32);
localparam NUM_RAMS4_MIN = (NUM_RAMS4 < 1) ? 1 : NUM_RAMS4;

wire [127:0] rd_a_dummy, rd_b_dummy;

wire [14:0] addr_a_shifted =
		(C_DATA_WIDTH == 32) ? { 1'b0, addr_a[12:2], 3'b000 } :
		(C_DATA_WIDTH == 64) ? { 1'b0, addr_a[12:3], 4'b0000 } :
		(C_DATA_WIDTH == 128) ? { 1'b0, addr_a[12:4], 5'b0000 } :
		(C_DATA_WIDTH == 256) ? { 1'b0, addr_a[13:5], 5'b0000 } :
					{ 1'b0, addr_a[14:6], 5'b0000 };

wire [14:0] addr_b_shifted =
		(C_DATA_WIDTH == 32) ? { 1'b0, addr_b[12:2], 3'b000 } :
		(C_DATA_WIDTH == 64) ? { 1'b0, addr_b[12:3], 4'b0000 } :
		(C_DATA_WIDTH == 128) ? { 1'b0, addr_b[12:4], 5'b0000 } :
		(C_DATA_WIDTH == 256) ? { 1'b0, addr_b[13:5], 5'b0000 } :
					{ 1'b0, addr_b[14:6], 5'b0000 };

generate
genvar gi;
for(gi = 0; gi < NUM_RAMS4_MIN; gi = gi + 1) begin: w

rams4 #(
	.WIDTHP(WIDTHP),
	.WIDTH(WIDTH),
	.BWIDTH(BWIDTH)
) r4 (
	.clk_a(clk_a),
	.wr_data_a(wr_data_a[4*WIDTH*(gi+1)-1:4*WIDTH*gi]),
	.addr_a_shifted(addr_a_shifted[14:0]),
	.we_a(we_a[4*BWIDTH*(gi+1)-1:4*BWIDTH*gi]),
	.rd_data_a(rd_data_a[4*WIDTH*(gi+1)-1:4*WIDTH*gi]),

	.clk_b(clk_b),
	.wr_data_b(wr_data_b[4*WIDTH*(gi+1)-1:4*WIDTH*gi]),
	.addr_b_shifted(addr_b_shifted[14:0]),
	.we_b(we_b[4*BWIDTH*(gi+1)-1:4*BWIDTH*gi]),
	.rd_data_b(rd_data_b[4*WIDTH*(gi+1)-1:4*WIDTH*gi])
);

end
endgenerate

endmodule

module rams4 #(
parameter C_FAMILY = "virtex4",
parameter WIDTHP = 36,
parameter WIDTH = 32,
parameter BWIDTH = 4
) (
input clk_a,
input [4*BWIDTH-1:0] we_a,
input [14:0] addr_a_shifted,
input [4*WIDTH-1:0] wr_data_a,
output [4*WIDTH-1:0] rd_data_a,

input clk_b,
input [4*BWIDTH-1:0] we_b,
input [14:0] addr_b_shifted,
input [4*WIDTH-1:0] wr_data_b,
output [4*WIDTH-1:0] rd_data_b
);

wire [31:0] rd_data_a0_int, rd_data_b0_int;
wire [31:0] rd_data_a1_int, rd_data_b1_int;
wire [31:0] rd_data_a2_int, rd_data_b2_int;
wire [31:0] rd_data_a3_int, rd_data_b3_int;
assign rd_data_a[4*WIDTH-1:0] = {
	rd_data_a3_int[WIDTH-1:0], rd_data_a2_int[WIDTH-1:0],
	rd_data_a1_int[WIDTH-1:0], rd_data_a0_int[WIDTH-1:0] };

assign rd_data_b[4*WIDTH-1:0] = {
	rd_data_b3_int[WIDTH-1:0], rd_data_b2_int[WIDTH-1:0],
	rd_data_b1_int[WIDTH-1:0], rd_data_b0_int[WIDTH-1:0] };

wire [31:0] wr_data_a0_int = wr_data_a[(0+1)*WIDTH-1:0*WIDTH];
wire [31:0] wr_data_a1_int = wr_data_a[(1+1)*WIDTH-1:1*WIDTH];
wire [31:0] wr_data_a2_int = wr_data_a[(2+1)*WIDTH-1:2*WIDTH];
wire [31:0] wr_data_a3_int = wr_data_a[(3+1)*WIDTH-1:3*WIDTH];
wire [31:0] wr_data_b0_int = wr_data_b[(0+1)*WIDTH-1:0*WIDTH];
wire [31:0] wr_data_b1_int = wr_data_b[(1+1)*WIDTH-1:1*WIDTH];
wire [31:0] wr_data_b2_int = wr_data_b[(2+1)*WIDTH-1:2*WIDTH];
wire [31:0] wr_data_b3_int = wr_data_b[(3+1)*WIDTH-1:3*WIDTH];

wire [3:0] we_a0_int = we_a[(0+1)*BWIDTH-1:0*BWIDTH];
wire [3:0] we_a1_int = we_a[(1+1)*BWIDTH-1:1*BWIDTH];
wire [3:0] we_a2_int = we_a[(2+1)*BWIDTH-1:2*BWIDTH];
wire [3:0] we_a3_int = we_a[(3+1)*BWIDTH-1:3*BWIDTH];
wire [3:0] we_b0_int = we_b[(0+1)*BWIDTH-1:0*BWIDTH];
wire [3:0] we_b1_int = we_b[(1+1)*BWIDTH-1:1*BWIDTH];
wire [3:0] we_b2_int = we_b[(2+1)*BWIDTH-1:2*BWIDTH];
wire [3:0] we_b3_int = we_b[(3+1)*BWIDTH-1:3*BWIDTH];

RAMB16 #(
	.WRITE_WIDTH_A(WIDTHP),
	.WRITE_WIDTH_B(WIDTHP),
	.READ_WIDTH_A(WIDTHP),
	.READ_WIDTH_B(WIDTHP),
	.SRVAL_A('h0),
	.SRVAL_B('h0)
)
ramb16_0 (
	.CLKA(clk_a),
	.DIA(wr_data_a0_int[31:0]),
	.DIPA(4'h0),
	.ADDRA(addr_a_shifted[14:0]),
	.WEA(we_a0_int[3:0]),
	.ENA(1'b1),
	.REGCEA(1'b0),
	.SSRA(1'b0),
	.CASCADEINA(1'b0),
	.DOA(rd_data_a0_int[31:0]),
	.CASCADEOUTA(),
	.DOPA(),

	.CLKB(clk_b),
	.DIB(wr_data_b0_int[31:0]),
	.DIPB(4'h0),
	.ADDRB(addr_b_shifted[14:0]),
	.WEB(we_b0_int[3:0]),
	.ENB(1'b1),
	.REGCEB(1'b0),
	.SSRB(1'b0),
	.CASCADEINB(1'b0),
	.CASCADEOUTB(),
	.DOPB(),
	.DOB(rd_data_b0_int[31:0])
);

RAMB16 #(
	.WRITE_WIDTH_A(WIDTHP),
	.WRITE_WIDTH_B(WIDTHP),
	.READ_WIDTH_A(WIDTHP),
	.READ_WIDTH_B(WIDTHP),
	.SRVAL_A('h0),
	.SRVAL_B('h0)
)
ramb16_1 (
	.CLKA(clk_a),
	.DIA(wr_data_a1_int[31:0]),
	.DIPA(4'h0),
	.ADDRA(addr_a_shifted[14:0]),
	.WEA(we_a1_int[3:0]),
	.ENA(1'b1),
	.REGCEA(1'b0),
	.SSRA(1'b0),
	.CASCADEINA(1'b0),
	.DOA(rd_data_a1_int[31:0]),
	.CASCADEOUTA(),
	.DOPA(),

	.CLKB(clk_b),
	.DIB(wr_data_b1_int[31:0]),
	.DIPB(4'h0),
	.ADDRB(addr_b_shifted[14:0]),
	.WEB(we_b1_int[3:0]),
	.ENB(1'b1),
	.REGCEB(1'b0),
	.SSRB(1'b0),
	.CASCADEINB(1'b0),
	.CASCADEOUTB(),
	.DOPB(),
	.DOB(rd_data_b1_int[31:0])
);

RAMB16 #(
	.WRITE_WIDTH_A(WIDTHP),
	.WRITE_WIDTH_B(WIDTHP),
	.READ_WIDTH_A(WIDTHP),
	.READ_WIDTH_B(WIDTHP),
	.SRVAL_A('h0),
	.SRVAL_B('h0)
)
ramb16_2 (
	.CLKA(clk_a),
	.DIA(wr_data_a2_int[31:0]),
	.DIPA(4'h0),
	.ADDRA(addr_a_shifted[14:0]),
	.WEA(we_a2_int[3:0]),
	.ENA(1'b1),
	.REGCEA(1'b0),
	.SSRA(1'b0),
	.CASCADEINA(1'b0),
	.DOA(rd_data_a2_int[31:0]),
	.CASCADEOUTA(),
	.DOPA(),

	.CLKB(clk_b),
	.DIB(wr_data_b2_int[31:0]),
	.DIPB(4'h0),
	.ADDRB(addr_b_shifted[14:0]),
	.WEB(we_b2_int[3:0]),
	.ENB(1'b1),
	.REGCEB(1'b0),
	.SSRB(1'b0),
	.CASCADEINB(1'b0),
	.CASCADEOUTB(),
	.DOPB(),
	.DOB(rd_data_b2_int[31:0])
);

RAMB16 #(
	.WRITE_WIDTH_A(WIDTHP),
	.WRITE_WIDTH_B(WIDTHP),
	.READ_WIDTH_A(WIDTHP),
	.READ_WIDTH_B(WIDTHP),
	.SRVAL_A('h0),
	.SRVAL_B('h0)
)
ramb16_3 (
	.CLKA(clk_a),
	.DIA(wr_data_a3_int[31:0]),
	.DIPA(4'h0),
	.ADDRA(addr_a_shifted[14:0]),
	.WEA(we_a3_int[3:0]),
	.ENA(1'b1),
	.REGCEA(1'b0),
	.SSRA(1'b0),
	.CASCADEINA(1'b0),
	.DOA(rd_data_a3_int[31:0]),
	.CASCADEOUTA(),
	.DOPA(),

	.CLKB(clk_b),
	.DIB(wr_data_b3_int[31:0]),
	.DIPB(4'h0),
	.ADDRB(addr_b_shifted[14:0]),
	.WEB(we_b3_int[3:0]),
	.ENB(1'b1),
	.REGCEB(1'b0),
	.SSRB(1'b0),
	.CASCADEINB(1'b0),
	.CASCADEOUTB(),
	.DOPB(),
	.DOB(rd_data_b3_int[31:0])
);

endmodule

module cmdram #(
parameter C_FAMILY = "virtex4",
parameter C_REGISTER_CMD = 1
) (
input clk_a,
input active,
input [15:0] we_a,
input [15:0] addr_a_idle,
input [15:0] addr_a_active,
input [127:0] wr_data_a,
input [15:0] wr_ext_data_a,
output [143:0] rd_data_a,

input clk_b,
input addr_b_idle_latch,
input [15:0] addr_b_idle,
input [15:0] addr_b_active,
output [143:0] rd_data_b
);

// Cmdram
wire [143:0] a_int_rd_data, b_int_rd_data;

reg [12:0] a_addr_act_ff, b_addr_act_ff;
reg [12:0] a_addr_active_ff, b_addr_active_ff;
reg [143:0] a_int_rd_ff, b_int_rd_ff;
reg [12:0] b_addr_idle_save_ff;
reg	active_ff, active_2ff;

wire a_changed = (addr_a_active[4] ^ a_addr_active_ff[4]) ||
				(active_ff && ~active_2ff);
wire [12:0] a_addr_act = (C_REGISTER_CMD == 0) ? addr_a_active[12:0] :
				(~active) ? addr_a_active[12:0] :
				(a_changed) ? a_addr_act_ff[12:0] + 13'h10 :
							a_addr_act_ff[12:0];
wire [12:0] a_addr = (active) ? a_addr_act[12:0] : addr_a_idle[12:0];
wire [143:0] a_int_rd = (a_changed || ~active) ? a_int_rd_data[143:0] :
						a_int_rd_ff[143:0];

wire b_changed = (addr_b_active[4] ^ b_addr_active_ff[4]) ||
				(active_ff && ~active_2ff);
wire [12:0] b_addr_act = (C_REGISTER_CMD == 0) ? addr_b_active[12:0] :
				(~active) ? addr_b_active[12:0] :
				(b_changed) ? b_addr_act_ff[12:0] + 13'h10 :
							b_addr_act_ff[12:0];
wire [12:0] b_addr_idle_save = (addr_b_idle_latch) ? addr_b_idle[12:0] :
						b_addr_idle_save_ff[12:0];
wire [12:0] b_addr = (active) ? b_addr_act[12:0] : b_addr_idle_save[12:0];

wire [143:0] b_int_rd = (b_changed || ~active) ? b_int_rd_data[143:0] :
						b_int_rd_ff[143:0];

always @(posedge clk_b) begin
	active_ff <= active;
	active_2ff <= active_ff;
	a_addr_active_ff[12:0] <= addr_a_active[12:0];
	b_addr_active_ff[12:0] <= addr_b_active[12:0];
	a_addr_act_ff[12:0] <= a_addr_act[12:0];
	b_addr_act_ff[12:0] <= b_addr_act[12:0];
	a_int_rd_ff[143:0] <= a_int_rd[143:0];
	b_int_rd_ff[143:0] <= b_int_rd[143:0];
	b_addr_idle_save_ff[12:0] <= b_addr_idle_save[12:0];
end

RAMB16 #(
	.READ_WIDTH_A(36),
	.READ_WIDTH_B(36),
	.WRITE_WIDTH_A(36),
	.WRITE_WIDTH_B(36),
	.SRVAL_A('h0),
	.SRVAL_B('h0)
)
ram0 (
	.CLKA(clk_a),
	.DIA(wr_data_a[31:0]),
	.DIPA(wr_ext_data_a[3:0]),
	.ADDRA({ 1'b0, a_addr[12:4], 5'h0 }),
	.WEA(we_a[3:0]),
	.ENA(1'b1),
	.REGCEA(1'b0),
	.SSRA(1'b0),
	.DOA(a_int_rd_data[31:0]),
	.CASCADEINA(1'b0),
	.CASCADEOUTA(),
	.DOPA(a_int_rd_data[131:128]),

	.CLKB(clk_b),
	.DIB(32'h0),
	.DIPB(4'h0),
	.ADDRB({ 1'b0, b_addr[12:4], 5'h0 }),
	.WEB(4'h0),
	.ENB(1'b1),
	.REGCEB(1'b0),
	.SSRB(1'b0),
	.DOB(b_int_rd_data[31:0]),
	.CASCADEOUTB(),
	.DOPB(b_int_rd_data[131:128]),
	.CASCADEINB(1'b0)
);

RAMB16 #(
	.READ_WIDTH_A(36),
	.READ_WIDTH_B(36),
	.WRITE_WIDTH_A(36),
	.WRITE_WIDTH_B(36),
	.SRVAL_A('h0),
	.SRVAL_B('h0)
)
ram1 (
	.CLKA(clk_a),
	.DIA(wr_data_a[63:32]),
	.DIPA(wr_ext_data_a[7:4]),
	.ADDRA({ 1'b0, a_addr[12:4], 5'h0 }),
	.WEA(we_a[7:4]),
	.ENA(1'b1),
	.REGCEA(1'b0),
	.SSRA(1'b0),
	.DOA(a_int_rd_data[63:32]),
	.CASCADEINA(1'b0),
	.CASCADEOUTA(),
	.DOPA(a_int_rd_data[135:132]),

	.CLKB(clk_b),
	.DIB(32'h0),
	.DIPB(4'h0),
	.ADDRB({ 1'b0, b_addr[12:4], 5'h0 }),
	.WEB(4'h0),
	.ENB(1'b1),
	.REGCEB(1'b0),
	.SSRB(1'b0),
	.DOB(b_int_rd_data[63:32]),
	.CASCADEOUTB(),
	.DOPB(b_int_rd_data[135:132]),
	.CASCADEINB(1'b0)
);

RAMB16 #(
	.READ_WIDTH_A(36),
	.READ_WIDTH_B(36),
	.WRITE_WIDTH_A(36),
	.WRITE_WIDTH_B(36),
	.SRVAL_A('h0),
	.SRVAL_B('h0)
)
ram2 (
	.CLKA(clk_a),
	.DIA(wr_data_a[95:64]),
	.DIPA(wr_ext_data_a[11:8]),
	.ADDRA({ 1'b0, a_addr[12:4], 5'h0 }),
	.WEA(we_a[11:8]),
	.ENA(1'b1),
	.REGCEA(1'b0),
	.SSRA(1'b0),
	.DOA(a_int_rd_data[95:64]),
	.CASCADEINA(1'b0),
	.CASCADEOUTA(),
	.DOPA(a_int_rd_data[139:136]),

	.CLKB(clk_b),
	.DIB(32'h0),
	.DIPB(4'h0),
	.ADDRB({ 1'b0, b_addr[12:4], 5'h0 }),
	.WEB(4'h0),
	.ENB(1'b1),
	.REGCEB(1'b0),
	.SSRB(1'b0),
	.DOB(b_int_rd_data[95:64]),
	.CASCADEOUTB(),
	.DOPB(b_int_rd_data[139:136]),
	.CASCADEINB(1'b0)
);

RAMB16 #(
	.READ_WIDTH_A(36),
	.READ_WIDTH_B(36),
	.WRITE_WIDTH_A(36),
	.WRITE_WIDTH_B(36),
	.SRVAL_A('h0),
	.SRVAL_B('h0)
)
ram3 (
	.CLKA(clk_a),
	.DIA(wr_data_a[127:96]),
	.DIPA(wr_ext_data_a[15:12]),
	.ADDRA({ 1'b0, a_addr[12:4], 5'h0 }),
	.WEA(we_a[15:12]),
	.ENA(1'b1),
	.REGCEA(1'b0),
	.SSRA(1'b0),
	.DOA(a_int_rd_data[127:96]),
	.CASCADEINA(1'b0),
	.CASCADEOUTA(),
	.DOPA(a_int_rd_data[143:140]),

	.CLKB(clk_b),
	.DIB(32'h0),
	.DIPB(4'h0),
	.ADDRB({ 1'b0, b_addr[12:4], 5'h0 }),
	.WEB(4'h0),
	.ENB(1'b1),
	.REGCEB(1'b0),
	.SSRB(1'b0),
	.DOB(b_int_rd_data[127:96]),
	.CASCADEOUTB(),
	.DOPB(b_int_rd_data[143:140]),
	.CASCADEINB(1'b0)
);

assign rd_data_a[143:0] = (C_REGISTER_CMD == 0) ? a_int_rd_data[143:0] :
							a_int_rd_ff[143:0];
assign rd_data_b[143:0] = (C_REGISTER_CMD == 0) ? b_int_rd_data[143:0] :
							b_int_rd_ff[143:0];

endmodule


module ex_fifo
	#(
parameter WIDTH = 10,
parameter DEPTH = 8,
parameter DEPTHBITS = 3,
parameter HEADREG = 1,
parameter ZERO_INVALID = 0,
parameter FULL_LEVEL = 6
	) (
input	Clk,
input	rst_l,
input [WIDTH-1:0] in_data,
input	in_push,
input	in_pop,
input	in_block_notfull,
input	in_block_outvalid,
output [WIDTH-1:0] out_data,
output	is_notfull,
output	out_valid
);

reg [WIDTH-1:0] data_ff[DEPTH-1:0];
reg [DEPTHBITS-1:0] out_ptr_ff;
reg [DEPTHBITS-1:0] in_ptr_ff;
reg [DEPTHBITS:0] depth_ff;
reg [WIDTH-1:0] headreg_ff;
reg	full_ff, notfull_ff, valid_ff, valid_filt_ff;

wire [DEPTHBITS-1:0] in_ptr = (in_push) ? in_ptr_ff[DEPTHBITS-1:0] + 'h1 :
						in_ptr_ff[DEPTHBITS-1:0];
wire [DEPTHBITS:0] depth =
		(in_push && ~in_pop) ? depth_ff[DEPTHBITS:0] + 'h1 :
		(~in_push && in_pop) ? depth_ff[DEPTHBITS:0] - 'h1 :
							depth_ff[DEPTHBITS:0];
wire	depth_was1 = (depth_ff[DEPTHBITS:0] == 'h1);
wire	depth_near0 = (depth_ff[DEPTHBITS:1] == 'h0);
wire	depth_more2 = (depth_ff[DEPTHBITS:0] >= 'h2);
wire	valid = depth_more2 || (depth_was1 && ~in_pop) || in_push;
wire	full = (depth_ff[DEPTHBITS:0] >= FULL_LEVEL) || in_block_notfull;
wire	notfull = ~full;
wire [WIDTH-1:0] raw_data = data_ff[out_ptr_ff[DEPTHBITS-1:0]];

wire [DEPTHBITS-1:0] out_ptr = (in_pop) ? out_ptr_ff[DEPTHBITS-1:0] + 'h1 :
						out_ptr_ff[DEPTHBITS-1:0];

wire [WIDTH-1:0] head_raw_data = (depth_was1) ? in_data[WIDTH-1:0] :
							raw_data[WIDTH-1:0];
wire [WIDTH-1:0] headreg = (!valid_ff && in_push) ? in_data[WIDTH-1:0] :
		(in_pop) ? head_raw_data[WIDTH-1:0] : headreg_ff[WIDTH-1:0];

wire	valid_filt = valid &&
			((valid_filt_ff && ~in_pop) || ~in_block_outvalid);
			// Deassert output valid sometimes, without changing
			//  internal valid logic.  Do not deassert valid once
			//  its been asserted, until other agent drives ready

always @(posedge Clk) begin
	in_ptr_ff[DEPTHBITS-1:0] <= (rst_l) ? in_ptr[DEPTHBITS-1:0] : 'h0;
	out_ptr_ff[DEPTHBITS-1:0] <= (rst_l) ? out_ptr[DEPTHBITS-1:0] :
						((HEADREG) ? 'h1 : 'h0);
	depth_ff[DEPTHBITS:0] <= (rst_l) ? depth[DEPTHBITS:0] : 'h0;
	valid_ff <= (rst_l) ? valid : 1'b0;
	valid_filt_ff <= (rst_l) ? valid_filt : 1'b0;
	full_ff <= (rst_l) ? full : 1'b1;
	notfull_ff <= (rst_l) ? notfull : 1'b0;
	headreg_ff[WIDTH-1:0] <= (rst_l) ? headreg[WIDTH-1:0] : 'h0;
end

integer i;
always @(posedge Clk) begin
	if(in_push) begin
		data_ff[in_ptr_ff[DEPTHBITS-1:0]] <= in_data[WIDTH-1:0];
	end

`ifdef FOO_BAR
	for(i = 0; i < DEPTH; i = i + 1) begin
		if(~rst_l && (HEADREG == 0)) begin
			data_ff[i] <= 'h0;
		end else if((i == in_ptr_ff[DEPTHBITS-1:0]) && in_push) begin
			data_ff[i] <= in_data[WIDTH-1:0];
		end
	end
`endif
end


assign out_data[WIDTH-1:0] = (ZERO_INVALID && ~valid_filt_ff) ? { WIDTH {1'b0}}:
				(HEADREG) ? headreg_ff[WIDTH-1:0] :
							raw_data[WIDTH-1:0];
assign out_valid = valid_filt_ff;
//assign is_full = full_ff;
assign is_notfull = notfull_ff;
//assign is_empty = ~valid_ff;

endmodule

module addrgen
	#(
parameter USE_ADDR_OFFSET = 0,
parameter C_DATA_WIDTH = 64,
parameter ID_WIDTH = 16,
parameter IS_READ = 1
	) (
input	Clk,
input	rst_l,
input [15:0] in_addr,
input [9:0] in_addr_offset,
input [ID_WIDTH-1:0] in_id,
input [7:0] in_len,
input [2:0] in_size,
input [6:0] in_lastaddr,
input [1:0] in_burst,
input	in_push,
input	in_pop,
output [15:0] out_addr,
output [ID_WIDTH-1:0] out_id,
output [C_DATA_WIDTH/8-1:0] out_be,
output	out_done,
output	out_valid
);

localparam ADDR_BITS = (C_DATA_WIDTH == 32) ? 2 :
			(C_DATA_WIDTH == 64) ? 3 :
			(C_DATA_WIDTH == 128) ? 4 :
			(C_DATA_WIDTH == 256) ? 5 : 6;
reg [15:0] addr_ff;
reg [7:0] len_ff;
reg [C_DATA_WIDTH/8-1:0] be_ff;
reg [2:0] size_ff;
reg [1:0] burst_ff;
reg [ADDR_BITS-1:0] lastaddr_ff;
reg [11:0] wrap_mask_ff;
reg [11:0] addr_offset_ff;
reg [15:0] addr_base_ff;
reg [ID_WIDTH-1:0] id_ff;
reg	done_ff, valid_ff;

wire [2:0] limited_size = (C_DATA_WIDTH <= 64) ? { 1'b0, in_size[1:0] } :
							in_size[2:0];
wire [2:0] size = (in_push) ? limited_size[2:0] : size_ff[2:0];
wire [1:0] burst = (in_push) ? in_burst[1:0] : burst_ff[1:0];
wire [ID_WIDTH-1:0] id = (in_push) ? in_id[ID_WIDTH-1:0] : id_ff[ID_WIDTH-1:0];
wire [5:0] mask_raw = (8'h1 << limited_size[2:0]) - 8'h1;
wire [9:0] wrap_mask_raw = (in_len[3]) ? { mask_raw[5:0], 4'b1111 } :
		(in_len[2]) ? { 1'b0, mask_raw[5:0], 3'b111 } :
		(in_len[1]) ? { 2'b00, mask_raw[5:0], 2'b11 } :
						{ 3'b000, mask_raw[5:0], 1'b1 };
wire [11:0] wrap_mask = (in_push) ?
		((in_burst[1]) ? { 2'b00, wrap_mask_raw[9:0] } :
			(in_burst[0]) ? 12'hfff : 12'h0) :
					wrap_mask_ff[11:0];
wire [9:0] addr_offset_new = (in_burst[1]) ?
			in_addr_offset[9:0] & wrap_mask_raw[9:0] : 10'h00;
wire [12:0] addr_in_masked = { 3'h0, in_addr[9:0] & wrap_mask_raw[9:0] };
wire [12:0] addr_off_masked = { 3'h0, in_addr_offset[9:0] & wrap_mask_raw[9:0]};
wire [12:0] addr_base_add_pre = addr_in_masked[12:0] - addr_off_masked[12:0];
wire [12:0] addr_base_add = (in_burst[1] && USE_ADDR_OFFSET) ?
					addr_base_add_pre[12:0] : 13'h00;
wire [6:0] inc = 6'h1 << size_ff[2:0];
wire [15:0] addr_mask_pre = 16'hffff << limited_size[2:0];
wire [15:0] addr_mask2 = (in_burst[1]) ? { 6'h0, wrap_mask_raw[9:0] } : 16'h0;
wire [15:0] addr_mask = addr_mask_pre[15:0] & ~addr_mask2[15:0];
wire [12:0] addr_aligned_pre = (in_addr[12:0] & addr_mask[12:0]) +
							addr_base_add[12:0];
wire [15:0] addr_aligned = { in_addr[15:13], addr_aligned_pre[12:0] };

wire [11:0] addr_offset_inced_pre = addr_offset_ff[11:0] + { 5'h0, inc[6:0] };
wire [11:0] addr_offset_inced = (addr_offset_ff[11:0] & ~wrap_mask_ff[11:0]) |
			(addr_offset_inced_pre[11:0] & wrap_mask_ff[11:0]);
wire [15:0] addr_inced = addr_base_ff[15:0] + { 4'h0, addr_offset_inced[11:0]};
wire [15:0] addr_base = (in_push) ? addr_aligned[15:0] : addr_base_ff[15:0];
wire [15:0] addr = (in_push) ? in_addr[15:0] :
		(in_pop) ? { addr_base_ff[15:13], addr_inced[12:0] } :
								addr_ff[15:0];
wire [11:0] addr_offset = (in_push) ? { 2'b00, addr_offset_new[9:0] } :
		(in_pop) ? addr_offset_inced[11:0] : addr_offset_ff[11:0];
wire [7:0] len = (in_push) ? in_len[7:0] :
			(in_pop) ? len_ff[7:0] - 8'h1 : len_ff[7:0];
wire [ADDR_BITS-1:0] lastaddr = (in_push) ? in_lastaddr[ADDR_BITS-1:0] :
						lastaddr_ff[ADDR_BITS-1:0];

wire [C_DATA_WIDTH/8-1:0] be_mask0 = (64'h1 << (8'h1 << size[2:0])) - 64'h1;
		// So size==0 -> (1 << 1) - 1 = 1
		// size==1 -> (1 << 2) - 1 = 3
		// size==2 -> (1 << 4) - 1 = 0xf
		// size==3 -> (1 << 8) - 1 = 0xff
		// size==4 -> (1 << 16) - 1 = 0xffff
		// size==5 -> (1 << 32) - 1 = 0xffffffff
wire [7:0] be_mask_size = (8'h1 << size[2:0]) - 8'h1;
wire [ADDR_BITS-1:0] be_shift = be_mask_size[5:0] & addr[5:0];
wire [ADDR_BITS-1:0] be_shift2 = ~be_mask_size[5:0] & addr[5:0];
wire [C_DATA_WIDTH/8-1:0] be_mask_shift =
			(64'hffffffffffffffff << be_shift[ADDR_BITS-1:0]);
wire [C_DATA_WIDTH/8-1:0] be_notlast =
	(be_mask_shift[C_DATA_WIDTH/8-1:0] & be_mask0[C_DATA_WIDTH/8-1:0]) <<
						be_shift2[ADDR_BITS-1:0];
wire [C_DATA_WIDTH/8-1:0] be_last = (lastaddr[ADDR_BITS-1:0] == 'h0) ?
		{ 64 { 1'b1 } } : (64'h1 << lastaddr[ADDR_BITS-1:0]) - 64'h1;

wire	done = (len[7:0] == 4'h0);
wire [C_DATA_WIDTH/8-1:0] be = (done) ? be_notlast[C_DATA_WIDTH/8-1:0] &
		be_last[C_DATA_WIDTH/8-1:0] : be_notlast[C_DATA_WIDTH/8-1:0];

wire	complete = in_pop && done_ff;
wire	valid = in_push || (~complete && valid_ff);

always @(posedge Clk) begin
	addr_ff[15:0] <= (rst_l) ? addr[15:0] : 16'h0;
	addr_base_ff[15:0] <= (rst_l) ? addr_base[15:0] : 16'h0;
	addr_offset_ff[11:0] <= (rst_l) ? addr_offset[11:0] : 12'h0;
	wrap_mask_ff[11:0] <= (rst_l) ? wrap_mask[11:0] : 12'hfff;
	id_ff[ID_WIDTH-1:0] <= (rst_l) ? id[ID_WIDTH-1:0] : 1'b0;
	size_ff[2:0] <= (rst_l) ? size[2:0] : 3'b000;
	burst_ff[1:0] <= (rst_l) ? burst[1:0] : 2'b00;
	len_ff[7:0] <= (rst_l) ? len[7:0] : 8'h0;
	be_ff[C_DATA_WIDTH/8-1:0] <= (rst_l) ? be[C_DATA_WIDTH/8-1:0] : 'h0;
	lastaddr_ff[ADDR_BITS-1:0] <= (rst_l) ? lastaddr[ADDR_BITS-1:0] : 'h0;
	done_ff <= (rst_l) ? done : 1'b0;
	valid_ff <= (rst_l) ? valid : 1'b0;
end

assign out_addr[15:0] = addr_ff[15:0];
assign out_id[ID_WIDTH-1:0] = id_ff[ID_WIDTH-1:0];
assign out_be[C_DATA_WIDTH/8-1:0] = be_ff[C_DATA_WIDTH/8-1:0];
assign out_valid = valid_ff;
assign out_done = done_ff;

endmodule

module dbgcnt3 (
	input	Clk,
	input [31:0] dbgcnt_in,
	input	glbl_en_in,
	input	rst_l,
	output	dbg_output
);

reg [13:0] cntr_ff;
reg	state_ff;

wire [13:0] cmp_val = (state_ff) ? dbgcnt_in[29:16] : dbgcnt_in[13:0];
wire	count_hi = (cntr_ff[13:0] >= cmp_val[13:0]);
wire	enable = dbgcnt_in[15] && glbl_en_in;

wire	state_pre = (count_hi) ? ~state_ff : state_ff;
wire	state = (enable) ? state_pre : 1'b0;

wire [13:0] cntr_inced = cntr_ff[13:0] + 14'h1;
wire [13:0] cntr = (enable && ~count_hi) ? cntr_inced[13:0] : 14'h0;

always @(posedge Clk) begin
	cntr_ff[13:0] <= (rst_l) ? cntr[13:0] : 14'h0;
	state_ff <= (rst_l) ? state : 1'b0;
end

assign dbg_output = state_ff;

endmodule

module id_track
	#(
parameter FORCE_IN_ORDER = 0,
parameter ID_WIDTH = 1
) (
	input	Clk,
	input	rst_l,
	input [ID_WIDTH-1:0] in_push_id,
	input	in_push,
	input [ID_WIDTH-1:0] in_search_id,
	input [3:0] in_clear_pos,
	input	in_only_entry0,
	output [3:0] out_push_pos,
	output [3:0] out_search_hit,
	output [3:0] out_free
);

reg [ID_WIDTH:0] id_arr0_ff, id_arr1_ff, id_arr2_ff, id_arr3_ff;
reg [3:0] push_pos_ff, push_pos_2ff;
reg [3:0] in_clear_pos_ff;

wire	force_entry0 = (FORCE_IN_ORDER != 0);
wire	only_entry0 = in_only_entry0 || force_entry0;
wire [ID_WIDTH:0] push_id = { 1'b1, in_push_id[ID_WIDTH-1:0] };
wire [3:0] push_search = { (push_id[ID_WIDTH:0] == id_arr3_ff[ID_WIDTH:0]),
			(push_id[ID_WIDTH:0] == id_arr2_ff[ID_WIDTH:0]),
			(push_id[ID_WIDTH:0] == id_arr1_ff[ID_WIDTH:0]),
			(push_id[ID_WIDTH:0] == id_arr0_ff[ID_WIDTH:0]) };

wire [3:0] free_pre = { ~id_arr3_ff[ID_WIDTH], ~id_arr2_ff[ID_WIDTH],
			~id_arr1_ff[ID_WIDTH], ~id_arr0_ff[ID_WIDTH] };
wire [3:0] free = (only_entry0) ? { 3'b000, free_pre[0] } : free_pre[3:0];
wire [3:0] first_free = (free[0]) ? 4'h1 :
			(free[1]) ? 4'h2 :
			(free[2]) ? 4'h4 :
			(free[3]) ? 4'h8 : 4'h0;

wire [3:0] push_pos = (in_push == 1'b0) ? 4'h0 :
		(push_search[3:0] != 4'h0) ? push_search[3:0] :
			first_free[3:0];

wire [ID_WIDTH:0] search_id = { 1'b1, in_search_id[ID_WIDTH-1:0] };
wire [3:0] search_pos = { (search_id[ID_WIDTH:0] == id_arr3_ff[ID_WIDTH:0]),
			(search_id[ID_WIDTH:0] == id_arr2_ff[ID_WIDTH:0]),
			(search_id[ID_WIDTH:0] == id_arr1_ff[ID_WIDTH:0]),
			(search_id[ID_WIDTH:0] == id_arr0_ff[ID_WIDTH:0]) };

wire [3:0] do_clear = ~push_pos_ff[3:0] & ~push_pos_2ff[3:0] &
						in_clear_pos_ff[3:0];

wire [ID_WIDTH:0] id_arr0 = (push_pos[0]) ? push_id[ID_WIDTH:0] :
	{ (do_clear[0]) ? 1'b0:id_arr0_ff[ID_WIDTH], id_arr0_ff[ID_WIDTH-1:0] };
wire [ID_WIDTH:0] id_arr1 = (force_entry0) ? 'h0 :
				(push_pos[1]) ? push_id[ID_WIDTH:0] :
	{ (do_clear[1]) ? 1'b0:id_arr1_ff[ID_WIDTH], id_arr1_ff[ID_WIDTH-1:0] };
wire [ID_WIDTH:0] id_arr2 = (force_entry0) ? 'h0 :
				(push_pos[2]) ? push_id[ID_WIDTH:0] :
	{ (do_clear[2]) ? 1'b0:id_arr2_ff[ID_WIDTH], id_arr2_ff[ID_WIDTH-1:0] };
wire [ID_WIDTH:0] id_arr3 = (force_entry0) ? 'h0 :
				(push_pos[3]) ? push_id[ID_WIDTH:0] :
	{ (do_clear[3]) ? 1'b0:id_arr3_ff[ID_WIDTH], id_arr3_ff[ID_WIDTH-1:0] };

always @(posedge Clk) begin
	id_arr0_ff[ID_WIDTH:0] <= (rst_l) ? id_arr0[ID_WIDTH:0] : 1'b0;
	id_arr1_ff[ID_WIDTH:0] <= (rst_l) ? id_arr1[ID_WIDTH:0] : 1'b0;
	id_arr2_ff[ID_WIDTH:0] <= (rst_l) ? id_arr2[ID_WIDTH:0] : 1'b0;
	id_arr3_ff[ID_WIDTH:0] <= (rst_l) ? id_arr3[ID_WIDTH:0] : 1'b0;
	push_pos_ff[3:0] <= (rst_l) ? push_pos[3:0] : 4'h0;
	push_pos_2ff[3:0] <= (rst_l) ? push_pos_ff[3:0] : 4'h0;
	in_clear_pos_ff[3:0] <= (rst_l) ? in_clear_pos[3:0] : 4'h0;
end

assign out_search_hit[3:0] = search_pos[3:0];
assign out_push_pos[3:0] = push_pos[3:0];
assign out_free[3:0] = free[3:0];

endmodule

module ex_excl
	#(
parameter NUM = 0,
parameter C_NUM_EXCL = 8,
parameter SMID_WIDTH = 1,
parameter ID_WIDTH = 4
) (
	input	Clk,
	input	rst_l,
	input	excl_smid_and_id,
	input	in_arvalid,
	input [ID_WIDTH-1:0] in_arid,
	input [SMID_WIDTH-1:0] in_arsmid,
	input [21:0] in_aretc,
	input [31:0] in_araddr,
	output	out_arhit,
	output	out_valid,
	input	in_arwrite,

	input	in_awvalid,
	input [ID_WIDTH-1:0] in_awid,
	input [SMID_WIDTH-1:0] in_awsmid,
	input [21:0] in_awetc,
	input [31:0] in_awaddr,
	input [15:0] in_aw_agen_addr,
	input	in_aw_agen_wr,
	output	out_awexok,
	output [31:0] out_dbg
);

localparam USE_SMID = (SMID_WIDTH > 2) ? 1 : 0;

reg	excl_valid_ff;
reg [ID_WIDTH-1:0] excl_id_ff;
reg [SMID_WIDTH-1:0] excl_smid_ff;
reg [19:0] excl_addr_ff;
reg [21:0] excl_etc_ff;

wire	arhit_id0 = (in_arid[ID_WIDTH-1:0] == excl_id_ff[ID_WIDTH-1:0]);
wire	arhit_smid0 =
		(in_arsmid[SMID_WIDTH-1:0] == excl_smid_ff[SMID_WIDTH-1:0]);
wire	arhit_id1 = (USE_SMID) ?
			arhit_smid0 && (arhit_id0 || ~excl_smid_and_id) :
			arhit_id0;
wire	arhit_id = arhit_id1 && excl_valid_ff && in_arvalid;

wire	awhit_id0 = (in_awid[ID_WIDTH-1:0] == excl_id_ff[ID_WIDTH-1:0]);
wire	awhit_smid0 =
		(in_awsmid[SMID_WIDTH-1:0] == excl_smid_ff[SMID_WIDTH-1:0]);

wire	awhit_id1 = (USE_SMID) ?
			awhit_smid0 && (awhit_id0 || ~excl_smid_and_id) :
			awhit_id0;
wire	awhit_id = awhit_id1 && excl_valid_ff && in_awvalid;

wire	excl_wr_clr = in_aw_agen_wr &&
				(in_aw_agen_addr[15:6] == excl_addr_ff[15:6]);
wire	excl_valid = (in_arwrite || excl_valid_ff) && ~excl_wr_clr;
wire [19:0] excl_addr = (in_arwrite) ? in_araddr[19:0] : excl_addr_ff[19:0];
wire [21:0] excl_etc = (in_arwrite) ? in_aretc[21:0] : excl_etc_ff[21:0];
wire [ID_WIDTH-1:0] excl_id = (in_arwrite) ? in_arid[ID_WIDTH-1:0] :
						excl_id_ff[ID_WIDTH-1:0];
wire [SMID_WIDTH-1:0] excl_smid = (in_arwrite) ? in_arsmid[SMID_WIDTH-1:0] :
						excl_smid_ff[SMID_WIDTH-1:0];

wire	aw_match = (in_awaddr[19:0] == excl_addr_ff[19:0]) &&
			(in_awetc[21:0] == excl_etc_ff[21:0]);
wire	aw_exok = awhit_id && aw_match;

always @(posedge Clk) begin
	excl_id_ff[ID_WIDTH-1:0] <= (rst_l) ? excl_id[ID_WIDTH-1:0] : 1'b0;
	excl_smid_ff[SMID_WIDTH-1:0] <= (rst_l) ? excl_smid[SMID_WIDTH-1:0] :
									1'b0;
	excl_addr_ff[19:0] <= (rst_l) ? excl_addr[19:0] : 20'h0;
	excl_etc_ff[21:0] <= (rst_l) ? excl_etc[21:0] : 22'b0;
	excl_valid_ff <= (rst_l) ? excl_valid : 1'b0;
end

assign	out_arhit = (NUM < C_NUM_EXCL) ? arhit_id : 1'b0;
assign	out_valid = (NUM < C_NUM_EXCL) ? excl_valid_ff : 1'b1;
assign	out_awexok = (NUM < C_NUM_EXCL) ? aw_exok : 1'b0;

wire [31:0] out_dbg_raw = { excl_valid_ff, aw_exok, excl_wr_clr,awhit_id,//31:28
			excl_etc_ff[7:0],				// 27:20
			aw_match, in_aw_agen_wr, in_aw_agen_addr[15:14],// 19:16
			in_aw_agen_addr[13:6],				// 15:8
			excl_addr_ff[13:6] };				// 7:0

assign out_dbg[31:0] = (NUM < C_NUM_EXCL) ? out_dbg_raw[31:0] : 32'h0;

endmodule

