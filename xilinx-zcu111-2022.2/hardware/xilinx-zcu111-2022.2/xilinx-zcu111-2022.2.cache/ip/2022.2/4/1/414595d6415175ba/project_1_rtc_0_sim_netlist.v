// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Oct 14 13:26:15 2022
// Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ project_1_rtc_0_sim_netlist.v
// Design      : project_1_rtc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "project_1_rtc_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
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
jraLAJzp+3+Qe3ihpfn72NvZniPmmB8J9IQn5MOV7OhIFFLJ3q/cjkhNSm8dGu6X3/9pBZ1NfOoe
4k+bmUsEWFPOLICoU/jLs2LaaIx6UlZO4GmaSmrLRjDIWGhMKI+2qNtbiO5jofhaLzfCV2bEfc2+
x/1VschDYT9YH8Ty6/e/LQymtsWIlsUeZKINxMyc1t8gX9lWp/7+xP0JYDufPx3ND7XTDoxPHFjn
zgq7Gx6ZqPC7WME/vm+EZFWRVXqaTsuY0JsD54lEm03ONiEr1mpTCucIFxqH1NQDTmtQnVFUkzEd
5vUtO1nWeFwjSK/g2IOZSao2TMJWiM35x7nTyw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vFE2TksYYhz+65w9UrtU9O8YprrJAdT3TcbSyny5XYsNDSNe08RHCtGqFtnH7d7JMWEqL++w2tbV
GBFaf1hFWpmgXR9NIH1Bnd28XAwyXB9YcnT0gvUk4XKaXa4Rm1xWGF5KWXTo+6NS0lrtR+GLsj0M
55EI1NP2jLVMnnBo5AnjE7L1ZDT/7cA1+QvxWe8kRWfZ/RCRdkMpcHU5euJ/1MxmaVLqtjFdeW64
tcKB3CsPGVNbPiLoTTI9COSIsfuRiaTF+SEDc5Z0xvtbaw8tLnKP2QFGaZl+OkRkFq9yE6bMSXOX
axvJAR3XD6bT5WUWjoO6XfXpbjA0AqmqkZLf2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19136)
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
