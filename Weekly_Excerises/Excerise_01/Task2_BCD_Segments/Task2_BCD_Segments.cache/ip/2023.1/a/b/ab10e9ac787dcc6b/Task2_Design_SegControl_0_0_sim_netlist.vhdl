-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Nov 17 16:11:12 2024
-- Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Task2_Design_SegControl_0_0_sim_netlist.vhdl
-- Design      : Task2_Design_SegControl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    OnesBits : in STD_LOGIC_VECTOR ( 3 downto 0 );
    TensBits : in STD_LOGIC_VECTOR ( 7 downto 4 );
    ControlBit : in STD_LOGIC;
    SegOut : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SegAN : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Task2_Design_SegControl_0_0,SegControl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SegControl,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  signal \^controlbit\ : STD_LOGIC;
  signal \^segan\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \SegOut[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \SegOut[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \SegOut[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \SegOut[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \SegOut[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \SegOut[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \SegOut[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SegOut[0]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SegOut[1]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SegOut[2]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SegOut[3]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SegOut[4]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SegOut[5]_INST_0_i_1\ : label is "soft_lutpair2";
begin
  SegAN(7) <= \<const1>\;
  SegAN(6) <= \<const1>\;
  SegAN(5) <= \<const1>\;
  SegAN(4) <= \<const1>\;
  SegAN(3) <= \<const1>\;
  SegAN(2) <= \<const1>\;
  SegAN(1) <= \^segan\(1);
  SegAN(0) <= \^controlbit\;
  \^controlbit\ <= ControlBit;
\SegAN[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^controlbit\,
      O => \^segan\(1)
    );
\SegOut[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD1D11DD1D1D11D"
    )
        port map (
      I0 => \SegOut[0]_INST_0_i_1_n_0\,
      I1 => \^controlbit\,
      I2 => TensBits(7),
      I3 => TensBits(6),
      I4 => TensBits(5),
      I5 => TensBits(4),
      O => SegOut(0)
    );
\SegOut[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"037C"
    )
        port map (
      I0 => OnesBits(0),
      I1 => OnesBits(1),
      I2 => OnesBits(2),
      I3 => OnesBits(3),
      O => \SegOut[0]_INST_0_i_1_n_0\
    );
\SegOut[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9B8FFFFF9B80000"
    )
        port map (
      I0 => TensBits(7),
      I1 => TensBits(6),
      I2 => TensBits(5),
      I3 => TensBits(4),
      I4 => \^controlbit\,
      I5 => \SegOut[1]_INST_0_i_1_n_0\,
      O => SegOut(1)
    );
\SegOut[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9B8"
    )
        port map (
      I0 => OnesBits(3),
      I1 => OnesBits(2),
      I2 => OnesBits(1),
      I3 => OnesBits(0),
      O => \SegOut[1]_INST_0_i_1_n_0\
    );
\SegOut[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8FFFF00000000"
    )
        port map (
      I0 => TensBits(7),
      I1 => TensBits(5),
      I2 => TensBits(6),
      I3 => TensBits(4),
      I4 => \^controlbit\,
      I5 => \SegOut[2]_INST_0_i_1_n_0\,
      O => SegOut(2)
    );
\SegOut[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => OnesBits(0),
      I1 => \^controlbit\,
      I2 => OnesBits(2),
      I3 => OnesBits(1),
      I4 => OnesBits(3),
      O => \SegOut[2]_INST_0_i_1_n_0\
    );
\SegOut[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED98FFFFED980000"
    )
        port map (
      I0 => TensBits(5),
      I1 => TensBits(7),
      I2 => TensBits(4),
      I3 => TensBits(6),
      I4 => \^controlbit\,
      I5 => \SegOut[3]_INST_0_i_1_n_0\,
      O => SegOut(3)
    );
\SegOut[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED98"
    )
        port map (
      I0 => OnesBits(1),
      I1 => OnesBits(3),
      I2 => OnesBits(0),
      I3 => OnesBits(2),
      O => \SegOut[3]_INST_0_i_1_n_0\
    );
\SegOut[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA02FFFFFA020000"
    )
        port map (
      I0 => TensBits(5),
      I1 => TensBits(4),
      I2 => TensBits(6),
      I3 => TensBits(7),
      I4 => \^controlbit\,
      I5 => \SegOut[4]_INST_0_i_1_n_0\,
      O => SegOut(4)
    );
\SegOut[4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA02"
    )
        port map (
      I0 => OnesBits(1),
      I1 => OnesBits(0),
      I2 => OnesBits(2),
      I3 => OnesBits(3),
      O => \SegOut[4]_INST_0_i_1_n_0\
    );
\SegOut[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE88FFFFBE880000"
    )
        port map (
      I0 => TensBits(7),
      I1 => TensBits(5),
      I2 => TensBits(4),
      I3 => TensBits(6),
      I4 => \^controlbit\,
      I5 => \SegOut[5]_INST_0_i_1_n_0\,
      O => SegOut(5)
    );
\SegOut[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE88"
    )
        port map (
      I0 => OnesBits(3),
      I1 => OnesBits(1),
      I2 => OnesBits(0),
      I3 => OnesBits(2),
      O => \SegOut[5]_INST_0_i_1_n_0\
    );
\SegOut[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA4FFFFABA40000"
    )
        port map (
      I0 => TensBits(7),
      I1 => TensBits(4),
      I2 => TensBits(5),
      I3 => TensBits(6),
      I4 => \^controlbit\,
      I5 => \SegOut[6]_INST_0_i_1_n_0\,
      O => SegOut(6)
    );
\SegOut[6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA4"
    )
        port map (
      I0 => OnesBits(3),
      I1 => OnesBits(0),
      I2 => OnesBits(1),
      I3 => OnesBits(2),
      O => \SegOut[6]_INST_0_i_1_n_0\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
