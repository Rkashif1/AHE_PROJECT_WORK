--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2.2 (win64) Build 4126759 Thu Feb  8 23:53:51 MST 2024
--Date        : Wed Nov 20 23:49:32 2024
--Host        : DESKTOP-4ADHA59 running 64-bit major release  (build 9200)
--Command     : generate_target PMOD_IPs_wrapper.bd
--Design      : PMOD_IPs_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PMOD_IPs_wrapper is
  port (
    buttons_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    led_16bits_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end PMOD_IPs_wrapper;

architecture STRUCTURE of PMOD_IPs_wrapper is
  component PMOD_IPs is
  port (
    led_16bits_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    buttons_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component PMOD_IPs;
begin
PMOD_IPs_i: component PMOD_IPs
     port map (
      buttons_tri_i(4 downto 0) => buttons_tri_i(4 downto 0),
      led_16bits_tri_o(15 downto 0) => led_16bits_tri_o(15 downto 0),
      reset => reset,
      sys_clock => sys_clock
    );
end STRUCTURE;
