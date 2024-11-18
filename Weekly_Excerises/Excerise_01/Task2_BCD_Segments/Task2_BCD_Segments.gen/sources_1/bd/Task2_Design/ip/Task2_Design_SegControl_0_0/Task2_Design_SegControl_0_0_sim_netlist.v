// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 17 16:11:13 2024
// Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FullAdder/Task2_BCD_Segments/Task2_BCD_Segments.gen/sources_1/bd/Task2_Design/ip/Task2_Design_SegControl_0_0/Task2_Design_SegControl_0_0_sim_netlist.v
// Design      : Task2_Design_SegControl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Task2_Design_SegControl_0_0,SegControl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "SegControl,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module Task2_Design_SegControl_0_0
   (OnesBits,
    TensBits,
    ControlBit,
    SegOut,
    SegAN);
  input [3:0]OnesBits;
  input [7:4]TensBits;
  input ControlBit;
  output [6:0]SegOut;
  output [7:0]SegAN;

  wire \<const1> ;
  wire ControlBit;
  wire [3:0]OnesBits;
  wire [1:1]\^SegAN ;
  wire [6:0]SegOut;
  wire \SegOut[0]_INST_0_i_1_n_0 ;
  wire \SegOut[1]_INST_0_i_1_n_0 ;
  wire \SegOut[2]_INST_0_i_1_n_0 ;
  wire \SegOut[3]_INST_0_i_1_n_0 ;
  wire \SegOut[4]_INST_0_i_1_n_0 ;
  wire \SegOut[5]_INST_0_i_1_n_0 ;
  wire \SegOut[6]_INST_0_i_1_n_0 ;
  wire [7:4]TensBits;

  assign SegAN[7] = \<const1> ;
  assign SegAN[6] = \<const1> ;
  assign SegAN[5] = \<const1> ;
  assign SegAN[4] = \<const1> ;
  assign SegAN[3] = \<const1> ;
  assign SegAN[2] = \<const1> ;
  assign SegAN[1] = \^SegAN [1];
  assign SegAN[0] = ControlBit;
  LUT1 #(
    .INIT(2'h1)) 
    \SegAN[1]_INST_0 
       (.I0(ControlBit),
        .O(\^SegAN ));
  LUT6 #(
    .INIT(64'hDDD1D11DD1D1D11D)) 
    \SegOut[0]_INST_0 
       (.I0(\SegOut[0]_INST_0_i_1_n_0 ),
        .I1(ControlBit),
        .I2(TensBits[7]),
        .I3(TensBits[6]),
        .I4(TensBits[5]),
        .I5(TensBits[4]),
        .O(SegOut[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h037C)) 
    \SegOut[0]_INST_0_i_1 
       (.I0(OnesBits[0]),
        .I1(OnesBits[1]),
        .I2(OnesBits[2]),
        .I3(OnesBits[3]),
        .O(\SegOut[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF9B8FFFFF9B80000)) 
    \SegOut[1]_INST_0 
       (.I0(TensBits[7]),
        .I1(TensBits[6]),
        .I2(TensBits[5]),
        .I3(TensBits[4]),
        .I4(ControlBit),
        .I5(\SegOut[1]_INST_0_i_1_n_0 ),
        .O(SegOut[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF9B8)) 
    \SegOut[1]_INST_0_i_1 
       (.I0(OnesBits[3]),
        .I1(OnesBits[2]),
        .I2(OnesBits[1]),
        .I3(OnesBits[0]),
        .O(\SegOut[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8FFFF00000000)) 
    \SegOut[2]_INST_0 
       (.I0(TensBits[7]),
        .I1(TensBits[5]),
        .I2(TensBits[6]),
        .I3(TensBits[4]),
        .I4(ControlBit),
        .I5(\SegOut[2]_INST_0_i_1_n_0 ),
        .O(SegOut[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    \SegOut[2]_INST_0_i_1 
       (.I0(OnesBits[0]),
        .I1(ControlBit),
        .I2(OnesBits[2]),
        .I3(OnesBits[1]),
        .I4(OnesBits[3]),
        .O(\SegOut[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hED98FFFFED980000)) 
    \SegOut[3]_INST_0 
       (.I0(TensBits[5]),
        .I1(TensBits[7]),
        .I2(TensBits[4]),
        .I3(TensBits[6]),
        .I4(ControlBit),
        .I5(\SegOut[3]_INST_0_i_1_n_0 ),
        .O(SegOut[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hED98)) 
    \SegOut[3]_INST_0_i_1 
       (.I0(OnesBits[1]),
        .I1(OnesBits[3]),
        .I2(OnesBits[0]),
        .I3(OnesBits[2]),
        .O(\SegOut[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA02FFFFFA020000)) 
    \SegOut[4]_INST_0 
       (.I0(TensBits[5]),
        .I1(TensBits[4]),
        .I2(TensBits[6]),
        .I3(TensBits[7]),
        .I4(ControlBit),
        .I5(\SegOut[4]_INST_0_i_1_n_0 ),
        .O(SegOut[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFA02)) 
    \SegOut[4]_INST_0_i_1 
       (.I0(OnesBits[1]),
        .I1(OnesBits[0]),
        .I2(OnesBits[2]),
        .I3(OnesBits[3]),
        .O(\SegOut[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBE88FFFFBE880000)) 
    \SegOut[5]_INST_0 
       (.I0(TensBits[7]),
        .I1(TensBits[5]),
        .I2(TensBits[4]),
        .I3(TensBits[6]),
        .I4(ControlBit),
        .I5(\SegOut[5]_INST_0_i_1_n_0 ),
        .O(SegOut[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBE88)) 
    \SegOut[5]_INST_0_i_1 
       (.I0(OnesBits[3]),
        .I1(OnesBits[1]),
        .I2(OnesBits[0]),
        .I3(OnesBits[2]),
        .O(\SegOut[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA4FFFFABA40000)) 
    \SegOut[6]_INST_0 
       (.I0(TensBits[7]),
        .I1(TensBits[4]),
        .I2(TensBits[5]),
        .I3(TensBits[6]),
        .I4(ControlBit),
        .I5(\SegOut[6]_INST_0_i_1_n_0 ),
        .O(SegOut[6]));
  LUT4 #(
    .INIT(16'hABA4)) 
    \SegOut[6]_INST_0_i_1 
       (.I0(OnesBits[3]),
        .I1(OnesBits[0]),
        .I2(OnesBits[1]),
        .I3(OnesBits[2]),
        .O(\SegOut[6]_INST_0_i_1_n_0 ));
  VCC VCC
       (.P(\<const1> ));
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
