// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Oct 14 13:26:42 2022
// Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ project_1_sd_fec_dec_0_sim_netlist.v
// Design      : project_1_sd_fec_dec_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "project_1_sd_fec_dec_0,sd_fec_v1_1_10,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sd_fec_v1_1_10,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (reset_n,
    core_clk,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bready,
    s_axi_bvalid,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rready,
    s_axi_rdata,
    s_axi_rvalid,
    interrupt,
    s_axis_ctrl_aclk,
    s_axis_ctrl_tready,
    s_axis_ctrl_tvalid,
    s_axis_ctrl_tdata,
    s_axis_din_aclk,
    s_axis_din_tready,
    s_axis_din_tvalid,
    s_axis_din_tlast,
    s_axis_din_tdata,
    m_axis_status_aclk,
    m_axis_status_tready,
    m_axis_status_tvalid,
    m_axis_status_tdata,
    m_axis_dout_aclk,
    m_axis_dout_tready,
    m_axis_dout_tvalid,
    m_axis_dout_tlast,
    m_axis_dout_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n_intf RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_intf, FREQ_HZ 666666666, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input core_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk_intf, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [17:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [17:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt_intf INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_ctrl_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ctrl_aclk_intf, ASSOCIATED_BUSIF S_AXIS_CTRL, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s_axis_ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CTRL TREADY" *) output s_axis_ctrl_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CTRL TVALID" *) input s_axis_ctrl_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CTRL TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CTRL, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 300000000, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_ctrl_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_din_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_din_aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIN, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s_axis_din_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TREADY" *) output s_axis_din_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TVALID" *) input s_axis_din_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TLAST" *) input s_axis_din_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIN, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 300000000, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s_axis_din_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_status_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_status_aclk_intf, ASSOCIATED_BUSIF M_AXIS_STATUS, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input m_axis_status_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TREADY" *) input m_axis_status_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TVALID" *) output m_axis_status_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_STATUS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 300000000, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_status_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_dout_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_dout_aclk_intf, ASSOCIATED_BUSIF M_AXIS_DOUT, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input m_axis_dout_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TREADY" *) input m_axis_dout_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TLAST" *) output m_axis_dout_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 300000000, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m_axis_dout_tdata;

  wire core_clk;
  wire interrupt;
  wire m_axis_dout_aclk;
  wire [127:0]m_axis_dout_tdata;
  wire m_axis_dout_tlast;
  wire m_axis_dout_tready;
  wire m_axis_dout_tvalid;
  wire m_axis_status_aclk;
  wire [31:0]m_axis_status_tdata;
  wire m_axis_status_tready;
  wire m_axis_status_tvalid;
  wire reset_n;
  wire s_axi_aclk;
  wire [17:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [17:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_axis_ctrl_aclk;
  wire [31:0]s_axis_ctrl_tdata;
  wire s_axis_ctrl_tready;
  wire s_axis_ctrl_tvalid;
  wire s_axis_din_aclk;
  wire [255:0]s_axis_din_tdata;
  wire s_axis_din_tlast;
  wire s_axis_din_tready;
  wire s_axis_din_tvalid;
  wire NLW_inst_s_axis_din_words_tready_UNCONNECTED;
  wire NLW_inst_s_axis_dout_words_tready_UNCONNECTED;

  (* CODE_REG_FILENAME = "NO_INIT" *) 
  (* CORE_AXIS_ENABLE = "0" *) 
  (* CORE_AXIS_WIDTH = "1" *) 
  (* CORE_AXI_WR_PROTECT = "0" *) 
  (* CORE_BYPASS = "0" *) 
  (* CORE_CODE_WR_PROTECT = "0" *) 
  (* CORE_ECC_IER = "0" *) 
  (* CORE_IER = "0" *) 
  (* CORE_ORDER = "0" *) 
  (* C_CTRL_TDATA_WIDTH = "32" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_MODE = "LDPC_DECODE" *) 
  (* C_M_DOUT_TDATA_WIDTH = "128" *) 
  (* C_PHYSICAL_UTILIZATION = "100.000000" *) 
  (* C_SIM_DEVICE = "ULTRASCALE_PLUS" *) 
  (* C_STANDARD = "CUSTOM" *) 
  (* C_S_AXI_MODE = "0" *) 
  (* C_S_DIN_TDATA_WIDTH = "256" *) 
  (* C_S_DIN_WORDS_MODE = "0" *) 
  (* C_S_DIN_WORDS_TDATA_WIDTH = "8" *) 
  (* C_S_DIN_WORDS_VALUE = "16" *) 
  (* C_S_DOUT_WORDS_MODE = "0" *) 
  (* C_S_DOUT_WORDS_TDATA_WIDTH = "8" *) 
  (* C_S_DOUT_WORDS_VALUE = "16" *) 
  (* C_THROUGHPUT_UTILIZATION = "100.000000" *) 
  (* ENCODE = "0" *) 
  (* LA_TABLE_FILENAME = "NO_INIT" *) 
  (* MERGED_CODE_REG_SIZE = "0" *) 
  (* MERGED_FILENAME = "NO_INIT" *) 
  (* MERGED_LA_TABLE_SIZE = "0" *) 
  (* MERGED_QC_TABLE_SIZE = "0" *) 
  (* MERGED_SC_TABLE_SIZE = "0" *) 
  (* NM_NMQC_FILENAME = "NO_INIT" *) 
  (* ONLY_5G = "0" *) 
  (* QC_TABLE_FILENAME = "NO_INIT" *) 
  (* QC_TABLE_FILENAME_T = "NO_INIT" *) 
  (* SC_TABLE_FILENAME = "NO_INIT" *) 
  (* TURBO_INIT = "0" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_fec_v1_1_10 inst
       (.core_clk(core_clk),
        .interrupt(interrupt),
        .m_axis_dout_aclk(m_axis_dout_aclk),
        .m_axis_dout_tdata(m_axis_dout_tdata),
        .m_axis_dout_tlast(m_axis_dout_tlast),
        .m_axis_dout_tready(m_axis_dout_tready),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .m_axis_status_aclk(m_axis_status_aclk),
        .m_axis_status_tdata(m_axis_status_tdata),
        .m_axis_status_tready(m_axis_status_tready),
        .m_axis_status_tvalid(m_axis_status_tvalid),
        .reset_n(reset_n),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_ctrl_aclk(s_axis_ctrl_aclk),
        .s_axis_ctrl_tdata(s_axis_ctrl_tdata),
        .s_axis_ctrl_tready(s_axis_ctrl_tready),
        .s_axis_ctrl_tvalid(s_axis_ctrl_tvalid),
        .s_axis_din_aclk(s_axis_din_aclk),
        .s_axis_din_tdata(s_axis_din_tdata),
        .s_axis_din_tlast(s_axis_din_tlast),
        .s_axis_din_tready(s_axis_din_tready),
        .s_axis_din_tvalid(s_axis_din_tvalid),
        .s_axis_din_words_aclk(1'b0),
        .s_axis_din_words_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_din_words_tlast(1'b0),
        .s_axis_din_words_tready(NLW_inst_s_axis_din_words_tready_UNCONNECTED),
        .s_axis_din_words_tvalid(1'b0),
        .s_axis_dout_words_aclk(1'b0),
        .s_axis_dout_words_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_dout_words_tlast(1'b0),
        .s_axis_dout_words_tready(NLW_inst_s_axis_dout_words_tready_UNCONNECTED),
        .s_axis_dout_words_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RxpNhLKl/+G5NrzxwYn2ggRVXoGtBJV3N7p+IXbc4PbHv865AHglzF7mShTPPRde0kx26LPwny/w
KiSCAajFixtojLeyqIpaFHHlMEB9QpqO3ZDBdvY5QMH4Tfb8foCpcQ3MkB8GAvcuxTfoU4mC9rU2
KY7uXSpFbIlDxSDrZZA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e9S7ocMwKzgceWb68upfv8HaW+REg6Fyy+A7iY+kyGH246wI3lTtf0nvRybAa8u8GXwIX+rRhIf+
mhJzX9YAEPuU0AHrrEOQRSJ4ImZajk3neQdmCGoBkqMAw+q3FJgPhMAmKs4U+CEDcyUcpTiRa18v
9LWTTcevq4e3aAFaC5a6qK+BtvMqc9ADmmW2SdC7IRl2k/oCiziWN10XQESbArd0QYSg43npnRmI
tfH7tcW+zSIGzIrfpcnxjsYt2JWjqGpbFBRxzLhDxo51jV7Al9ui4UCQFLlqljmRjftVVrZgUntc
rPk+zoXHcFQ2PGRMSnO/PePO1+vU+klT3JXA2A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ee/pXkYnIsG58wz+/83HvHu/AfCoGnyAI8m1dCLjgWO7tST6NRbxNIIF93aBN9ouC2WDyHBSgl8Q
Pn5NW7YBuaonqVUtZr+wFGbigDbnYlQc75118ej8MW05+zUQUD3c3ChEHhS8GxFjRCngZVYhixLB
CfPQ4hM0n92CRwNdmS4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jybcsO6CRvA4nWgD32OVTZYEZ6dZ4DMDVRMQT8SHcrqQC3tgnp3YF2CyDQRkO86gWBliXhmqAQtk
CbJ4k0ZAeTbBzmAIBPJ64Vy7bnycEhW//iJC1wjKHny7lWtEQohjPSuRFkOjiMnismrLmfuIiZT+
E3LECSg+O5FEWNIkKShzChX7PQgLfQhb3mZxVj6SW7KYiDYL1lovfaRYTGjVHjyObX+SQ8R1J71P
hKDSjYo8AFK0kaYGF98OTiD117U8AYovKbxWzlpbsuYUeJZZ3XyFbI0nLa1yl5SR56MnQmJsVqQS
1ufCTrY35juBiTU26G6NvNz/L+cka60YPl88YQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AomSQNgGXuLaG8evFkSRa1+z83P8OeETHZ5ERgeNNHap9V/huKgym1zjx3j/Xcpor+wl70jq40au
MvG18de5uw0g/r0z4OuJzTP6m9mUh4kfemlb/OUqv7nHOfHQcljNNBU2nj+YWt7crKERDq2u69cc
j63peYwhtOXL7n92cp1Q2aTAy8u1VewtN5Q/7PLtYMtC41a0ot5UerexeFMiJxu20Nz3+yDyfoHh
LZv3+ArWb7GwmtlosylY4kapSWA4YX/nU+shwF5OfGpygPFLm5crrp0tjyWQLPWZlh4nR6OknS61
Z8Vi9G1BB7hkqU22BEVuqEAmAnY4FC/zdM9nqA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RvvwkBXiCNlfISTwXzHFRFpHEKCJgTAGHywfj/b6o6EzIj3u6UTT0h1lg0CT/0yQwjswWvvTSQ+E
PIxxwhj0oeD5pbHUCdAQRASM3vFjXDqUGXgEOxKyrX8Qg1OIsAXTsclZVEQXSJ4CCR5BaHhdG/24
Zk2MzbjK3JibIwPOLuQ5WHm1ARdHC0dAcvSvFPnOhQCyX3H0Kjp48kzf08S0OArizogynggjE8ac
/PfCCTgr6oEPhHKI/QyIugArHoCifqkZSllVlfShVtDJibaHIwlIxNTr17vyC27RNkN7YL3TuCp2
IcykBD/paTUU9T1lyRi1qkvnWa3roTVGklJkIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UKZEq2NpNyNGzu8rzLJ4sTcYSSvmz7X7mYHveqYL2N/tP1Inyjs2z8sH+nUfm8heCpokKMFZceHv
fZVHMnqjzdSRL+TyZHzB2XOaZF3soQ/vG1dCblFuK/jMzpr2lwDyHOc9xJnAJRw9o8jnzhY+bqFf
EiPoEWM4maI3RvcjrJQLggfW+UbKOWOXEwec2Vb3SAYkpM5RR0ACGb/g0FqJ7RG2Oev8KI9s9FaI
DW4LilgU5ZwXHXnynwINdFrlOBgF1B/FfIVGh1jLs1QjgZ9+OT4iEUuMoVY071NoC1gHXj6ARz9E
bZ5EdcfTevl0eZm2SGcJJDQCIkIyErBVscbAQA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
aYm37SPfHb7XZ2vtygbap2FLBlpLYXPfyD7IuJDrPxtHT2WxDCiCWL4NDSlIS647e86qxWujMCt0
nuSfrBXdGQ8bIILG6FwClzHe4okaV/AzZXcS18Ihyxt+0e2hm28JbUlyGDiUqA3eYZmVzqbvvECt
R1gi16Ppl18c7dUqQq29t2qK4HjsFCcxRruLa3+pyuruyDUngYFVOwlOY/4YmeZecJ35h6pWgCrD
g4/bBgRoLWCUScFbl2aVxOAjVEynlYXcY2vXvJwqddMobMCIK/Hb4ct3ZjFt4sclW6I4BpnTki+l
7BpB5b3UMZALDZo/oJ+dHZEcwiRhaTpxzm38ELxS87CUWHvGrr996xfiascIoEAW6GxyRt9wG4Jx
MDkWd/DD8LNyLTcUsedxJMZP01El7YQzzoC3mJPR2yfyVbTJDn5YTJRA6TPds37O6Zb05n8UUsxb
l2w7YR1Q0yK0cTSe8tjF2/LGzI6u+SwM+Hv9/MVdb5xJX1lgw+CN0VPs

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DFxESqXpLW7AJwjXLfoP4VpKUgFHv16tygkpRO5J0f7HXwzkSRQHQ+fmdkTxXYoWPrAQ2+SQED4a
DAikC4zx6szUYvsV1xErx5FcDBoUGVgvG+f3Ab9mKoeu7BO4wO0LLBZlAKQdYW+2t35ml76xQ5wz
q2FfMaTIZwYSptAbgrAWu4PYhU4Ooa/qOG14lczUx9x3OwJYWzIpV+HSkugWPyl8sXKQzrdFvzr5
7QjTULcdsV21/2Oz5HRWQsUzx6so2TsIPeguF07WSiVEZ+Wl6R8Pk54Jlk48xoTy/YFJaU5RtBWy
2CMY5KwHv9lmm+QWQaNG0ETQiuHjipEvIHZdpQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N8EVsHOdypdLyvGvR2EcI+OB54eX5bWeqc2snsfGZG7spq0qBJVvlR3BeZNcejL988PjRhfnv8K+
UX0/AhIhznyscWh5HkAYPgT1Lrz2Gy/HkOTYoN2xm/R9caCbjK9GRGVZanB3VDtXUh81kkOlwVjS
EnIzG+HivNmK+aNK5ugzxPhjZwm1hcrx2hH3gHMgjGvEjhqhyEfKvVfoXrIoxqE0Y/nj1sjgjx2x
Tf5NAJvR3SQCZH642OaaBup4fPv8rYL6tLwjuJ+ah5I1wSwaDisahdJUA5QiqrlbW0PbZQK5rHQ7
TYIv1DpZqPnFZjMg82A48hIkerkfzOI6vVUC9Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ItS9/BBDAK6ZLeYFd/yyj6NnKdWEqBmf4GdkXSj7VqdCq+cOsGiUO2fFbEgvv2tFPdpijuvOLeN9
6chvRqYD0T4q0ZG4dQOYx64mtSkTvY8loKRp++La9tS6+oCNgDnCoEVNsQeGmn1/2L7i9qTpQy6k
fE+2cijrGX1XkYJ10WqlbsHinpXxFRppqEW18w6MZ3Zvlj59hmRkL3aK0uAPmiKvV8biAoJHpq2x
m2Tde4XlRtmbsg2tT/qLalUQYq2bxoB8sGBcNGmxaaIQzYt+YN3mvqLiqPVaBLYlbj7t0kyduVPZ
AJwouee0PaocAc5kz7XDj4URi2n5rQutiqBUAg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13520)
`pragma protect data_block
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
KjrwPE4CffDUTiw=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
