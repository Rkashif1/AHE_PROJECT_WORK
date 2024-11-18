-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Nov 17 16:11:12 2024
-- Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FullAdder/Task2_BCD_Segments/Task2_BCD_Segments.gen/sources_1/bd/Task2_Design/ip/Task2_Design_BCD_5in_8out_0_0/Task2_Design_BCD_5in_8out_0_0_sim_netlist.vhdl
-- Design      : Task2_Design_BCD_5in_8out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_BCD_5in_8out_0_0 is
  port (
    BIN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BCD_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Task2_Design_BCD_5in_8out_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_BCD_5in_8out_0_0 : entity is "Task2_Design_BCD_5in_8out_0_0,BCD_5in_8out,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_BCD_5in_8out_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Task2_Design_BCD_5in_8out_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_BCD_5in_8out_0_0 : entity is "BCD_5in_8out,Vivado 2023.1";
end Task2_Design_BCD_5in_8out_0_0;

architecture STRUCTURE of Task2_Design_BCD_5in_8out_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bcd_out\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \^bin\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  BCD_OUT(7) <= \<const0>\;
  BCD_OUT(6) <= \<const0>\;
  BCD_OUT(5 downto 1) <= \^bcd_out\(5 downto 1);
  BCD_OUT(0) <= \^bin\(0);
  \^bin\(4 downto 0) <= BIN(4 downto 0);
\BCD_OUT[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"18C6"
    )
        port map (
      I0 => \^bin\(4),
      I1 => \^bin\(1),
      I2 => \^bin\(2),
      I3 => \^bin\(3),
      O => \^bcd_out\(1)
    );
\BCD_OUT[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4A52"
    )
        port map (
      I0 => \^bin\(4),
      I1 => \^bin\(1),
      I2 => \^bin\(2),
      I3 => \^bin\(3),
      O => \^bcd_out\(2)
    );
\BCD_OUT[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0290"
    )
        port map (
      I0 => \^bin\(4),
      I1 => \^bin\(2),
      I2 => \^bin\(3),
      I3 => \^bin\(1),
      O => \^bcd_out\(3)
    );
\BCD_OUT[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D40A"
    )
        port map (
      I0 => \^bin\(4),
      I1 => \^bin\(1),
      I2 => \^bin\(2),
      I3 => \^bin\(3),
      O => \^bcd_out\(4)
    );
\BCD_OUT[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^bin\(3),
      I1 => \^bin\(2),
      I2 => \^bin\(4),
      O => \^bcd_out\(5)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
