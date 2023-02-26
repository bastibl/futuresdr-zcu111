// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Oct 14 13:26:44 2022
// Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /tmp/tmp.rJl7ZfSWDC/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_sd_fec_dec_0/project_1_sd_fec_dec_0_sim_netlist.v
// Design      : project_1_sd_fec_dec_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "project_1_sd_fec_dec_0,sd_fec_v1_1_10,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sd_fec_v1_1_10,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module project_1_sd_fec_dec_0
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
  project_1_sd_fec_dec_0_sd_fec_v1_1_10 inst
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
GeF83Lf0GWD5uWVYIHP1QwHm/O0w8UlZSv+aUStaGiH1lGsLT5ngiYMzDqO0c7k/+XJou/68qLuC
ZXwsXu7viDkiXMb49noSvr4CwqkJnbqToVJIIb3UNDl7W2qx+WsRJMHEVC5R/FPbMtgiH1J1VGVu
L1DBfqfcVDpninMJeXIMeMIKwFChU2mHSajOIIvGXW3zs8Yb90eHsSnooB9Su4IC/BDJnDsAF/37
X9TOD7sOLOLVTMaHxXyeKiLysYGO4PbQcnqMJxnu4Kc3usyq7+CMfZjcZSSopaCtOCy7B33f/h+8
LEGklUYh62ZKn1ikTw+RJdp1FFZAdktdZW/5ew==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KdQadYViIcqVsLIjpHK2XOum3aTaE9MPASMRldTxJZKZGasn5kHw9Gjwag4Z5h9435u9+VPZCoK9
AWYSEFB59vcqF4HG4qw/bGx4P+ZLpcZqEfXVwXr+mbXq1oJh+stwXWfFHhl5v1ZMHdaUPUC6+yuM
MyJPeG+uY8ISb4CwPQtXP3x5TBGMzmPzwF1TTgECSaYx9NSUdYJA2hesX7rN8+ja3eCUgv+X2fkn
2bcIsoCxARWSoKL8JC2wyA4zYa8wGZBHVmRE10Q4fSiGpluAeokHB/95PpjcZXe+m3UiVz3/kBD4
58TsbOUpviO8vn9EzA1SR+VVHdS3FfyOHtyueg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13552)
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
