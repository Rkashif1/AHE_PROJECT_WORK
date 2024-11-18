// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Nov 13 22:40:22 2024
// Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top FourBitAdder_OneBitAdder_0_1 -prefix
//               FourBitAdder_OneBitAdder_0_1_ FourBitAdder_OneBitAdder_0_0_stub.v
// Design      : FourBitAdder_OneBitAdder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "OneBitAdder,Vivado 2023.1" *)
module FourBitAdder_OneBitAdder_0_1(A, B, Cin, Cout, Sum)
/* synthesis syn_black_box black_box_pad_pin="A,B,Cin,Cout,Sum" */;
  input A;
  input B;
  input Cin;
  output Cout;
  output Sum;
endmodule
