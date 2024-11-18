// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 17 16:11:13 2024
// Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/FullAdder/Task2_BCD_Segments/Task2_BCD_Segments.gen/sources_1/bd/Task2_Design/ip/Task2_Design_SegControl_0_0/Task2_Design_SegControl_0_0_stub.v
// Design      : Task2_Design_SegControl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SegControl,Vivado 2023.1" *)
module Task2_Design_SegControl_0_0(OnesBits, TensBits, ControlBit, SegOut, SegAN)
/* synthesis syn_black_box black_box_pad_pin="OnesBits[3:0],TensBits[7:4],ControlBit,SegOut[6:0],SegAN[7:0]" */;
  input [3:0]OnesBits;
  input [7:4]TensBits;
  input ControlBit;
  output [6:0]SegOut;
  output [7:0]SegAN;
endmodule
