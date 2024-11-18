--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Sun Nov 17 16:09:43 2024
--Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
--Command     : generate_target Task2_Design.bd
--Design      : Task2_Design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design is
  port (
    InputA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InputB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SegAN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SegOut : out STD_LOGIC_VECTOR ( 6 downto 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Task2_Design : entity is "Task2_Design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Task2_Design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=1,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Task2_Design : entity is "Task2_Design.hwdef";
end Task2_Design;

architecture STRUCTURE of Task2_Design is
  component Task2_Design_FourBitAdder_0_0 is
  port (
    InputA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InputB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SumOut : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Task2_Design_FourBitAdder_0_0;
  component Task2_Design_BCD_5in_8out_0_0 is
  port (
    BIN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BCD_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Task2_Design_BCD_5in_8out_0_0;
  component Task2_Design_SegControl_0_0 is
  port (
    OnesBits : in STD_LOGIC_VECTOR ( 3 downto 0 );
    TensBits : in STD_LOGIC_VECTOR ( 7 downto 4 );
    ControlBit : in STD_LOGIC;
    SegOut : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SegAN : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Task2_Design_SegControl_0_0;
  component Task2_Design_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Task2_Design_xlslice_0_0;
  component Task2_Design_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Task2_Design_xlslice_1_0;
  component Task2_Design_Switching_Control_0_0 is
  port (
    clkIn : in STD_LOGIC;
    CtrlBit : out STD_LOGIC
  );
  end component Task2_Design_Switching_Control_0_0;
  component Task2_Design_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component Task2_Design_clk_wiz_0;
  component Task2_Design_reset_inv_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Task2_Design_reset_inv_0_0;
  signal BCD_5in_8out_0_BCD_OUT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal FourBitAdder_0_SumOut : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal InputA_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal InputB_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SegControl_0_SegAN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SegControl_0_SegOut : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Switching_Control_0_CtrlBit : STD_LOGIC;
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal reset_inv_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clock_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_clk_wiz_locked_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN Task2_Design_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  InputA_1(3 downto 0) <= InputA(3 downto 0);
  InputB_1(3 downto 0) <= InputB(3 downto 0);
  SegAN(7 downto 0) <= SegControl_0_SegAN(7 downto 0);
  SegOut(6 downto 0) <= SegControl_0_SegOut(6 downto 0);
  reset_1 <= reset;
  sys_clock_1 <= sys_clock;
BCD_5in_8out_0: component Task2_Design_BCD_5in_8out_0_0
     port map (
      BCD_OUT(7 downto 0) => BCD_5in_8out_0_BCD_OUT(7 downto 0),
      BIN(4 downto 0) => FourBitAdder_0_SumOut(4 downto 0)
    );
FourBitAdder_0: component Task2_Design_FourBitAdder_0_0
     port map (
      InputA(3 downto 0) => InputA_1(3 downto 0),
      InputB(3 downto 0) => InputB_1(3 downto 0),
      SumOut(4 downto 0) => FourBitAdder_0_SumOut(4 downto 0)
    );
SegControl_0: component Task2_Design_SegControl_0_0
     port map (
      ControlBit => Switching_Control_0_CtrlBit,
      OnesBits(3 downto 0) => xlslice_0_Dout(3 downto 0),
      SegAN(7 downto 0) => SegControl_0_SegAN(7 downto 0),
      SegOut(6 downto 0) => SegControl_0_SegOut(6 downto 0),
      TensBits(7 downto 4) => xlslice_1_Dout(3 downto 0)
    );
Switching_Control_0: component Task2_Design_Switching_Control_0_0
     port map (
      CtrlBit => Switching_Control_0_CtrlBit,
      clkIn => clk_wiz_clk_out1
    );
clk_wiz: component Task2_Design_clk_wiz_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_clk_out1,
      locked => NLW_clk_wiz_locked_UNCONNECTED,
      reset => reset_inv_0_Res(0)
    );
reset_inv_0: component Task2_Design_reset_inv_0_0
     port map (
      Op1(0) => reset_1,
      Res(0) => reset_inv_0_Res(0)
    );
xlslice_0: component Task2_Design_xlslice_0_0
     port map (
      Din(7 downto 0) => BCD_5in_8out_0_BCD_OUT(7 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
xlslice_1: component Task2_Design_xlslice_1_0
     port map (
      Din(7 downto 0) => BCD_5in_8out_0_BCD_OUT(7 downto 0),
      Dout(3 downto 0) => xlslice_1_Dout(3 downto 0)
    );
end STRUCTURE;
