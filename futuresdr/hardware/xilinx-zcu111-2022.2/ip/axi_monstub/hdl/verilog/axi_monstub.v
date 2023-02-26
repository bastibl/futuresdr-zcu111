// $KmKId: axi_monstub.v,v 1.39 2018-10-01 21:29:50+00 kentd Exp $
// Copyright 2009-2017, ProValid, LLC
// ProValid Confidential Information

module axi_monstub
	#(
parameter C_FAMILY = "virtex4",
parameter C_AXI_ID_WIDTH = 1,
parameter C_AXI_ADDR_WIDTH = 32,
parameter C_AXI_DATA_WIDTH = 32,
parameter C_AXI_ARUSER_WIDTH = 8,
parameter C_AXI_AWUSER_WIDTH = 8,
parameter C_IGNORE_USER = 1,
parameter C_DBG_SMID = 0,
parameter C_AXI_PROTOCOL = "ACE",	// Or "AXI4" or "AXI3"
parameter C_NO_WRITE_BUS = 0,
parameter C_FILTER_SIGS = 1,
parameter C_ALWAYS_BID = 0,
parameter C_ALWAYS_RID = 0,
parameter C_REGISTER_AXI = 1
	) (
input Clk,
input Rst_n,

input [C_AXI_ID_WIDTH-1:0] awid,
input [C_AXI_ADDR_WIDTH-1:0] awaddr,
input [7:0] awlen,
input [3:0] awlen3,
input [2:0] awsize,
input [1:0] awburst,
input [1:0] awlock,
input	awlock1,
input [3:0] awcache,
input [2:0] awprot,
input [C_AXI_AWUSER_WIDTH-1:0] awuser,
input [2:0] awsnoop,
input [1:0] awbar,
input [1:0] awdomain,
input	awvalid,
input	awready,
input [C_AXI_ID_WIDTH-1:0] wid,
input	wlast,
input [C_AXI_DATA_WIDTH-1:0] wdata,
input [C_AXI_DATA_WIDTH/8-1:0] wstrb,
input	wvalid,
input	wready,
input	wack,
input [C_AXI_ID_WIDTH-1:0] bid,
input [1:0] bresp,
input	bvalid,
input	bready,

input [C_AXI_ID_WIDTH-1:0] arid,
input [C_AXI_ADDR_WIDTH-1:0] araddr,
input [7:0] arlen,
input [3:0] arlen3,
input [2:0] arsize,
input [1:0] arburst,
input [1:0] arlock,
input	arlock1,
input [3:0] arcache,
input [2:0] arprot,
input [C_AXI_ARUSER_WIDTH-1:0] aruser,
input [3:0] arsnoop,
input [1:0] arbar,
input [1:0] ardomain,
input	arvalid,
input	arready,
input [C_AXI_ID_WIDTH-1:0] rid,
input	rlast,
input [C_AXI_DATA_WIDTH-1:0] rdata,
input [1:0] rresp,
input [3:0] rresp4,
input	rvalid,
input	rready,
input	rack,

input	acvalid,
input	acready,
input [C_AXI_ADDR_WIDTH-1:0] acaddr,
input [3:0] acsnoop,

input	crvalid,
input	crready,
input [4:0] crresp,

input [31:0] aux_dbg_in,

output [127:0] debug_out_a_127_0,
output [15:0] debug_out_a_ext_15_0,
output [127:0] debug_out_b_127_0
);

reg	Rst_n_ff;

wire	rst_l = Rst_n_ff;

always @(posedge Clk) begin
	Rst_n_ff <= Rst_n;
end

reg [127:0] axi_bus_la_ff, axi_bus_b_ff;
reg [15:0] axi_bus_ext_ff;

wire [7:0] my_wstrb = wstrb[C_AXI_DATA_WIDTH/8-1:0];
wire	is_ace = (C_AXI_PROTOCOL == "ACE");

wire [7:0] araddr_upper0 = araddr[C_AXI_ADDR_WIDTH-1:0] >> 32;
wire [7:0] araddr_upper = { araddr_upper0[7:1],
			(wvalid && wready) ? wlast : araddr_upper0[0] };
