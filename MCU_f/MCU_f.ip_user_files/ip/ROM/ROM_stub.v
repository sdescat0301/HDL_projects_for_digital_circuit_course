// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Fri Jul  9 02:51:59 2021
// Host        : DESKTOP-R564F1L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Xilinx_project/HDL_projects_for_digital_circuit_course/MCU_f/MCU_f.gen/sources_1/ip/ROM/ROM_stub.v
// Design      : ROM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2.2" *)
module ROM(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[9:0],spo[31:0]" */;
  input [9:0]a;
  output [31:0]spo;
endmodule
