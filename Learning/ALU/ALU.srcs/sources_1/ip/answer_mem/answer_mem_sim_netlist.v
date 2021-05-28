// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May 28 09:03:08 2021
// Host        : DESKTOP-OVFJI75 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Xilinx_project/HDL_projects_for_digital_circuit_course/Learning/ALU/ALU.srcs/sources_1/ip/answer_mem/answer_mem_sim_netlist.v
// Design      : answer_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "answer_mem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module answer_mem
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
  answer_mem_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19856)
`pragma protect data_block
+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
3RA14Hi3kz8IA+OnIqyngqE5KHY=
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
