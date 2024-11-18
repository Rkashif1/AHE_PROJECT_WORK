-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Nov 17 16:12:17 2024
-- Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FullAdder/Task2_BCD_Segments/Task2_BCD_Segments.gen/sources_1/bd/Task2_Design/ip/Task2_Design_FourBitAdder_0_0/Task2_Design_FourBitAdder_0_0_sim_netlist.vhdl
-- Design      : Task2_Design_FourBitAdder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0 : entity is "FourBitAdder_OneBitAdder_0_0,OneBitAdder,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0 : entity is "FourBitAdder_OneBitAdder_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0 : entity is "OneBitAdder,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cout_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Sum_INST_0 : label is "soft_lutpair0";
begin
Cout_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A,
      I1 => B,
      O => Cout
    );
Sum_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B,
      I1 => A,
      O => Sum
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlconcat_0_0 : entity is "FourBitAdder_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlconcat_0_0 : entity is "FourBitAdder_xlconcat_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlconcat_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlconcat_0_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_xlconcat_0_0;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlconcat_0_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in4\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(0) <= In1(0);
  \^in2\(0) <= In2(0);
  \^in3\(0) <= In3(0);
  \^in4\(0) <= In4(0);
  dout(4) <= \^in4\(0);
  dout(3) <= \^in3\(0);
  dout(2) <= \^in2\(0);
  dout(1) <= \^in1\(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_0 : entity is "FourBitAdder_xlslice_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_0 : entity is "FourBitAdder_xlslice_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_0;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_1 : entity is "FourBitAdder_xlslice_0_1,xlslice_v1_0_2_xlslice,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_1 : entity is "FourBitAdder_xlslice_0_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_1 : entity is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_1;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_1 is
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_2 : entity is "FourBitAdder_xlslice_0_2,xlslice_v1_0_2_xlslice,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_2 : entity is "FourBitAdder_xlslice_0_2";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_2 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_2 : entity is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_2;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_2 is
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Dout(0) <= \^din\(2);
  \^din\(2) <= Din(2);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_3 : entity is "FourBitAdder_xlslice_0_3,xlslice_v1_0_2_xlslice,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_3 : entity is "FourBitAdder_xlslice_0_3";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_3 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_3 : entity is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_3;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_3 is
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Dout(0) <= \^din\(3);
  \^din\(3) <= Din(3);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_4 : entity is "FourBitAdder_xlslice_0_4,xlslice_v1_0_2_xlslice,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_4 : entity is "FourBitAdder_xlslice_0_4";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_4 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_4 : entity is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_4;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_4 is
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_1_0 : entity is "FourBitAdder_xlslice_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_1_0 : entity is "FourBitAdder_xlslice_1_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_1_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_1_0;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_1_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_2_0 : entity is "FourBitAdder_xlslice_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_2_0 : entity is "FourBitAdder_xlslice_2_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_2_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_2_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_2_0;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_2_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Dout(0) <= \^din\(2);
  \^din\(2) <= Din(2);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_3_0 : entity is "FourBitAdder_xlslice_3_0,xlslice_v1_0_2_xlslice,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_3_0 : entity is "FourBitAdder_xlslice_3_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_3_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_3_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_3_0;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_3_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Dout(0) <= \^din\(3);
  \^din\(3) <= Din(3);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_OneBitAdder is
  port (
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC;
    A : in STD_LOGIC;
    Cin : in STD_LOGIC;
    B : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_OneBitAdder : entity is "OneBitAdder";
end Task2_Design_FourBitAdder_0_0_OneBitAdder;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_OneBitAdder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cout_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of Sum_INST_0 : label is "soft_lutpair3";
begin
Cout_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => A,
      I1 => Cin,
      I2 => B,
      O => Cout
    );
Sum_INST_0: unisim.vcomponents.LUT3
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
entity Task2_Design_FourBitAdder_0_0_OneBitAdder_0 is
  port (
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC;
    A : in STD_LOGIC;
    Cin : in STD_LOGIC;
    B : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_OneBitAdder_0 : entity is "OneBitAdder";
end Task2_Design_FourBitAdder_0_0_OneBitAdder_0;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_OneBitAdder_0 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cout_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Sum_INST_0 : label is "soft_lutpair2";
begin
Cout_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => A,
      I1 => Cin,
      I2 => B,
      O => Cout
    );
Sum_INST_0: unisim.vcomponents.LUT3
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
entity Task2_Design_FourBitAdder_0_0_OneBitAdder_1 is
  port (
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC;
    A : in STD_LOGIC;
    Cin : in STD_LOGIC;
    B : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_OneBitAdder_1 : entity is "OneBitAdder";
end Task2_Design_FourBitAdder_0_0_OneBitAdder_1;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_OneBitAdder_1 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cout_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Sum_INST_0 : label is "soft_lutpair1";
begin
Cout_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => A,
      I1 => Cin,
      I2 => B,
      O => Cout
    );
Sum_INST_0: unisim.vcomponents.LUT3
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
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1 : entity is "FourBitAdder_OneBitAdder_0_1,OneBitAdder,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1 : entity is "FourBitAdder_OneBitAdder_0_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1 : entity is "OneBitAdder,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1 is
begin
U0: entity work.Task2_Design_FourBitAdder_0_0_OneBitAdder_1
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      Sum => Sum
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2 : entity is "FourBitAdder_OneBitAdder_0_2,OneBitAdder,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2 : entity is "FourBitAdder_OneBitAdder_0_2";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2 : entity is "OneBitAdder,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2 is
begin
U0: entity work.Task2_Design_FourBitAdder_0_0_OneBitAdder_0
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      Sum => Sum
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    Sum : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3 : entity is "FourBitAdder_OneBitAdder_0_3,OneBitAdder,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3 : entity is "FourBitAdder_OneBitAdder_0_3";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3 : entity is "OneBitAdder,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3 is
begin
U0: entity work.Task2_Design_FourBitAdder_0_0_OneBitAdder
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      Sum => Sum
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0_FourBitAdder is
  port (
    InputA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InputB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SumOut : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Task2_Design_FourBitAdder_0_0_FourBitAdder : entity is "FourBitAdder";
  attribute hw_handoff : string;
  attribute hw_handoff of Task2_Design_FourBitAdder_0_0_FourBitAdder : entity is "FourBitAdder.hwdef";
end Task2_Design_FourBitAdder_0_0_FourBitAdder;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0_FourBitAdder is
  signal OneBitAdder_0_Cout : STD_LOGIC;
  signal OneBitAdder_0_Sum : STD_LOGIC;
  signal OneBitAdder_1_Cout : STD_LOGIC;
  signal OneBitAdder_1_Sum : STD_LOGIC;
  signal OneBitAdder_2_Cout : STD_LOGIC;
  signal OneBitAdder_2_Sum : STD_LOGIC;
  signal OneBitAdder_3_Cout : STD_LOGIC;
  signal OneBitAdder_3_Sum : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC;
  signal xlslice_1_Dout : STD_LOGIC;
  signal xlslice_2_Dout : STD_LOGIC;
  signal xlslice_3_Dout : STD_LOGIC;
  signal xlslice_4_Dout : STD_LOGIC;
  signal xlslice_5_Dout : STD_LOGIC;
  signal xlslice_6_Dout : STD_LOGIC;
  signal xlslice_7_Dout : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of OneBitAdder_0 : label is "FourBitAdder_OneBitAdder_0_0,OneBitAdder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of OneBitAdder_0 : label is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of OneBitAdder_0 : label is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of OneBitAdder_0 : label is "OneBitAdder,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of OneBitAdder_1 : label is "FourBitAdder_OneBitAdder_0_1,OneBitAdder,{}";
  attribute downgradeipidentifiedwarnings of OneBitAdder_1 : label is "yes";
  attribute ip_definition_source of OneBitAdder_1 : label is "package_project";
  attribute x_core_info of OneBitAdder_1 : label is "OneBitAdder,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of OneBitAdder_2 : label is "FourBitAdder_OneBitAdder_0_2,OneBitAdder,{}";
  attribute downgradeipidentifiedwarnings of OneBitAdder_2 : label is "yes";
  attribute ip_definition_source of OneBitAdder_2 : label is "package_project";
  attribute x_core_info of OneBitAdder_2 : label is "OneBitAdder,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of OneBitAdder_3 : label is "FourBitAdder_OneBitAdder_0_3,OneBitAdder,{}";
  attribute downgradeipidentifiedwarnings of OneBitAdder_3 : label is "yes";
  attribute ip_definition_source of OneBitAdder_3 : label is "package_project";
  attribute x_core_info of OneBitAdder_3 : label is "OneBitAdder,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of xlconcat_0 : label is "FourBitAdder_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute downgradeipidentifiedwarnings of xlconcat_0 : label is "yes";
  attribute x_core_info of xlconcat_0 : label is "xlconcat_v2_1_4_xlconcat,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of xlslice_0 : label is "FourBitAdder_xlslice_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_0 : label is "yes";
  attribute x_core_info of xlslice_0 : label is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of xlslice_1 : label is "FourBitAdder_xlslice_0_1,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_1 : label is "yes";
  attribute x_core_info of xlslice_1 : label is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of xlslice_2 : label is "FourBitAdder_xlslice_0_2,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_2 : label is "yes";
  attribute x_core_info of xlslice_2 : label is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of xlslice_3 : label is "FourBitAdder_xlslice_0_3,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_3 : label is "yes";
  attribute x_core_info of xlslice_3 : label is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of xlslice_4 : label is "FourBitAdder_xlslice_0_4,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_4 : label is "yes";
  attribute x_core_info of xlslice_4 : label is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of xlslice_5 : label is "FourBitAdder_xlslice_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_5 : label is "yes";
  attribute x_core_info of xlslice_5 : label is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of xlslice_6 : label is "FourBitAdder_xlslice_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_6 : label is "yes";
  attribute x_core_info of xlslice_6 : label is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of xlslice_7 : label is "FourBitAdder_xlslice_3_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_7 : label is "yes";
  attribute x_core_info of xlslice_7 : label is "xlslice_v1_0_2_xlslice,Vivado 2023.1";
begin
OneBitAdder_0: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_0
     port map (
      A => xlslice_0_Dout,
      B => xlslice_4_Dout,
      Cin => '0',
      Cout => OneBitAdder_0_Cout,
      Sum => OneBitAdder_0_Sum
    );
OneBitAdder_1: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_1
     port map (
      A => xlslice_1_Dout,
      B => xlslice_5_Dout,
      Cin => OneBitAdder_0_Cout,
      Cout => OneBitAdder_1_Cout,
      Sum => OneBitAdder_1_Sum
    );
OneBitAdder_2: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_2
     port map (
      A => xlslice_2_Dout,
      B => xlslice_6_Dout,
      Cin => OneBitAdder_1_Cout,
      Cout => OneBitAdder_2_Cout,
      Sum => OneBitAdder_2_Sum
    );
OneBitAdder_3: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_OneBitAdder_0_3
     port map (
      A => xlslice_3_Dout,
      B => xlslice_7_Dout,
      Cin => OneBitAdder_2_Cout,
      Cout => OneBitAdder_3_Cout,
      Sum => OneBitAdder_3_Sum
    );
xlconcat_0: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_xlconcat_0_0
     port map (
      In0(0) => OneBitAdder_0_Sum,
      In1(0) => OneBitAdder_1_Sum,
      In2(0) => OneBitAdder_2_Sum,
      In3(0) => OneBitAdder_3_Sum,
      In4(0) => OneBitAdder_3_Cout,
      dout(4 downto 0) => SumOut(4 downto 0)
    );
xlslice_0: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_0
     port map (
      Din(3 downto 1) => B"000",
      Din(0) => InputA(0),
      Dout(0) => xlslice_0_Dout
    );
xlslice_1: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_1
     port map (
      Din(3 downto 2) => B"00",
      Din(1) => InputA(1),
      Din(0) => '0',
      Dout(0) => xlslice_1_Dout
    );
xlslice_2: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_2
     port map (
      Din(3) => '0',
      Din(2) => InputA(2),
      Din(1 downto 0) => B"00",
      Dout(0) => xlslice_2_Dout
    );
xlslice_3: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_3
     port map (
      Din(3) => InputA(3),
      Din(2 downto 0) => B"000",
      Dout(0) => xlslice_3_Dout
    );
xlslice_4: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_0_4
     port map (
      Din(3 downto 1) => B"000",
      Din(0) => InputB(0),
      Dout(0) => xlslice_4_Dout
    );
xlslice_5: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_1_0
     port map (
      Din(3 downto 2) => B"00",
      Din(1) => InputB(1),
      Din(0) => '0',
      Dout(0) => xlslice_5_Dout
    );
xlslice_6: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_2_0
     port map (
      Din(3) => '0',
      Din(2) => InputB(2),
      Din(1 downto 0) => B"00",
      Dout(0) => xlslice_6_Dout
    );
xlslice_7: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder_xlslice_3_0
     port map (
      Din(3) => InputB(3),
      Din(2 downto 0) => B"000",
      Dout(0) => xlslice_7_Dout
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Task2_Design_FourBitAdder_0_0 is
  port (
    InputA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InputB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SumOut : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Task2_Design_FourBitAdder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Task2_Design_FourBitAdder_0_0 : entity is "Task2_Design_FourBitAdder_0_0,FourBitAdder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Task2_Design_FourBitAdder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Task2_Design_FourBitAdder_0_0 : entity is "IPI";
  attribute x_core_info : string;
  attribute x_core_info of Task2_Design_FourBitAdder_0_0 : entity is "FourBitAdder,Vivado 2023.1";
end Task2_Design_FourBitAdder_0_0;

architecture STRUCTURE of Task2_Design_FourBitAdder_0_0 is
  attribute hw_handoff : string;
  attribute hw_handoff of U0 : label is "FourBitAdder.hwdef";
begin
U0: entity work.Task2_Design_FourBitAdder_0_0_FourBitAdder
     port map (
      InputA(3 downto 0) => InputA(3 downto 0),
      InputB(3 downto 0) => InputB(3 downto 0),
      SumOut(4 downto 0) => SumOut(4 downto 0)
    );
end STRUCTURE;
