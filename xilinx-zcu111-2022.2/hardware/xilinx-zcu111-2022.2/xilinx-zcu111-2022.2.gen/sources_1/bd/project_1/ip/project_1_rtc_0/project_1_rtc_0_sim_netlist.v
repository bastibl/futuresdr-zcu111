// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Oct 14 13:26:17 2022
// Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /tmp/tmp.rJl7ZfSWDC/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_rtc_0/project_1_rtc_0_sim_netlist.v
// Design      : project_1_rtc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "project_1_rtc_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module project_1_rtc_0
   (CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  project_1_rtc_0_c_counter_binary_v12_0_15 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KdkdvVsuosc8qR9X5PxQ/ghTeTrEz4qKVuenhDR9wRSL/BO/mhSwQtiFj74UO0sGv0zvjAntaq/3
l2/v8gOiVKmM666gbk/2UCISA4OFA3FDR9jYmiXdNXb2qHeS1ywQz5n/sTR5iu4KFEfwrl3IXtQw
aEiGegL+CQMaovJsto4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pZCj3qT3VD1SCS5RiZExsqqu16KpMtHXilQL9p5/eBl7qrfQjT1VhFtVbYUusepbChjsCCmCn7hr
72SuHmOmDWG78UARN7MLdO/+sePuyS06ak4nAw5xwjT0g+9970uMWYKvTeeYqoz2i+k+zX60Cuvu
iwBfxWM22DqukHlYzbEFWhNyXIkgJe71p67vGdXBmqu4/2wmlwGApqBxlwR+alwZ9UGHlxNQS4N5
z1wHu3Cp8LwGRjlaXjElcY8RDpvyz5l59ey8ar5HXR9Zqf6e1unE2NdhzHhEGRerRFXoKZppk1HB
6kIEY4EHAWz+HvPcqoP9eoYKDazoAGkJRVP6YA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gLgm7VvY3cNcNvdXvikCQd2nRniE4ae4hePOcAUlPDMoHDzQAD7Ngo12MGFns9JNPcCaUXfAmxL2
JNGojjrDRUWrv8FPV6FOEbDHs96fef8+gqLF4OqLck4kWpKhnJwaJjjzQirvXEzZxP+GsBKnkSp8
ceVlZJwP0F6XRv+RpQA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GeZP242oKQSNuofqDs4oIIXZEufPhRVrlFFeRSLY4VCxhMEMwfPrNXe33xO0zIEBoPW2X9mvUoTY
izdWQEtWImFzjzPCjkSLhEdIMmUBH02Y+Tw3eW5x23T0cK96pmoV2MH8kl99I27MN6stVd977fuB
Mjao5MnSXIGZ/uXGtgfUO9Zjs4/2wGmsI2/lANN2WOL9Sz4xeA8k40c2dNYgxgHoCwx8Ya/RYIZS
Cpuvzq4ZyFSNT/kMXnUmqj75/flpXT3mmyW+frexux3j9PxpKHmxAE9crvDx85rMamGiA4ftl+ac
H0FtL2cBqdlP60x+FjqleWCJoN6AYdxA0YZaeg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
URmEGftuxvv0+tViRUdsFNnPXucZlVDfUQpjjXkpOA38QUzsIL9j1pGGp9doC4jcg/9MD149BTSw
vAG8684a3k+Tx/8sFGl/viK1q8ty9nktEABSahv8Etm5ZJVAzQJT7EaOzrYqyywSwabogvGUmN/7
DE3eOn6+sMCiMl6BLUhYyK39ntTWNFYVPiheclbBb36V1vzMOQl0mvPuS4hDXqba/+qBZXhqeYWK
ceNfwci6SsRRef6hLF/1S+20r2uBxJeYJjyfWGGFEGfxlAOz1MiYUUR/bEHWnbjwIcJTBHQNRdq4
4Ryb+iPuKcsXU/8ApD14i6ScW+VBPWSqnH9w+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NtQgA3rUKfJt+21sTot44yr4gmte57FoFl8Q/327tsRJeEyNAiwWZaZN2mbo2NFcvyN2GhDw6avJ
NsF1Oxs36P8shoqOOiloWWrdTcyAdMhdk+UjeZgKcNSqd4Js87w/5LVQTwjB2mcBDfe1jrivv+IW
ZRBC8NvlW5z/1wF7+vzXRMziLQYeOkLB0OkpIY+eT5cZXDKuZ+4l0FMPjd+El96JGAEHG7Q0qS3F
OEApYEp8+nSZnragoytq4pkhVJEC22ye0hBhoBClJpszCcg0u+Ugf+mYZsj8BC2uqSY6Hh/gpjjw
enQ7aEYBaUR7GCwQN7fZmNhZYtBkyvNqydRQcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CpIFM8Y8dBmpjtOVnOKcfppEFV+c1cRgsQtewNUe+5apiLDoRCdMyTqoCay7nz+Xagc0OvfZDg/Y
jSTsDjKVcEIyxOfix7iwjKW8Rz+a5wBIatI8wfCo7uLtuucz9otOWWI7BFQ2gn4VdQ73HJJlZMMY
OyEOd33tGjNSjxz3W07knDr1FwTE3BOfhq+Qj2ErnuV1dQbrTb3MiQMTnHaTCwtz6ip0pD6b5G4K
kBRUYe+UNXCMvSfNIN9MPSmolO4MjNwM5gnZZqLcR1hGuzH/Yeb/jPnhsZ7jFvlTT3nsM9JzMRAE
QwlzVuulHKQDS2I96arFosYPYMsalmn6CQW0gg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qinIxHFISC9r9LS7OKOuYVGM5EBkuuQNV1nDRui+QVNLn2QFCrWPeEClQIlNViKOt8MX9urHvu4e
l2L+eZKw6+St9cW9yUsYu36yoB4LqwG+vKvfR9CW82LGPyMAxdgk/p3n+F0Xp9Y2HaERwWDL99tW
V7cDvLLhyIwz7w4rI0BWWV+KMjXP2F5MNgykzZn7tzV8oY6MxOykFqRdI8DLAdlYGAs90wjJ3x84
S3fHciSox97FYpDi64v31Vb4RmRrwueXcvCc3w8gzjuwg7qraWLMYyPB+mERB2v1htX80PsWWVHE
QXkWiHWYvvrXEykUS04MmLNHpV8ZgBXO/NBEGn7mrITDEswk3u1Yviqy7CW2wLPQBoo5xW+uiu2e
8YZV/E+bAt+P/EH5RsC9alBgtuVKU1s9DaiEH8eUPEgJQ/TXwQW01pg8ECTYgiBS+IQSbld23aq3
goVo0ZMzRu/SA00Jmwt7upvsMkh9Q+2732ahu1FmlSNmyNGB1+bYf782

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T1jqx5hmzZZMhPApzUC1oZLMAkHma8Ki4b2CvLNqxSn+MNWoTPomvQ775DMBEDai/gahYALsohdX
0f/e6LuPqt4zYtyAzmH+nRgOG/tilS1J674KsaHxudAfo4sM3awB/C4Q3VdYsO9FgvPQylnYKSGE
gJ46W+1Y789VQqPbt4dpnprhix6sLlwfww7We6cq2wu4PilFzovejouUBZqNMZHYi4suKcMcenp3
C7QRKloo8IF9yKrhGPcRJLQt2nus3bI0Q3ICxRk13Nrfhh/z4cdm0OGXz42q44snFEVy1lLxPOs7
W9tSe5ag3923oCT4NGGgK/gMTx5qXxFhV2MJUw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EkoohUATycRPK0ryuWvXI0ZREpVbI1Nux/bWI/Z1u4Ud7AsQdiaQO3BTD7o4TO4PDdgR/qxoOxHw
csSHBaRSEMQAYbjvx1hcV+wEwJSHwhjJ1b21rbhy1ZnWkcasV8eGdbL6IAWeK4KUcIjdUqT+brU4
ylzWirt52210UHq/s3SZT8crpmRRN1c7xPmo1lnTSMdp/WSZ15X4nKBf1Y+mgKuR8fxYmvTVRlVI
Tp895LD80T4gnzPCB77oh52uVkDkI9MChKsLdXrS73jPAzRr0oNAphRbiYe/TzIJ1BeJI9v/5mYy
PDTrdKYFU9xFXKWVI2OgzRetMlAKLG06OVNJVQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mmMeO2ojN5ySJ/GbLEKvo2bYxnhjSu9C0n4cp3FeB7tR2+Zlic3OI2ExAnrVGKgFr7ivXtyY+8rN
yn+XlzFuZ8AF9cti4gpkXkbelLJXF4MHdQ80VF7BbH5+quZpYpW3qsW7yw1I7RNhFtodykMcBkbA
dMFifwaD6uHJmN4ufXqNM3fc2iNJ55eERcZMcuIgZ0VvqS8lhqjcU01ZzeFMg5zQI6id9hkc2VhO
WcXMJWh9ZHuNhl6AVT0DBcusq7t3OuJtj8+oFK3DLqCVlFrUVzSyq9MLkDLKNP/qdL12VseUr9Se
e6QGq15dod4unudEefzUQjES8rd7COr8EDn6Aw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19168)
`pragma protect data_block
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
hiwMrsqBbrC1E2zKzcpQeA==
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
