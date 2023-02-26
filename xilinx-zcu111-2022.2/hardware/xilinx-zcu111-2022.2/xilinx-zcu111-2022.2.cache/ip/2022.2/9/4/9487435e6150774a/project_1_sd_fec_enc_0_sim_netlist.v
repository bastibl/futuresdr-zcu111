// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Oct 14 13:26:32 2022
// Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ project_1_sd_fec_enc_0_sim_netlist.v
// Design      : project_1_sd_fec_enc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "project_1_sd_fec_enc_0,sd_fec_v1_1_10,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sd_fec_v1_1_10,Vivado 2022.2" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIN, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 300000000, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_din_tdata;
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
  wire [127:0]s_axis_din_tdata;
  wire s_axis_din_tlast;
  wire s_axis_din_tready;
  wire s_axis_din_tvalid;
  wire NLW_inst_s_axis_din_words_tready_UNCONNECTED;
  wire NLW_inst_s_axis_dout_words_tready_UNCONNECTED;

  (* CODE_REG_FILENAME = "NO_INIT" *) 
  (* CORE_AXIS_ENABLE = "0" *) 
  (* CORE_AXIS_WIDTH = "0" *) 
  (* CORE_AXI_WR_PROTECT = "0" *) 
  (* CORE_BYPASS = "0" *) 
  (* CORE_CODE_WR_PROTECT = "0" *) 
  (* CORE_ECC_IER = "0" *) 
  (* CORE_IER = "0" *) 
  (* CORE_ORDER = "0" *) 
  (* C_CTRL_TDATA_WIDTH = "32" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_MODE = "LDPC_ENCODE" *) 
  (* C_M_DOUT_TDATA_WIDTH = "128" *) 
  (* C_PHYSICAL_UTILIZATION = "100.000000" *) 
  (* C_SIM_DEVICE = "ULTRASCALE_PLUS" *) 
  (* C_STANDARD = "CUSTOM" *) 
  (* C_S_AXI_MODE = "0" *) 
  (* C_S_DIN_TDATA_WIDTH = "128" *) 
  (* C_S_DIN_WORDS_MODE = "0" *) 
  (* C_S_DIN_WORDS_TDATA_WIDTH = "8" *) 
  (* C_S_DIN_WORDS_VALUE = "16" *) 
  (* C_S_DOUT_WORDS_MODE = "0" *) 
  (* C_S_DOUT_WORDS_TDATA_WIDTH = "8" *) 
  (* C_S_DOUT_WORDS_VALUE = "12" *) 
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
        .s_axis_ctrl_tdata({s_axis_ctrl_tdata[31:14],1'b0,s_axis_ctrl_tdata[12:0]}),
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
Tqcamt/ETByu4eObc/ubsy2dLFCUNLdvKo5MZPc+qeCXunI2jG0yucxQKslV37CPM2EPp27MZVDt
10brMbeXBaIZX2mVwIlkiteomns2rpb44ty7vdY4lBg9QrJ6iv4PdV3Us2gIEQicXjD4hXnbS6PG
7ZO4y/obmoiuJj2sVQ48k1VsJ2sE8OAwakEAqdOXT0oGcLBkOoZFTde7QadVIjKfzG6yqtSee849
ktCaKKQKm2KMveTKGWsyd1jc1RmmfwPR7lEkDNOa8mvtVm2zNaiw99XNiys34VzgI7UW306EfynU
OhpdPX+2wCfwXe3dhdULdmWTVh3QGLkiHjKgyw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6uUwBUdDda0dNTq5F3e9Fa+k3IawRIh+YMepKf8wTkl3fxaog8rKjmKTXuxSh1BPu731jwEeAwwk
BHagFcmvxwNnwGwl3VJo/RrmXfY4g7h1FZVN7te+tUABZm6ijzh5u3rpL7d5mk3Fpv2KeKqdiN0j
20vyVhNhTNfa2H0ctDQE5PtrKx+gE+0PGzCxFGgexRqy1cjPqPMa10e/BgtM6RlkLWehEXeKLZ+d
OaAtUf31R0OX2pI0iYsePNbIj7XuKVzR0doXO2d5so4rFMHdFvYEYAX2jgQGAiWTBBmyjEUM8+Fw
+8bsWBeuHHtVjheOI6benVgGvGHdIS1rH5pY+g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14224)
`pragma protect data_block
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
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
