// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Fri Jul  9 03:02:38 2021
// Host        : DESKTOP-R564F1L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Xilinx_project/HDL_projects_for_digital_circuit_course/MCU_f/MCU_f.gen/sources_1/ip/ila/ila_stub.v
// Design      : ila
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2020.2.2" *)
module ila(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[31:0],probe3[0:0],probe4[31:0],probe5[31:0],probe6[31:0]" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [31:0]probe2;
  input [0:0]probe3;
  input [31:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
endmodule