wire [7:0] awaddr_upper0 = awaddr[C_AXI_ADDR_WIDTH-1:0] >> 32;
wire [7:0] awaddr_upper = { awaddr_upper0[7:1],
			(rvalid && rready) ? rlast : awaddr_upper0[0] };

wire [15:0] aruser16 = (C_IGNORE_USER || (C_AXI_PROTOCOL != "AXI3")) ? 16'h0 :
					aruser[C_AXI_ARUSER_WIDTH-1:0];
wire [15:0] awuser16 = (C_IGNORE_USER || (C_AXI_PROTOCOL != "AXI3")) ? 16'h0 :
					awuser[C_AXI_AWUSER_WIDTH-1:0];
wire [11:0] aruser12 = aruser[C_AXI_ARUSER_WIDTH-1:0];
wire [11:0] awuser12 = awuser[C_AXI_AWUSER_WIDTH-1:0];

wire [7:0] arlen8 = (arlen[7:0] | { 4'h0, arlen3[3:0] }) ^
		{ aruser16[7:6], aruser16[5], aruser16[0], 4'h0 };
wire [7:0] awlen8 = (awlen[7:0] | { 4'h0, awlen3[3:0] }) ^
		{ awuser16[8:7], awuser16[5], awuser16[0], 4'h0 };

wire [15:0] lbid = bid[C_AXI_ID_WIDTH-1:0];
wire [15:0] lrid = rid[C_AXI_ID_WIDTH-1:0];
wire [15:0] lawid = awid[C_AXI_ID_WIDTH-1:0];
wire [15:0] larid = arid[C_AXI_ID_WIDTH-1:0];
wire [15:0] local_bid = lbid[15:0] ^ lbid[15:7];
wire [15:0] local_rid = lrid[15:0] ^ lrid[15:7];
wire [15:0] local_awid = lawid[15:0] ^ lawid[15:7];
wire [15:0] local_arid = larid[15:0] ^ larid[15:7];
wire	do_araddr_up = (C_AXI_ADDR_WIDTH > 32) && arvalid && arready;
wire	do_awaddr_up = (C_AXI_ADDR_WIDTH > 32) && awvalid && awready;
wire [7:0] aw_ctl = (awvalid) ? { awlen8[3:0], awsize[1:0], awburst[0], wlast }:
		(do_araddr_up) ? araddr_upper[7:0] :
		(wvalid) ? { my_wstrb[3:0], my_wstrb[7:5], wlast } :
		(C_FILTER_SIGS) ? 8'h00 :
				{ local_bid[6:0], wlast };
wire [7:0] ar_ctl = (arvalid) ? { arlen8[3:0], arsize[1:0], arburst[0], rlast }:
		(do_awaddr_up) ? awaddr_upper[7:0] :
		(rvalid) ? { local_rid[6:0], rlast } :
		(C_FILTER_SIGS) ? 8'h00 :
				{ my_wstrb[7:4], 3'b000, rlast };

wire [3:0] b_ctl = (bvalid) ? { bresp[1:0], bvalid, bready } :
		(C_FILTER_SIGS) ? { wack, crresp[0], bvalid, 1'b0 } :
		(is_ace) ? { wack, crresp[0], bvalid, bready } :
			{ my_wstrb[1:0], bvalid, bready };
wire [3:0] filtered_len = (is_ace) ? { crvalid, crready, acvalid, acready } :
			(arvalid && arready) ? arlen8[7:4] :
			(awvalid && awready) ? awlen8[7:4] : 4'h0;
wire	filtered_wready = (C_FILTER_SIGS) ? wvalid && wready : wready;
wire	filtered_rready = (C_FILTER_SIGS) ? rvalid && rready : rready;
wire	filtered_awready = (C_FILTER_SIGS) ? awvalid && awready : awready;
wire	filtered_arready = (C_FILTER_SIGS) ? arvalid && arready : arready;

wire [31:0] axi_bus_ctl = {
	filtered_len[3:0],						//31:28
	b_ctl[3:0],							//27:24
	aw_ctl[7:0],							//23:16
	ar_ctl[7:0],							//15:8
	wvalid, filtered_wready, rvalid, filtered_rready,		//7:4
	awvalid, filtered_awready, arvalid, filtered_arready };		//3:0

wire [63:0] rdata64_pre = (C_FILTER_SIGS && ~rvalid) ? 64'h0 :
				rdata[C_AXI_DATA_WIDTH-1:0];
wire [63:0] wdata64_pre = (C_FILTER_SIGS && ~wvalid) ? 64'h0 :
				wdata[C_AXI_DATA_WIDTH-1:0];
wire [7:0] filter_bid = (C_ALWAYS_BID && bvalid) ?
			{ local_bid[6:0], local_bid[7] } : wdata64_pre[31:24];
wire [7:0] filter_bid2 = (C_ALWAYS_BID && bvalid) ?
			{ local_bid[6:0], local_bid[7] } : rdata64_pre[63:56];
wire [7:0] filter_rid = (C_ALWAYS_RID && rvalid) ?
			{ local_rid[6:0], local_rid[7] } : rdata64_pre[31:24];
wire [7:0] filter_rid2 = (C_ALWAYS_RID && rvalid) ?
			{ local_rid[6:0], local_rid[7] } : wdata64_pre[63:56];

wire [31:0] ace_ids_up = { { (awbar[1:0] != 2'b00), local_awid[6:0] },	// 31:24
			{ 1'b0, local_bid[6:0] },			// 23:16
			{ (arbar[1:0] != 2'b00), local_arid[6:0] },	// 15:8
			{ 1'b0, local_rid[6:0] } };			// 7:0

wire [31:0] ace_ids_lo = { { (arbar[1:0] != 2'b00), local_arid[6:0] },	// 31:24
			{ 1'b0, local_rid[6:0] },			// 23:16
			{ (awbar[1:0] != 2'b00), local_awid[6:0] },	// 15:8
			{ 1'b0, local_bid[6:0] } };			// 7:0

wire [31:0] ace_ids_up_sel = { { 8 { awvalid && awready } },
		{ 8 { bvalid && bready } },
		{ 8 { arvalid && arready && acvalid && acready } },
		{ 8 { rvalid && rready && acvalid && acready } } };
wire [31:0] ace_ids_lo_sel = { { 8 { arvalid && arready } },
		{ 8 { rvalid && rready } },
		{ 8 { arvalid && arready && awvalid && awready } },
		{ 8 { arvalid && arready && awvalid && awready &&
						bvalid && bready } } };

wire [63:0] wdata64 = { filter_rid2[7:0], wdata64_pre[55:32],
				filter_bid[7:0], wdata64_pre[23:0]};
wire [63:0] rdata64 = { filter_bid2[7:0], rdata64_pre[55:32],
				filter_rid[7:0], rdata64_pre[23:0]};
wire [31:0] data_up = (C_AXI_DATA_WIDTH <= 32) ? wdata64[31:0] :
		(rvalid && rready && ~(wvalid && wready)) ? rdata64[63:32] :
								wdata64[31:0];
wire [31:0] data_up_ace = (ace_ids_up_sel[31:0] & ace_ids_up[31:0]) |
				(~ace_ids_up_sel[31:0] & data_up[31:0]);
wire [31:0] data_lo = (rvalid && rready) ? rdata64[31:0] :
		(arvalid && arready && awvalid && awready && wvalid && wready) ?
								wdata64[31:0] :
		(C_AXI_DATA_WIDTH > 32) ? wdata64[63:32] : rdata64[31:0];

wire [31:0] data_lo_sel = (C_DBG_SMID) ? { { 12 { arvalid && arready} },
				{ 12 { awvalid && awready } }, 8'h00 } : 32'h0;
wire [31:0] data_lo_userinfo = { aruser12[11:0], awuser12[11:0], data_lo[7:0] };
wire [31:0] data_lo2 = (data_lo_sel[31:0] & data_lo_userinfo[31:0]) |
				(~data_lo_sel[31:0] & data_lo[31:0]);

wire [31:0] data_lo_ace = (ace_ids_lo_sel[31:0] & ace_ids_lo[31:0]) |
				(~ace_ids_lo_sel[31:0] & data_lo[31:0]);

wire [31:0] axi_bus_addr =
		((arvalid && arready) || C_NO_WRITE_BUS) ? araddr[31:0] :
			(awvalid && awready) ? awaddr[31:0] :
				(arvalid) ? araddr[31:0] :
		((C_FILTER_SIGS != 0) && ~awvalid) ? 32'h0 : awaddr[31:0];

wire [31:0] axi_bus_data_hi = (C_NO_WRITE_BUS) ? rdata64[63:32] :
		(arvalid && arready && awvalid && awready) ? awaddr[31:0] :
		(is_ace) ? data_up_ace[31:0] : data_up[31:0];
wire [31:0] axi_bus_data_lo = (is_ace && acvalid && acready) ? acaddr[31:0] :
				(C_NO_WRITE_BUS) ? rdata64[31:0] :
				(is_ace) ? data_lo_ace[31:0] : data_lo2[31:0];
wire [31:0] axi_bus_data_b = (C_NO_WRITE_BUS) ? rdata64[31:0] :
				(rvalid && rready) ? rdata64[31:0] :
							wdata64[31:0];

wire [127:0] axi_bus_la = { axi_bus_ctl[31:0], axi_bus_addr[31:0],
				axi_bus_data_hi[31:0], axi_bus_data_lo[31:0] };

wire [9:0] id_mux = (arvalid && arready) ? local_arid[9:0] :
		(awvalid && awready) ? local_awid[9:0] :
		(rvalid) ? local_rid[9:0] :
		(bvalid && bready) ? local_bid[9:0] :
		(C_FILTER_SIGS) ? 10'h0 : local_bid[9:0];

wire [1:0] lock_mux =
		(arvalid && arready) ? arlock[1:0] | { arprot[1], arlock1 } :
		(awvalid && awready) ? awlock[1:0] | { awprot[1], awlock1 } :
			(C_FILTER_SIGS && ~wvalid) ? 2'b00 : my_wstrb[5:4];

wire [1:0] cache_mux = (arvalid && arready) ? arcache[1:0] :
		(C_FILTER_SIGS && ~awvalid) ? 2'b00 : awcache[1:0];

wire [2:0] rresp_mux = (C_FILTER_SIGS && ~rvalid) ? 4'b00 :
			({ 1'b0, rresp[1:0]} | {rresp4[3], rresp4[1:0]});
wire [3:0] snoop_mux = (arvalid && arready) ? arsnoop[3:0] :
					{ crresp[4], awsnoop[2:0] };
wire [3:0] acsnoop_mux = (acvalid && acready) ? acsnoop[3:0] :
			(arvalid && arready) ? { arbar[1:0], ardomain[1:0] } :
			(awvalid && awready) ? { awbar[1:0], awdomain[1:0] } :
							acsnoop[3:0];

wire [15:0] axi_bus_ext = (is_ace) ?
		{ rack, lock_mux[0], id_mux[0], cache_mux[0],		//15:12
			acsnoop_mux[3:0], snoop_mux[3:0],		//11:4
			crresp[3], rresp_mux[2:0] } :			//3:0
		{ lock_mux[1:0], awsize[2], arsize[2],			//15:12
			id_mux[6:0], id_mux[7],				//11:4
			cache_mux[1:0], rresp_mux[1:0] };		//3:0

wire [127:0] axi_bus_b = { axi_bus_ctl[31:0], axi_bus_addr[31:0],
				axi_bus_data_b[31:0], aux_dbg_in[31:0] };

always @(posedge Clk) begin
	axi_bus_la_ff[127:0] <= axi_bus_la[127:0];
	axi_bus_b_ff[127:0] <= axi_bus_b[127:0];
	axi_bus_ext_ff[15:0] <= axi_bus_ext[15:0];
end

assign debug_out_a_127_0[127:0] = (C_REGISTER_AXI) ? axi_bus_la_ff[127:0] :
							axi_bus_la[127:0];
assign debug_out_a_ext_15_0[15:0] = (C_REGISTER_AXI) ? axi_bus_ext_ff[15:0] :
							axi_bus_ext[15:0];
assign debug_out_b_127_0[127:0] = (C_REGISTER_AXI) ? axi_bus_b_ff[127:0] :
							axi_bus_b[127:0];

endmodule

