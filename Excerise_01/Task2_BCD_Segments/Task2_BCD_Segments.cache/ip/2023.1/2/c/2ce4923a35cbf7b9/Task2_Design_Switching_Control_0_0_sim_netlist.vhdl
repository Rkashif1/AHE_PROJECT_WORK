-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Nov 17 16:12:16 2024
-- Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Task2_Design_Switching_Control_0_0_sim_netlist.vhdl
-- Design      : Task2_Design_Switching_Control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Switching_Control is
  port (
    CtrlBit : out STD_LOGIC;
    clkIn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Switching_Control;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Switching_Control is
  signal \^ctrlbit\ : STD_LOGIC;
  signal CtrlBit_0 : STD_LOGIC;
  signal CtrlBit_i_1_n_0 : STD_LOGIC;
  signal CtrlBit_i_2_n_0 : STD_LOGIC;
  signal CtrlBit_i_3_n_0 : STD_LOGIC;
  signal CtrlBit_i_4_n_0 : STD_LOGIC;
  signal CtrlBit_i_5_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal toggle_signal : STD_LOGIC;
  signal toggle_signal_i_1_n_0 : STD_LOGIC;
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
begin
  CtrlBit <= \^ctrlbit\;
CtrlBit_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => toggle_signal,
      I1 => CtrlBit_i_2_n_0,
      I2 => CtrlBit_i_3_n_0,
      I3 => CtrlBit_i_4_n_0,
      I4 => CtrlBit_i_5_n_0,
      I5 => \^ctrlbit\,
      O => CtrlBit_i_1_n_0
    );
CtrlBit_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(9),
      I2 => counter(0),
      I3 => counter(4),
      I4 => counter(8),
      I5 => counter(5),
      O => CtrlBit_i_2_n_0
    );
CtrlBit_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter(3),
      I1 => counter(12),
      I2 => counter(14),
      I3 => counter(6),
      O => CtrlBit_i_3_n_0
    );
CtrlBit_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter(16),
      I1 => counter(11),
      I2 => counter(1),
      I3 => counter(13),
      O => CtrlBit_i_4_n_0
    );
CtrlBit_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => counter(10),
      I1 => counter(2),
      I2 => counter(7),
      O => CtrlBit_i_5_n_0
    );
CtrlBit_reg: unisim.vcomponents.FDRE
     port map (
      C => clkIn,
      CE => '1',
      D => CtrlBit_i_1_n_0,
      Q => \^ctrlbit\,
      R => '0'
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \NLW_counter0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => p_1_in(0)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => CtrlBit_i_2_n_0,
      I1 => CtrlBit_i_3_n_0,
      I2 => CtrlBit_i_4_n_0,
      I3 => counter(10),
      I4 => counter(2),
      I5 => counter(7),
      O => CtrlBit_0
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(0),
      Q => counter(0),
      R => CtrlBit_0
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(10),
      Q => counter(10),
      R => CtrlBit_0
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(11),
      Q => counter(11),
      R => CtrlBit_0
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(12),
      Q => counter(12),
      R => CtrlBit_0
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(13),
      Q => counter(13),
      R => CtrlBit_0
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(14),
      Q => counter(14),
      R => CtrlBit_0
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(15),
      Q => counter(15),
      R => CtrlBit_0
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(16),
      Q => counter(16),
      R => CtrlBit_0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(1),
      Q => counter(1),
      R => CtrlBit_0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(2),
      Q => counter(2),
      R => CtrlBit_0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(3),
      Q => counter(3),
      R => CtrlBit_0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(4),
      Q => counter(4),
      R => CtrlBit_0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(5),
      Q => counter(5),
      R => CtrlBit_0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(6),
      Q => counter(6),
      R => CtrlBit_0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(7),
      Q => counter(7),
      R => CtrlBit_0
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(8),
      Q => counter(8),
      R => CtrlBit_0
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => p_1_in(9),
      Q => counter(9),
      R => CtrlBit_0
    );
toggle_signal_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => CtrlBit_i_5_n_0,
      I1 => CtrlBit_i_4_n_0,
      I2 => CtrlBit_i_3_n_0,
      I3 => CtrlBit_i_2_n_0,
      I4 => toggle_signal,
      O => toggle_signal_i_1_n_0
    );
toggle_signal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkIn,
      CE => '1',
      D => toggle_signal_i_1_n_0,
      Q => toggle_signal,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clkIn : in STD_LOGIC;
    CtrlBit : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Task2_Design_Switching_Control_0_0,Switching_Control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Switching_Control,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clkIn : signal is "xilinx.com:signal:clock:1.0 clkIn CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clkIn : signal is "XIL_INTERFACENAME clkIn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Switching_Control
     port map (
      CtrlBit => CtrlBit,
      clkIn => clkIn
    );
end STRUCTURE;
