// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Fri Jul  9 15:44:42 2021
// Host        : DESKTOP-R564F1L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_sim_netlist.v
// Design      : imem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11472)
`pragma protect data_block
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
IQef3Nkqrr2m9DrklaLW
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
