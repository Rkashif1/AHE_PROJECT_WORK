// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 17 16:11:12 2024
// Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FullAdder/Task2_BCD_Segments/Task2_BCD_Segments.gen/sources_1/bd/Task2_Design/ip/Task2_Design_BCD_5in_8out_0_0/Task2_Design_BCD_5in_8out_0_0_sim_netlist.v
// Design      : Task2_Design_BCD_5in_8out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Task2_Design_BCD_5in_8out_0_0,BCD_5in_8out,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "BCD_5in_8out,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module Task2_Design_BCD_5in_8out_0_0
   (BIN,
    BCD_OUT);
  input [4:0]BIN;
  output [7:0]BCD_OUT;

  wire \<const0> ;
  wire [5:1]\^BCD_OUT ;
  wire [4:0]BIN;

  assign BCD_OUT[7] = \<const0> ;
  assign BCD_OUT[6] = \<const0> ;
  assign BCD_OUT[5:1] = \^BCD_OUT [5:1];
  assign BCD_OUT[0] = BIN[0];
  LUT4 #(
    .INIT(16'h18C6)) 
    \BCD_OUT[1]_INST_0 
       (.I0(BIN[4]),
        .I1(BIN[1]),
        .I2(BIN[2]),
        .I3(BIN[3]),
        .O(\^BCD_OUT [1]));
  LUT4 #(
    .INIT(16'h4A52)) 
    \BCD_OUT[2]_INST_0 
       (.I0(BIN[4]),
        .I1(BIN[1]),
        .I2(BIN[2]),
        .I3(BIN[3]),
        .O(\^BCD_OUT [2]));
  LUT4 #(
    .INIT(16'h0290)) 
    \BCD_OUT[3]_INST_0 
       (.I0(BIN[4]),
        .I1(BIN[2]),
        .I2(BIN[3]),
        .I3(BIN[1]),
        .O(\^BCD_OUT [3]));
  LUT4 #(
    .INIT(16'hD40A)) 
    \BCD_OUT[4]_INST_0 
       (.I0(BIN[4]),
        .I1(BIN[1]),
        .I2(BIN[2]),
        .I3(BIN[3]),
        .O(\^BCD_OUT [4]));
  LUT3 #(
    .INIT(8'hE0)) 
    \BCD_OUT[5]_INST_0 
       (.I0(BIN[3]),
        .I1(BIN[2]),
        .I2(BIN[4]),
        .O(\^BCD_OUT [5]));
  GND GND
       (.G(\<const0> ));
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
