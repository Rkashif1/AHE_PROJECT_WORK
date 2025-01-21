-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: digilentinc.com:IP:AXI_DPTI:1.1
-- IP Revision: 6

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY AXI_DPTI_0 IS
  PORT (
    prog_clko : IN STD_LOGIC;
    prog_rxen : IN STD_LOGIC;
    prog_txen : IN STD_LOGIC;
    prog_spien : IN STD_LOGIC;
    prog_rdn : OUT STD_LOGIC;
    prog_wrn : OUT STD_LOGIC;
    prog_oen : OUT STD_LOGIC;
    prog_siwun : OUT STD_LOGIC;
    prog_d : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_aclk : IN STD_LOGIC;
    m_axis_aresetn : IN STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_tlast : OUT STD_LOGIC;
    m_axis_tvalid : OUT STD_LOGIC;
    s_axis_aclk : IN STD_LOGIC;
    s_axis_aresetn : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_tlast : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    axi_lite_aclk : IN STD_LOGIC;
    axi_lite_aresetn : IN STD_LOGIC;
    axi_lite_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axi_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axi_lite_awvalid : IN STD_LOGIC;
    axi_lite_awready : OUT STD_LOGIC;
    axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    axi_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axi_lite_wvalid : IN STD_LOGIC;
    axi_lite_wready : OUT STD_LOGIC;
    axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axi_lite_bvalid : OUT STD_LOGIC;
    axi_lite_bready : IN STD_LOGIC;
    axi_lite_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axi_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axi_lite_arvalid : IN STD_LOGIC;
    axi_lite_arready : OUT STD_LOGIC;
    axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axi_lite_rvalid : OUT STD_LOGIC;
    axi_lite_rready : IN STD_LOGIC
  );
END AXI_DPTI_0;

ARCHITECTURE AXI_DPTI_0_arch OF AXI_DPTI_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF AXI_DPTI_0_arch: ARCHITECTURE IS "yes";
  COMPONENT AXI_DPTI_v1_0 IS
    GENERIC (
      C_AXI_LITE_DATA_WIDTH : INTEGER;
      C_AXI_LITE_ADDR_WIDTH : INTEGER
    );
    PORT (
      prog_clko : IN STD_LOGIC;
      prog_rxen : IN STD_LOGIC;
      prog_txen : IN STD_LOGIC;
      prog_spien : IN STD_LOGIC;
      prog_rdn : OUT STD_LOGIC;
      prog_wrn : OUT STD_LOGIC;
      prog_oen : OUT STD_LOGIC;
      prog_siwun : OUT STD_LOGIC;
      prog_d : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axis_aclk : IN STD_LOGIC;
      m_axis_aresetn : IN STD_LOGIC;
      m_axis_tready : IN STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axis_tlast : OUT STD_LOGIC;
      m_axis_tvalid : OUT STD_LOGIC;
      s_axis_aclk : IN STD_LOGIC;
      s_axis_aresetn : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axis_tlast : IN STD_LOGIC;
      s_axis_tvalid : IN STD_LOGIC;
      axi_lite_aclk : IN STD_LOGIC;
      axi_lite_aresetn : IN STD_LOGIC;
      axi_lite_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axi_lite_awvalid : IN STD_LOGIC;
      axi_lite_awready : OUT STD_LOGIC;
      axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      axi_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_lite_wvalid : IN STD_LOGIC;
      axi_lite_wready : OUT STD_LOGIC;
      axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axi_lite_bvalid : OUT STD_LOGIC;
      axi_lite_bready : IN STD_LOGIC;
      axi_lite_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axi_lite_arvalid : IN STD_LOGIC;
      axi_lite_arready : OUT STD_LOGIC;
      axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axi_lite_rvalid : OUT STD_LOGIC;
      axi_lite_rready : IN STD_LOGIC
    );
  END COMPONENT AXI_DPTI_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF AXI_DPTI_0_arch: ARCHITECTURE IS "AXI_DPTI_v1_0,Vivado 2023.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF AXI_DPTI_0_arch : ARCHITECTURE IS "AXI_DPTI_0,AXI_DPTI_v1_0,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_lite_aclk: SIGNAL IS "XIL_INTERFACENAME axi_lite_aclk, ASSOCIATED_RESET axi_lite_aresetn, ASSOCIATED_BUSIF AXI4_Lite, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 axi_lite_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite ARADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_lite_aresetn: SIGNAL IS "XIL_INTERFACENAME axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 axi_lite_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_lite_awaddr: SIGNAL IS "XIL_INTERFACENAME AXI4_Lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSE" & 
"R_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF axi_lite_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI4_Lite WVALID";
BEGIN
  U0 : AXI_DPTI_v1_0
    GENERIC MAP (
      C_AXI_LITE_DATA_WIDTH => 32,
      C_AXI_LITE_ADDR_WIDTH => 4
    )
    PORT MAP (
      prog_clko => prog_clko,
      prog_rxen => prog_rxen,
      prog_txen => prog_txen,
      prog_spien => prog_spien,
      prog_rdn => prog_rdn,
      prog_wrn => prog_wrn,
      prog_oen => prog_oen,
      prog_siwun => prog_siwun,
      prog_d => prog_d,
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tready => m_axis_tready,
      m_axis_tdata => m_axis_tdata,
      m_axis_tkeep => m_axis_tkeep,
      m_axis_tlast => m_axis_tlast,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tready => s_axis_tready,
      s_axis_tdata => s_axis_tdata,
      s_axis_tkeep => s_axis_tkeep,
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      axi_lite_aclk => axi_lite_aclk,
      axi_lite_aresetn => axi_lite_aresetn,
      axi_lite_awaddr => axi_lite_awaddr,
      axi_lite_awprot => axi_lite_awprot,
      axi_lite_awvalid => axi_lite_awvalid,
      axi_lite_awready => axi_lite_awready,
      axi_lite_wdata => axi_lite_wdata,
      axi_lite_wstrb => axi_lite_wstrb,
      axi_lite_wvalid => axi_lite_wvalid,
      axi_lite_wready => axi_lite_wready,
      axi_lite_bresp => axi_lite_bresp,
      axi_lite_bvalid => axi_lite_bvalid,
      axi_lite_bready => axi_lite_bready,
      axi_lite_araddr => axi_lite_araddr,
      axi_lite_arprot => axi_lite_arprot,
      axi_lite_arvalid => axi_lite_arvalid,
      axi_lite_arready => axi_lite_arready,
      axi_lite_rdata => axi_lite_rdata,
      axi_lite_rresp => axi_lite_rresp,
      axi_lite_rvalid => axi_lite_rvalid,
      axi_lite_rready => axi_lite_rready
    );
END AXI_DPTI_0_arch;
