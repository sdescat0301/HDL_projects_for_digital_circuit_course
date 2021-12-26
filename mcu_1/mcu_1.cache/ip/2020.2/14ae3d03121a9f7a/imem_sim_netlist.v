// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  9 13:21:42 2021
// Host        : DESKTOP-A1R0C29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_sim_netlist.v
// Design      : imem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
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
  wire [30:20]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \^spo [31];
  assign spo[30] = \<const0> ;
  assign spo[29:26] = \^spo [29:26];
  assign spo[25] = \<const0> ;
  assign spo[24:21] = \^spo [24:21];
  assign spo[20] = \<const0> ;
  assign spo[19:0] = \^spo [19:0];
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10880)
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
