--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Wed Nov 13 22:38:57 2024
--Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
--Command     : generate_target FourBitAdder.bd
--Design      : FourBitAdder
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FourBitAdder is
  port (
    InputA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InputB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SumOut : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of FourBitAdder : entity is "FourBitAdder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FourBitAdder,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=14,numReposBlks=14,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of FourBitAdder : entity is "FourBitAdder.hwdef";
end FourBitAdder;

architecture STRUCTURE of FourBitAdder is
  component FourBitAdder_OneBitAdder_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC
  );
  end component FourBitAdder_OneBitAdder_0_0;
  component FourBitAdder_OneBitAdder_0_1 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC
  );
  end component FourBitAdder_OneBitAdder_0_1;
  component FourBitAdder_OneBitAdder_0_2 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC
  );
  end component FourBitAdder_OneBitAdder_0_2;
  component FourBitAdder_OneBitAdder_0_3 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC
  );
  end component FourBitAdder_OneBitAdder_0_3;
  component FourBitAdder_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FourBitAdder_xlslice_0_0;
  component FourBitAdder_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component FourBitAdder_xlconcat_0_0;
  component FourBitAdder_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FourBitAdder_xlslice_0_1;
  component FourBitAdder_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FourBitAdder_xlslice_0_2;
  component FourBitAdder_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FourBitAdder_xlslice_0_3;
  component FourBitAdder_xlslice_0_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FourBitAdder_xlslice_0_4;
  component FourBitAdder_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FourBitAdder_xlslice_1_0;
  component FourBitAdder_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FourBitAdder_xlslice_2_0;
  component FourBitAdder_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FourBitAdder_xlslice_3_0;
  component FourBitAdder_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FourBitAdder_xlconstant_0_0;
  signal InputA_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal InputB_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal OneBitAdder_0_Cout : STD_LOGIC;
  signal OneBitAdder_0_Sum : STD_LOGIC;
  signal OneBitAdder_1_Cout : STD_LOGIC;
  signal OneBitAdder_1_Sum : STD_LOGIC;
  signal OneBitAdder_2_Cout : STD_LOGIC;
  signal OneBitAdder_2_Sum : STD_LOGIC;
  signal OneBitAdder_3_Cout : STD_LOGIC;
  signal OneBitAdder_3_Sum : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_4_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_6_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_7_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  InputA_1(3 downto 0) <= InputA(3 downto 0);
  InputB_1(3 downto 0) <= InputB(3 downto 0);
  SumOut(4 downto 0) <= xlconcat_0_dout(4 downto 0);
OneBitAdder_0: component FourBitAdder_OneBitAdder_0_0
     port map (
      A => xlslice_0_Dout(0),
      B => xlslice_4_Dout(0),
      Cin => xlconstant_0_dout(0),
      Cout => OneBitAdder_0_Cout,
      Sum => OneBitAdder_0_Sum
    );
OneBitAdder_1: component FourBitAdder_OneBitAdder_0_1
     port map (
      A => xlslice_1_Dout(0),
      B => xlslice_5_Dout(0),
      Cin => OneBitAdder_0_Cout,
      Cout => OneBitAdder_1_Cout,
      Sum => OneBitAdder_1_Sum
    );
OneBitAdder_2: component FourBitAdder_OneBitAdder_0_2
     port map (
      A => xlslice_2_Dout(0),
      B => xlslice_6_Dout(0),
      Cin => OneBitAdder_1_Cout,
      Cout => OneBitAdder_2_Cout,
      Sum => OneBitAdder_2_Sum
    );
OneBitAdder_3: component FourBitAdder_OneBitAdder_0_3
     port map (
      A => xlslice_3_Dout(0),
      B => xlslice_7_Dout(0),
      Cin => OneBitAdder_2_Cout,
      Cout => OneBitAdder_3_Cout,
      Sum => OneBitAdder_3_Sum
    );
xlconcat_0: component FourBitAdder_xlconcat_0_0
     port map (
      In0(0) => OneBitAdder_0_Sum,
      In1(0) => OneBitAdder_1_Sum,
      In2(0) => OneBitAdder_2_Sum,
      In3(0) => OneBitAdder_3_Sum,
      In4(0) => OneBitAdder_3_Cout,
      dout(4 downto 0) => xlconcat_0_dout(4 downto 0)
    );
xlconstant_0: component FourBitAdder_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlslice_0: component FourBitAdder_xlslice_0_0
     port map (
      Din(3 downto 0) => InputA_1(3 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component FourBitAdder_xlslice_0_1
     port map (
      Din(3 downto 0) => InputA_1(3 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_2: component FourBitAdder_xlslice_0_2
     port map (
      Din(3 downto 0) => InputA_1(3 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
xlslice_3: component FourBitAdder_xlslice_0_3
     port map (
      Din(3 downto 0) => InputA_1(3 downto 0),
      Dout(0) => xlslice_3_Dout(0)
    );
xlslice_4: component FourBitAdder_xlslice_0_4
     port map (
      Din(3 downto 0) => InputB_1(3 downto 0),
      Dout(0) => xlslice_4_Dout(0)
    );
xlslice_5: component FourBitAdder_xlslice_1_0
     port map (
      Din(3 downto 0) => InputB_1(3 downto 0),
      Dout(0) => xlslice_5_Dout(0)
    );
xlslice_6: component FourBitAdder_xlslice_2_0
     port map (
      Din(3 downto 0) => InputB_1(3 downto 0),
      Dout(0) => xlslice_6_Dout(0)
    );
xlslice_7: component FourBitAdder_xlslice_3_0
     port map (
      Din(3 downto 0) => InputB_1(3 downto 0),
      Dout(0) => xlslice_7_Dout(0)
    );
end STRUCTURE;
