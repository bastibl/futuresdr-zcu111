// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Oct 14 13:26:34 2022
// Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /tmp/tmp.rJl7ZfSWDC/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_sd_fec_enc_0/project_1_sd_fec_enc_0_sim_netlist.v
// Design      : project_1_sd_fec_enc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "project_1_sd_fec_enc_0,sd_fec_v1_1_10,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sd_fec_v1_1_10,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module project_1_sd_fec_enc_0
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
  project_1_sd_fec_enc_0_sd_fec_v1_1_10 inst
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
VJJxE111MTOLlfj2IovUPxAEXzgi165QCru0nq+krNCJh5+3/GBEh54yY2LwYy/7O53NtBGwlTkF
cA4yw5sR+BeYI2tZoCLecJlk2/W9FSvneBcrakXd8T9QwNwD8loRNJINdnlCkeU/whLTpXKptmIi
60LmBL6aARYb8yS3zh7quiM8Gao2+Y2ih0pGLdIW0QmfNKV2ZZs4M37Yr5Rq9q2epGU3+HUOCV41
UgZtRbuY12LvaPKF+8lQL1NsRpBsbvQ92pPS4RLe8NnFtaHPgiWqWk+nx2/11CCM4FdEp1MXILkU
xF5hPH8UDnZ8uQYN5jvV52MEJlrTtpGVGcKsHA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
niLLw5dHLUg83sQVY65s8VDNDP9sa0xVd3GKCPBGvZdJ/hM84lc28ofgUncIH/CiLHuN5YFtA2AN
FtBiJwysw6xKQ09YAFn4lv6DbyCBafpuJ8QnwDcXbVz172gcpnEa/MbgApBKWx7q12hNRZUXcER3
tGDotn29ZVxPBbqXU401nMGopXPfXhyyOQgIRBsNhamQ7mcBFlEChtUjnab7naOS+c3puQY2lIFt
iBhQazaxYzZ4tdFv4MlosI4BxgBMDD8IYXYBr5TTZn/d8zuNIRdxIJN7oHXkXzfEZQxKKwllBBFD
hk4D+FYt/SzgYJUYQ7vN4KMZMTPhOwD729ZwvA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14256)
`pragma protect data_block
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
CbC0Brzq
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
