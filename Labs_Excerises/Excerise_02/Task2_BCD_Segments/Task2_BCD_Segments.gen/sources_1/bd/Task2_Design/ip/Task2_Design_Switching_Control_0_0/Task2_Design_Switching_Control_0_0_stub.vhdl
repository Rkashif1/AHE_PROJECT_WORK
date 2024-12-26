-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Nov 17 16:12:17 2024
-- Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/FullAdder/Task2_BCD_Segments/Task2_BCD_Segments.gen/sources_1/bd/Task2_Design/ip/Task2_Design_Switching_Control_0_0/Task2_Design_Switching_Control_0_0_stub.vhdl
-- Design      : Task2_Design_Switching_Control_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Task2_Design_Switching_Control_0_0 is
  Port ( 
    clkIn : in STD_LOGIC;
    CtrlBit : out STD_LOGIC
  );

end Task2_Design_Switching_Control_0_0;

architecture stub of Task2_Design_Switching_Control_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clkIn,CtrlBit";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Switching_Control,Vivado 2023.1";
begin
end;
