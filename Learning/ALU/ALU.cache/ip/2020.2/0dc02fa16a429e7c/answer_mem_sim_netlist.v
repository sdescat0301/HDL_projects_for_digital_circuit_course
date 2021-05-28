// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May 28 09:03:08 2021
// Host        : DESKTOP-OVFJI75 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ answer_mem_sim_netlist.v
// Design      : answer_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "answer_mem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [11:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.5432 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "answer_mem.mem" *) 
  (* C_INIT_FILE_NAME = "answer_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "45" *) 
  (* C_READ_DEPTH_B = "45" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "45" *) 
  (* C_WRITE_DEPTH_B = "45" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19904)
`pragma protect data_block
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
caFzjv+OxjYhp/A=
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
