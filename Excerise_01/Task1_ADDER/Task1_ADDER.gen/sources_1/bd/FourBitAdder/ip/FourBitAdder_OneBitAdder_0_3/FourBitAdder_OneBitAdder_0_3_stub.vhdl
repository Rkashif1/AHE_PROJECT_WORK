-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Nov 13 22:40:22 2024
-- Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top FourBitAdder_OneBitAdder_0_3 -prefix
--               FourBitAdder_OneBitAdder_0_3_ FourBitAdder_OneBitAdder_0_0_stub.vhdl
-- Design      : FourBitAdder_OneBitAdder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FourBitAdder_OneBitAdder_0_3 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC
  );

end FourBitAdder_OneBitAdder_0_3;

architecture stub of FourBitAdder_OneBitAdder_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,Cin,Cout,Sum";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "OneBitAdder,Vivado 2023.1";
begin
end;
