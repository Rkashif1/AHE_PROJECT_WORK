--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Wed Nov 13 22:38:57 2024
--Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
--Command     : generate_target FourBitAdder_wrapper.bd
--Design      : FourBitAdder_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FourBitAdder_wrapper is
  port (
    InputA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InputB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SumOut : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end FourBitAdder_wrapper;

architecture STRUCTURE of FourBitAdder_wrapper is
  component FourBitAdder is
  port (
    InputA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InputB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SumOut : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component FourBitAdder;
begin
FourBitAdder_i: component FourBitAdder
     port map (
      InputA(3 downto 0) => InputA(3 downto 0),
      InputB(3 downto 0) => InputB(3 downto 0),
      SumOut(4 downto 0) => SumOut(4 downto 0)
    );
end STRUCTURE;
