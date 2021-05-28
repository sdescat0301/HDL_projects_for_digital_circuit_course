// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May 28 09:02:47 2021
// Host        : DESKTOP-OVFJI75 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Xilinx_project/HDL_projects_for_digital_circuit_course/Learning/ALU/ALU.srcs/sources_1/ip/testdata_mem/testdata_mem_sim_netlist.v
// Design      : testdata_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "testdata_mem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module testdata_mem
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
  testdata_mem_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19552)
`pragma protect data_block
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
fg==
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
