// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 17 16:12:16 2024
// Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Task2_Design_Switching_Control_0_0_sim_netlist.v
// Design      : Task2_Design_Switching_Control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Switching_Control
   (CtrlBit,
    clkIn);
  output CtrlBit;
  input clkIn;

  wire CtrlBit;
  wire CtrlBit_0;
  wire CtrlBit_i_1_n_0;
  wire CtrlBit_i_2_n_0;
  wire CtrlBit_i_3_n_0;
  wire CtrlBit_i_4_n_0;
  wire CtrlBit_i_5_n_0;
  wire clkIn;
  wire [16:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire [16:0]p_1_in;
  wire toggle_signal;
  wire toggle_signal_i_1_n_0;
  wire [3:3]NLW_counter0_carry__2_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    CtrlBit_i_1
       (.I0(toggle_signal),
        .I1(CtrlBit_i_2_n_0),
        .I2(CtrlBit_i_3_n_0),
        .I3(CtrlBit_i_4_n_0),
        .I4(CtrlBit_i_5_n_0),
        .I5(CtrlBit),
        .O(CtrlBit_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    CtrlBit_i_2
       (.I0(counter[15]),
        .I1(counter[9]),
        .I2(counter[0]),
        .I3(counter[4]),
        .I4(counter[8]),
        .I5(counter[5]),
        .O(CtrlBit_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    CtrlBit_i_3
       (.I0(counter[3]),
        .I1(counter[12]),
        .I2(counter[14]),
        .I3(counter[6]),
        .O(CtrlBit_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    CtrlBit_i_4
       (.I0(counter[16]),
        .I1(counter[11]),
        .I2(counter[1]),
        .I3(counter[13]),
        .O(CtrlBit_i_4_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    CtrlBit_i_5
       (.I0(counter[10]),
        .I1(counter[2]),
        .I2(counter[7]),
        .O(CtrlBit_i_5_n_0));
  FDRE CtrlBit_reg
       (.C(clkIn),
        .CE(1'b1),
        .D(CtrlBit_i_1_n_0),
        .Q(CtrlBit),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3],counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(counter[16:13]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \counter[16]_i_1 
       (.I0(CtrlBit_i_2_n_0),
        .I1(CtrlBit_i_3_n_0),
        .I2(CtrlBit_i_4_n_0),
        .I3(counter[10]),
        .I4(counter[2]),
        .I5(counter[7]),
        .O(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(counter[0]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(counter[10]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(counter[11]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(counter[12]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(counter[13]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(counter[14]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(counter[15]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(counter[16]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(counter[1]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(counter[4]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(counter[5]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(counter[6]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(counter[7]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(counter[8]),
        .R(CtrlBit_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clkIn),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(counter[9]),
        .R(CtrlBit_0));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    toggle_signal_i_1
       (.I0(CtrlBit_i_5_n_0),
        .I1(CtrlBit_i_4_n_0),
        .I2(CtrlBit_i_3_n_0),
        .I3(CtrlBit_i_2_n_0),
        .I4(toggle_signal),
        .O(toggle_signal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    toggle_signal_reg
       (.C(clkIn),
        .CE(1'b1),
        .D(toggle_signal_i_1_n_0),
        .Q(toggle_signal),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "Task2_Design_Switching_Control_0_0,Switching_Control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Switching_Control,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clkIn,
    CtrlBit);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clkIn CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clkIn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clkIn;
  output CtrlBit;

  wire CtrlBit;
  wire clkIn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Switching_Control U0
       (.CtrlBit(CtrlBit),
        .clkIn(clkIn));
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
