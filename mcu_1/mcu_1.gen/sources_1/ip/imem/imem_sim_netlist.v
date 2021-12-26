// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Fri Jul  9 15:44:42 2021
// Host        : DESKTOP-R564F1L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Users/lzh/Desktop/mcu_1/mcu_1.gen/sources_1/ip/imem/imem_sim_netlist.v
// Design      : imem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module imem
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [9:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [30:23]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \^spo [31];
  assign spo[30] = \<const0> ;
  assign spo[29:24] = \^spo [29:24];
  assign spo[23] = \<const0> ;
  assign spo[22:0] = \^spo [22:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "imem.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QYqFqnBDE76VFvIqOHUk7klJFFHa8JC65qVv/XJhq8sowsjx4BGH+QA46dncM9zkP1ezyUp8Yoph
XxKs1FNvzw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fnQK9DnQ2/PiaScK4wVudrWRq42jP2hIGFUVlY35RKkhvOeUHbyTi2oRQCi3NOrqD2BwqTV/iHm7
57ZRgF/8wsweXk01AArlpsd3XXkWegziyWF1EWl7KifFDZTp++GJC/rblIbo2v7P3voSXBMf7m/j
b1aTljPxZmawzA+YtvA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oNlqrIXiGXSr3P1zut1EVpN/xccIHo975vVXPePZmsQ77x1aLGw1UVS9EMsG7dXulGhU2kSKSyn/
qhie4udV+dsMJIW6S1WxSZPleWW4aXStr8bCyfsMegxUjhOrgJ1KrIwtKxpXPlRxcW5umWaXwUtq
Yh0Jtx2HBYP+L7/ND8ZyyAbtjxAmX+9yeBPGD7I+RINnIqN4Yiy6/Wu8DbXbW3pvAGLRLZg1ZbJv
a3bj1nhnufIfiGsN0eMevxn0KtvfHVGhsu0WONmTZNfACbMfIY5unJNtrOvmB7rX2LBdEdILgNQ6
Q5wEl59ZvEcry3oSf661WQqi2zAWpjGaddhg/w==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ojd5BqNV6AGaQjrOAzwr9f4d69YNleDTd7Dpdbw1ddT/S0WQ0yoT+RrRLZR9gw6HpDfrYVFLrNGf
kgd/43c9Qc1TP7iotM9jlm6N91plGx/6yVssCqlGtTq7pIS9hSjMuROOSjaxphqWMuN2XQFNRf2A
AVf7N66IYcM9fCPcO01XD7nMTEBcNb2tjsFo+OfIQg7ljZym4fJj7SkL3x0VWj+tg51mX/qED5Mg
ZKdAAG8JY6bwwaOb0eEAkOxXGx+HyIsirwoOc2ZeE2hBLTU31vF02JgeDodSvCTncf76yqZk57ZO
pivrfQlOYb6V/tfL9W2H1NWFYpvAWCGkE74BgQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jQX0WDIWo2OFFttmgoaA3CzdIyVsm7CSQr3o+nGO9nRKK6TIt3z3P4p1LPlRKYcnou32Dvd7ZfYx
vPzsdRdX3iWSla7iZbL8f+XO7R3epzRLg82O4AiCk4lQnf29a+TLRiyiLuEx17BFnA0OuzF5Khia
yFWKsMDAUlw31cwHYWI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m/wc+gTXUSRgxRnpIyfrzx67LQ6FN8IQbT2S6o4d9kgulhbRsZH5Uudb4cZijKrR/GUu4b939X4B
xCWTva8TPmtqMjsHYVrjv4Gu4/YgqGlP3KZpxS++9WB3lWJWrMQijKCPUnmj1yA1iATMoDwFrGGN
HnB/1qPrkS5+ooNcx3FT72jm6RnBSdtrB27+hxqoCaVl88e7UtglkHNvKiRiKlIOAN3w+Pbt7/64
c5mxKyXAgcOAvTAXfQCdzLMcSkTdxQwGwjobQwMsr3Fo8bach9l7RzmewjM1oyZd0otcyCX4eWqQ
YOyAuqIDKuegKQdhKQV67UCAOvoAnBKnIL/QgQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pqeLOJXea0cxVJkgKvaZAUgWO6/i9tsxEeNqXmz3acgKzpbvNXH4mA8dX647ypCJNwGwVx3PgCsw
GZ4bwkWAtt6LEjOoGxAw3hz9snykmr3Ke2TdokCHpK6WtEJc52eluKRmUk1Lwl/HgQ2HAAgGK3/7
ChCJd8CTINFuIPumbqan0IKachWjjuSUq68fQ5/oenWaSjonWsW2Cy/Gj4SvrMaLOriiJNhBhCyk
xJ2R0QIv6UenQ/uCyTQXaAzQ08Am63Zd9AcWReNJru5gxbcReUIEUPz5q5e1siXBmOEyCO6l7zN/
+wCpklHZL/4jTExdop6HHKKMu4EAzWvqadtqDQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K8PHd/sJBrju/2/bND+rtclC1tjjF4YqozbRoB44/006T1ES8i6eujkVq+BnQ3HEkt4tuXwgAp20
al8soYrGQdSrA24oHFkypoEC1m7Iaxf+MBtgbdxfILhJXrOXwDYKapmQMpTP9Di9LBF9dsnuO0hB
2d62HhsUBKSVukfYweqo2mxttX9TOmTPLb6bBUyBVBRRTx1imZKxySHYtGqK8LTy0amUcoO+BhY0
OkzUcawA3M+05460uVd8KspJQmVRp6ej37GMf38RAis1Byv/Xa4KjQVoTfRxMEnXCHwzgCcNw/rN
JRrCCa/ygPUWGxqsydPNWV7cfZVhdMRN1KAWUg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EOhwDe4zvZ7qljkT8mV2aGPcbfLLTGuMYJHh5UWrcwBKq6qaC7KpIt4QTbOJxz+syG0m4bZYnTvw
/pQ+dhaoIvmYCvuq3CR8OGr5D5wqjqH3ibAmxNc70kkjBsBnXP9QG6FfblK9+4S4C5GNrfEcvtG0
deKh7xij9MXDcaYbdKzd2upwYaPibMV32xpoSgdFxK655Q0COpnGXp7sh4GpTeFkdklhF8ojYxhG
nCQl29C0UiPzFZWLao+/rAND41Qm5sd/OQtFlyoBYcheb1eeiceAjDMgpMDwGFwlT48iDQoN2muR
ehHx5+YQEwa0MiekCbyGqv6rvh7VR69DKe3GpA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11408)
`pragma protect data_block
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
ZM5f0RwuyeE=
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
