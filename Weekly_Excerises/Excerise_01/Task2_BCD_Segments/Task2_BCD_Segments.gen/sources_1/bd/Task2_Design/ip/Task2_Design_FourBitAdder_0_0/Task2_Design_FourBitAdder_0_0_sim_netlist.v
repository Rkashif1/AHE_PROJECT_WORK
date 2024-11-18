// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 17 16:12:17 2024
// Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FullAdder/Task2_BCD_Segments/Task2_BCD_Segments.gen/sources_1/bd/Task2_Design/ip/Task2_Design_FourBitAdder_0_0/Task2_Design_FourBitAdder_0_0_sim_netlist.v
// Design      : Task2_Design_FourBitAdder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Task2_Design_FourBitAdder_0_0,FourBitAdder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "IPI" *) 
(* x_core_info = "FourBitAdder,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module Task2_Design_FourBitAdder_0_0
   (InputA,
    InputB,
    SumOut);
  input [3:0]InputA;
  input [3:0]InputB;
  output [4:0]SumOut;

  wire [3:0]InputA;
  wire [3:0]InputB;
  wire [4:0]SumOut;

  (* hw_handoff = "FourBitAdder.hwdef" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder U0
       (.InputA(InputA),
        .InputB(InputB),
        .SumOut(SumOut));
endmodule

(* ORIG_REF_NAME = "FourBitAdder" *) (* hw_handoff = "FourBitAdder.hwdef" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder
   (InputA,
    InputB,
    SumOut);
  input [3:0]InputA;
  input [3:0]InputB;
  output [4:0]SumOut;

  wire [3:0]InputA;
  wire [3:0]InputB;
  wire OneBitAdder_0_Cout;
  wire OneBitAdder_0_Sum;
  wire OneBitAdder_1_Cout;
  wire OneBitAdder_1_Sum;
  wire OneBitAdder_2_Cout;
  wire OneBitAdder_2_Sum;
  wire OneBitAdder_3_Cout;
  wire OneBitAdder_3_Sum;
  wire [4:0]SumOut;
  wire xlslice_0_Dout;
  wire xlslice_1_Dout;
  wire xlslice_2_Dout;
  wire xlslice_3_Dout;
  wire xlslice_4_Dout;
  wire xlslice_5_Dout;
  wire xlslice_6_Dout;
  wire xlslice_7_Dout;

  (* CHECK_LICENSE_TYPE = "FourBitAdder_OneBitAdder_0_0,OneBitAdder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "package_project" *) 
  (* x_core_info = "OneBitAdder,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0 OneBitAdder_0
       (.A(xlslice_0_Dout),
        .B(xlslice_4_Dout),
        .Cin(1'b0),
        .Cout(OneBitAdder_0_Cout),
        .Sum(OneBitAdder_0_Sum));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_OneBitAdder_0_1,OneBitAdder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "package_project" *) 
  (* x_core_info = "OneBitAdder,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1 OneBitAdder_1
       (.A(xlslice_1_Dout),
        .B(xlslice_5_Dout),
        .Cin(OneBitAdder_0_Cout),
        .Cout(OneBitAdder_1_Cout),
        .Sum(OneBitAdder_1_Sum));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_OneBitAdder_0_2,OneBitAdder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "package_project" *) 
  (* x_core_info = "OneBitAdder,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2 OneBitAdder_2
       (.A(xlslice_2_Dout),
        .B(xlslice_6_Dout),
        .Cin(OneBitAdder_1_Cout),
        .Cout(OneBitAdder_2_Cout),
        .Sum(OneBitAdder_2_Sum));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_OneBitAdder_0_3,OneBitAdder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "package_project" *) 
  (* x_core_info = "OneBitAdder,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3 OneBitAdder_3
       (.A(xlslice_3_Dout),
        .B(xlslice_7_Dout),
        .Cin(OneBitAdder_2_Cout),
        .Cout(OneBitAdder_3_Cout),
        .Sum(OneBitAdder_3_Sum));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlconcat_v2_1_4_xlconcat,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_xlconcat_0_0 xlconcat_0
       (.In0(OneBitAdder_0_Sum),
        .In1(OneBitAdder_1_Sum),
        .In2(OneBitAdder_2_Sum),
        .In3(OneBitAdder_3_Sum),
        .In4(OneBitAdder_3_Cout),
        .dout(SumOut));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_0 xlslice_0
       (.Din({1'b0,1'b0,1'b0,InputA[0]}),
        .Dout(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_0_1,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_1 xlslice_1
       (.Din({1'b0,1'b0,InputA[1],1'b0}),
        .Dout(xlslice_1_Dout));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_0_2,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_2 xlslice_2
       (.Din({1'b0,InputA[2],1'b0,1'b0}),
        .Dout(xlslice_2_Dout));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_0_3,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_3 xlslice_3
       (.Din({InputA[3],1'b0,1'b0,1'b0}),
        .Dout(xlslice_3_Dout));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_0_4,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_4 xlslice_4
       (.Din({1'b0,1'b0,1'b0,InputB[0]}),
        .Dout(xlslice_4_Dout));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_1_0 xlslice_5
       (.Din({1'b0,1'b0,InputB[1],1'b0}),
        .Dout(xlslice_5_Dout));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_2_0 xlslice_6
       (.Din({1'b0,InputB[2],1'b0,1'b0}),
        .Dout(xlslice_6_Dout));
  (* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_3_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
  Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_3_0 xlslice_7
       (.Din({InputB[3],1'b0,1'b0,1'b0}),
        .Dout(xlslice_7_Dout));
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_OneBitAdder_0_0,OneBitAdder,{}" *) (* ORIG_REF_NAME = "FourBitAdder_OneBitAdder_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "package_project" *) (* x_core_info = "OneBitAdder,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0
   (A,
    B,
    Cin,
    Cout,
    Sum);
  input A;
  input B;
  input Cin;
  output Cout;
  output Sum;

  wire A;
  wire B;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Cout_INST_0
       (.I0(A),
        .I1(B),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    Sum_INST_0
       (.I0(B),
        .I1(A),
        .O(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_OneBitAdder_0_1,OneBitAdder,{}" *) (* ORIG_REF_NAME = "FourBitAdder_OneBitAdder_0_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "package_project" *) (* x_core_info = "OneBitAdder,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1
   (A,
    B,
    Cin,
    Cout,
    Sum);
  input A;
  input B;
  input Cin;
  output Cout;
  output Sum;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  Task2_Design_FourBitAdder_0_0_OneBitAdder_1 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_OneBitAdder_0_2,OneBitAdder,{}" *) (* ORIG_REF_NAME = "FourBitAdder_OneBitAdder_0_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "package_project" *) (* x_core_info = "OneBitAdder,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2
   (A,
    B,
    Cin,
    Cout,
    Sum);
  input A;
  input B;
  input Cin;
  output Cout;
  output Sum;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  Task2_Design_FourBitAdder_0_0_OneBitAdder_0 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_OneBitAdder_0_3,OneBitAdder,{}" *) (* ORIG_REF_NAME = "FourBitAdder_OneBitAdder_0_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "package_project" *) (* x_core_info = "OneBitAdder,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3
   (A,
    B,
    Cin,
    Cout,
    Sum);
  input A;
  input B;
  input Cin;
  output Cout;
  output Sum;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  Task2_Design_FourBitAdder_0_0_OneBitAdder U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}" *) (* ORIG_REF_NAME = "FourBitAdder_xlconcat_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xlconcat_v2_1_4_xlconcat,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_xlconcat_0_0
   (In0,
    In1,
    In2,
    In3,
    In4,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  input [0:0]In3;
  input [0:0]In4;
  output [4:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;
  wire [0:0]In2;
  wire [0:0]In3;
  wire [0:0]In4;

  assign dout[4] = In4;
  assign dout[3] = In3;
  assign dout[2] = In2;
  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) (* ORIG_REF_NAME = "FourBitAdder_xlslice_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_0
   (Din,
    Dout);
  input [3:0]Din;
  output [0:0]Dout;

  wire [3:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_0_1,xlslice_v1_0_2_xlslice,{}" *) (* ORIG_REF_NAME = "FourBitAdder_xlslice_0_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_1
   (Din,
    Dout);
  input [3:0]Din;
  output [0:0]Dout;

  wire [3:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_0_2,xlslice_v1_0_2_xlslice,{}" *) (* ORIG_REF_NAME = "FourBitAdder_xlslice_0_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_2
   (Din,
    Dout);
  input [3:0]Din;
  output [0:0]Dout;

  wire [3:0]Din;

  assign Dout[0] = Din[2];
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_0_3,xlslice_v1_0_2_xlslice,{}" *) (* ORIG_REF_NAME = "FourBitAdder_xlslice_0_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_3
   (Din,
    Dout);
  input [3:0]Din;
  output [0:0]Dout;

  wire [3:0]Din;

  assign Dout[0] = Din[3];
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_0_4,xlslice_v1_0_2_xlslice,{}" *) (* ORIG_REF_NAME = "FourBitAdder_xlslice_0_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_4
   (Din,
    Dout);
  input [3:0]Din;
  output [0:0]Dout;

  wire [3:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) (* ORIG_REF_NAME = "FourBitAdder_xlslice_1_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_1_0
   (Din,
    Dout);
  input [3:0]Din;
  output [0:0]Dout;

  wire [3:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) (* ORIG_REF_NAME = "FourBitAdder_xlslice_2_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_2_0
   (Din,
    Dout);
  input [3:0]Din;
  output [0:0]Dout;

  wire [3:0]Din;

  assign Dout[0] = Din[2];
endmodule

(* CHECK_LICENSE_TYPE = "FourBitAdder_xlslice_3_0,xlslice_v1_0_2_xlslice,{}" *) (* ORIG_REF_NAME = "FourBitAdder_xlslice_3_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2023.1" *) 
module Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_3_0
   (Din,
    Dout);
  input [3:0]Din;
  output [0:0]Dout;

  wire [3:0]Din;

  assign Dout[0] = Din[3];
endmodule

(* ORIG_REF_NAME = "OneBitAdder" *) 
module Task2_Design_FourBitAdder_0_0_OneBitAdder
   (Cout,
    Sum,
    A,
    Cin,
    B);
  output Cout;
  output Sum;
  input A;
  input Cin;
  input B;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout_INST_0
       (.I0(A),
        .I1(Cin),
        .I2(B),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_INST_0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "OneBitAdder" *) 
module Task2_Design_FourBitAdder_0_0_OneBitAdder_0
   (Cout,
    Sum,
    A,
    Cin,
    B);
  output Cout;
  output Sum;
  input A;
  input Cin;
  input B;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout_INST_0
       (.I0(A),
        .I1(Cin),
        .I2(B),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_INST_0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "OneBitAdder" *) 
module Task2_Design_FourBitAdder_0_0_OneBitAdder_1
   (Cout,
    Sum,
    A,
    Cin,
    B);
  output Cout;
  output Sum;
  input A;
  input Cin;
  input B;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout_INST_0
       (.I0(A),
        .I1(Cin),
        .I2(B),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_INST_0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule
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
