// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May 28 09:02:46 2021
// Host        : DESKTOP-OVFJI75 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ testdata_mem_sim_netlist.v
// Design      : testdata_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "testdata_mem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [19:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [19:0]douta;
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
  wire [19:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [19:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.875999 mW" *) 
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
  (* C_INIT_FILE = "testdata_mem.mem" *) 
  (* C_INIT_FILE_NAME = "testdata_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "45" *) 
  (* C_READ_DEPTH_B = "45" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "20" *) 
  (* C_READ_WIDTH_B = "20" *) 
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
  (* C_WRITE_WIDTH_A = "20" *) 
  (* C_WRITE_WIDTH_B = "20" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[19:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[19:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19584)
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
