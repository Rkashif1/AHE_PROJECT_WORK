-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Nov 13 22:40:22 2024
-- Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top FourBitAdder_OneBitAdder_0_3 -prefix
--               FourBitAdder_OneBitAdder_0_3_ FourBitAdder_OneBitAdder_0_0_sim_netlist.vhdl
-- Design      : FourBitAdder_OneBitAdder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FourBitAdder_OneBitAdder_0_3_OneBitAdder is
  port (
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC;
    A : in STD_LOGIC;
    Cin : in STD_LOGIC;
    B : in STD_LOGIC
  );
end FourBitAdder_OneBitAdder_0_3_OneBitAdder;

architecture STRUCTURE of FourBitAdder_OneBitAdder_0_3_OneBitAdder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Cout__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Sum__0\ : label is "soft_lutpair0";
begin
\Cout__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => A,
      I1 => Cin,
      I2 => B,
      O => Cout
    );
\Sum__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B,
      I1 => A,
      I2 => Cin,
      O => Sum
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FourBitAdder_OneBitAdder_0_3 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FourBitAdder_OneBitAdder_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FourBitAdder_OneBitAdder_0_3 : entity is "FourBitAdder_OneBitAdder_0_0,OneBitAdder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FourBitAdder_OneBitAdder_0_3 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FourBitAdder_OneBitAdder_0_3 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of FourBitAdder_OneBitAdder_0_3 : entity is "OneBitAdder,Vivado 2023.1";
end FourBitAdder_OneBitAdder_0_3;

architecture STRUCTURE of FourBitAdder_OneBitAdder_0_3 is
begin
U0: entity work.FourBitAdder_OneBitAdder_0_3_OneBitAdder
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      Sum => Sum
    );
end STRUCTURE;
