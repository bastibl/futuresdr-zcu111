// $KmKId: axi_monstub.v,v 1.23 2011-09-14 18:35:03-04 kentd Exp $

module pad_dbg
	#(
parameter C_FAMILY = "virtex4",
parameter C_GPIO_CAN1_LOOP_BIT = 34,
parameter C_GPIO_CAN0_LOOP_BIT = 33,
parameter C_GPIO_I2C_SEL_BIT = 32
	) (
input [63:0] gpio_data,

input	ps_i2c0_scl_T,
input	ps_i2c0_scl_O,
output	ps_i2c0_scl_I,

input	ps_i2c0_sda_T,
input	ps_i2c0_sda_O,
output	ps_i2c0_sda_I,

input	ps_i2c1_scl_T,
input	ps_i2c1_scl_O,
output	ps_i2c1_scl_I,

input	ps_i2c1_sda_T,
input	ps_i2c1_sda_O,
output	ps_i2c1_sda_I,

input	ps_can0_phy_tx,
output	ps_can0_phy_rx,

input	ps_can1_phy_tx,
output	ps_can1_phy_rx,

input	ps_sdio_clk,
input	ps_sdio_cmd_T,
input	ps_sdio_cmd_O,
output	ps_sdio_cmd_I,

input [3:0] ps_sdio_data_T,
input [3:0] ps_sdio_data_O,
output [3:0] ps_sdio_data_I,

input	ps_enet0_gmii_tx_en,
input	ps_enet0_gmii_tx_er,
input [7:0] ps_enet0_gmii_txd,
input	ps_enet0_sof_rx,
input	ps_enet0_sof_tx,

input	ps_enet1_gmii_tx_en,
input	ps_enet1_gmii_tx_er,
input [7:0] ps_enet1_gmii_txd,
input	ps_enet1_sof_rx,
input	ps_enet1_sof_tx,

output	pad_i2c_scl_T,
output	pad_i2c_scl_O,
input	pad_i2c_scl_I,

output	pad_i2c_sda_T,
output	pad_i2c_sda_O,
input	pad_i2c_sda_I,

input [31:0] aux_dbg_in,

output [127:0] debug_out_a_127_0,
output [15:0] debug_out_a_ext_15_0,
output [127:0] debug_out_b_127_0
);


wire	i2c_sel = gpio_data[C_GPIO_I2C_SEL_BIT];
wire	can0_loop = gpio_data[C_GPIO_CAN0_LOOP_BIT];
wire	can1_loop = gpio_data[C_GPIO_CAN1_LOOP_BIT];

assign	pad_i2c_scl_T = (i2c_sel) ? ps_i2c1_scl_T : ps_i2c0_scl_T;
assign	pad_i2c_scl_O = (i2c_sel) ? ps_i2c1_scl_O : ps_i2c0_scl_O;
assign	ps_i2c0_scl_I = (i2c_sel) ? 1'b0 : pad_i2c_scl_I;
assign	ps_i2c1_scl_I = (i2c_sel) ? pad_i2c_scl_I : 1'b0;

assign	pad_i2c_sda_T = (i2c_sel) ? ps_i2c1_sda_T : ps_i2c0_sda_T;
assign	pad_i2c_sda_O = (i2c_sel) ? ps_i2c1_sda_O : ps_i2c0_sda_O;
assign	ps_i2c0_sda_I = (i2c_sel) ? 1'b0 : pad_i2c_sda_I;
assign	ps_i2c1_sda_I = (i2c_sel) ? pad_i2c_sda_I : 1'b0;

assign	ps_can0_phy_rx = (can0_loop) ? ps_can0_phy_tx : 1'b0;
assign	ps_can1_phy_rx = (can1_loop) ? ps_can1_phy_tx : 1'b0;

wire	other_i2c_scl_T = (i2c_sel) ? ps_i2c0_scl_T : ps_i2c1_scl_T;
wire	other_i2c_sda_T = (i2c_sel) ? ps_i2c0_sda_T : ps_i2c1_sda_T;

assign ps_sdio_data_I[3:0] = 4'h0;
assign ps_sdio_cmd_I = 1'b0;

wire [31:0] dbg1 = {
	8'h00,
	ps_enet1_sof_rx, ps_enet1_sof_tx, ps_enet1_gmii_tx_er,
						ps_enet1_gmii_tx_en,	//23:20
	ps_enet1_gmii_txd[7:0],						//19:12
	ps_enet0_sof_rx, ps_enet0_sof_tx, ps_enet0_gmii_tx_er,
						ps_enet0_gmii_tx_en,	//11:8
	ps_enet0_gmii_txd[7:0]						//7:0
};

wire [31:0] dbg0 = {
		ps_can1_phy_tx, ps_can1_phy_rx, ps_can0_phy_tx, ps_can0_phy_rx,
		can1_loop, can0_loop, other_i2c_sda_T, other_i2c_scl_T,
		ps_sdio_data_I[3:0],
		ps_sdio_data_T[3:0],
		ps_sdio_data_O[3:0],
		1'b0, ps_sdio_cmd_T, ps_sdio_cmd_O, ps_sdio_cmd_I,
		i2c_sel, pad_i2c_sda_T, pad_i2c_sda_O, pad_i2c_sda_I,
		1'b0, pad_i2c_scl_T, pad_i2c_scl_O, pad_i2c_scl_I };

assign debug_out_a_127_0[127:0] = { 32'h0, dbg1[31:0], dbg0[31:0],
							aux_dbg_in[31:0] };
assign debug_out_a_ext_15_0[15:0] = dbg0[15:0];
assign debug_out_b_127_0[127:0] = { 32'h0, dbg1[31:0], dbg0[31:0],
							aux_dbg_in[31:0] };

endmodule

