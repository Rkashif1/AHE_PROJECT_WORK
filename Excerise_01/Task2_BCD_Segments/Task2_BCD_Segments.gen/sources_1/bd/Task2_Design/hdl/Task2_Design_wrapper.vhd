--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Sun Nov 17 16:09:43 2024
--Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
--Command     : generate_target Task2_Design_wrapper.bd
--Design      : Task2_Design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_wrapper is
  port (
    InputA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InputB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SegAN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SegOut : out STD_LOGIC_VECTOR ( 6 downto 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end Task2_Design_wrapper;

architecture STRUCTURE of Task2_Design_wrapper is
  component Task2_Design is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    SegOut : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SegAN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    InputA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InputB : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Task2_Design;
begin
Task2_Design_i: component Task2_Design
     port map (
      InputA(3 downto 0) => InputA(3 downto 0),
      InputB(3 downto 0) => InputB(3 downto 0),
      SegAN(7 downto 0) => SegAN(7 downto 0),
      SegOut(6 downto 0) => SegOut(6 downto 0),
      reset => reset,
      sys_clock => sys_clock
    );
end STRUCTURE;
