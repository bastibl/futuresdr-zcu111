// $Id: miiloop.v,v 1.1 2004/02/13 20:45:31 kentd Exp kentd $

module gmiiloop (
	opb_clk,
	opb_clk_n,
	rmiiclk,
	rst,

// Inputs
	phy_tx_en,
	phy_tx_er,
	phy_tx_data,
	mii_ctl,

// Outputs
	phy_crs,
	phy_dv,
	phy_col,
	phy_rx_er,
	phy_rx_data,
	dbg_out128,
	dbg_out16,
	dbg_out
);

input	opb_clk;
input	opb_clk_n;
output	rmiiclk;
input	rst;

input	phy_tx_en;
input	phy_tx_er;
input [7:0] phy_tx_data;
input [31:0] mii_ctl;

output	phy_crs;
output	phy_dv;
output	phy_col;
output	phy_rx_er;
output [7:0] phy_rx_data;

output [127:0] dbg_out128;
output [15:0] dbg_out16;
output [31:0] dbg_out;

reg	phy_tx_en_ff, phy_tx_en_2ff;
reg	phy_tx_er_ff;
reg [7:0] phy_tx_data_ff;

reg	tx_en_ff, tx_crs_ff, tx_er_ff;
reg [7:0] tx_data_ff;

reg	rst_ff;
reg [31:0] mii_ctl_ff;
reg [31:0] mii_ctl_opb_ff;

always @(posedge opb_clk) begin
	rst_ff <= rst;
	mii_ctl_opb_ff[31:0] <= mii_ctl[31:0];
end

wire rst_l = ~rst_ff;

wire	ctl_crs_delay = mii_ctl_ff[0];
wire	ctl_er_enable = mii_ctl_ff[1];
wire	ctl_div2 = mii_ctl_ff[2];
wire	ctl_div2_5 = mii_ctl_ff[3];
wire	ctl_div3 = mii_ctl_ff[4];
wire	ctl_dbg_crs = mii_ctl_ff[5];
wire	ctl_inject_err = mii_ctl_ff[6];
wire	ctl_reset = mii_ctl_ff[7];
wire	ctl_drive_er = mii_ctl_ff[8];
wire [3:0] ctl_err_pkt = mii_ctl_ff[31:28];
wire [11:0] ctl_err_nib = mii_ctl_ff[27:16];


assign rmiiclk = opb_clk;

always @(posedge rmiiclk) begin
	phy_tx_en_ff <= (rst_l) ? phy_tx_en : 1'b0;
	phy_tx_er_ff <= (rst_l) ? phy_tx_er : 1'b0;
	phy_tx_data_ff[7:0] <= (rst_l) ? phy_tx_data[7:0] : 8'h0;
	phy_tx_en_2ff <= (rst_l) ? phy_tx_en_ff : 1'b0;
	mii_ctl_ff[31:0] <= mii_ctl_opb_ff[31:0];
end

reg [3:0] pkt_counter_ff;
reg [11:0] nib_counter_ff;

wire	reset_counters = ctl_reset;
wire	valid_nibble = phy_tx_en_ff;
wire	pkt_end = ~valid_nibble && phy_tx_en_2ff;
wire [3:0] pkt_counter_inced = pkt_counter_ff[3:0] + 4'h1;
wire [3:0] pkt_counter = (reset_counters || ~rst_l) ? 4'h0 :
			(pkt_end) ? pkt_counter_inced[3:0] :
				pkt_counter_ff[3:0];

wire [11:0] nib_counter_inced = nib_counter_ff[11:0] + 12'h001;
wire [11:0] nib_counter = (reset_counters || ~rst_l || ~valid_nibble) ? 12'h0 :
					nib_counter_inced[11:0];

wire	nib_match = (ctl_err_pkt[3:0] == pkt_counter_ff[3:0]) &&
				(ctl_err_nib[11:0] == nib_counter_ff[11:0]);
wire	do_inject = nib_match && ctl_inject_err;
wire [7:0] tx_data_injected = (do_inject) ? ~phy_tx_data_ff[7:0] :
							phy_tx_data_ff[7:0];

wire	do_drive_er = nib_match && ctl_drive_er;

wire	internal_er = ctl_er_enable && (do_drive_er || phy_tx_er_ff);
wire	internal_tx_en = phy_tx_en_ff;
wire	internal_crs = (ctl_crs_delay) ? phy_tx_en_2ff : phy_tx_en_ff;

reg	internal_er_ff, internal_tx_en_ff, internal_crs_ff;
reg [7:0] tx_data_injected_ff;

always @(posedge rmiiclk) begin
	internal_er_ff <= internal_er;
	internal_tx_en_ff <= (rst_l) ? internal_tx_en : 1'b0;
	internal_crs_ff <= (rst_l) ? internal_crs : 1'b0;
	tx_data_injected_ff[7:0] <= tx_data_injected[7:0];
	pkt_counter_ff[3:0] <= pkt_counter[3:0];
	nib_counter_ff[11:0] <= nib_counter[11:0];
end

always @(negedge rmiiclk) begin
	tx_en_ff <= (rst_l) ? internal_tx_en_ff : 1'b0;
	tx_er_ff <= (rst_l) ? internal_er_ff : 1'b0;
	tx_data_ff[7:0] <= tx_data_injected_ff[7:0];
	tx_crs_ff <= (rst_l) ? internal_crs_ff : 1'b0;
end

assign	phy_crs = tx_crs_ff;
assign	phy_dv = tx_en_ff;
assign	phy_col = 1'b0;
assign	phy_rx_er = tx_er_ff;
assign	phy_rx_data[7:0] = tx_data_ff[7:0];

reg [31:0] dbg_data_ff;

wire [31:0] dbg_data = {
	2'b00,
	ctl_drive_er, ctl_inject_err,
	pkt_counter_ff[3:0],						//27:24
	nib_counter_ff[11:0],						//23:12
	do_inject, internal_tx_en_ff, internal_crs_ff, internal_er_ff,	//11:8
	tx_data_injected_ff[7:0]					//7:0
};

always @(posedge opb_clk) begin
	dbg_data_ff[31:0] <= dbg_data[31:0];
end

assign dbg_out[31:0] = dbg_data_ff[31:0];
assign dbg_out128[127:0] = { 96'h0, dbg_data_ff[31:0] };
assign dbg_out16[15:0] = dbg_data_ff[15:0];

endmodule

