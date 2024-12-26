-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Dec 18 15:49:47 2024
-- Host        : HSHL2NBIBL050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Hardware_Project_2024/FinalProject_Hardware/FinalProject_Hardware.gen/sources_1/bd/Hardware_final/ip/Hardware_final_PmodBLE_0_0/Hardware_final_PmodBLE_0_0_stub.vhdl
-- Design      : Hardware_final_PmodBLE_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Hardware_final_PmodBLE_0_0 is
  Port ( 
    Pmod_out_pin10_i : in STD_LOGIC;
    Pmod_out_pin10_o : out STD_LOGIC;
    Pmod_out_pin10_t : out STD_LOGIC;
    Pmod_out_pin1_i : in STD_LOGIC;
    Pmod_out_pin1_o : out STD_LOGIC;
    Pmod_out_pin1_t : out STD_LOGIC;
    Pmod_out_pin2_i : in STD_LOGIC;
    Pmod_out_pin2_o : out STD_LOGIC;
    Pmod_out_pin2_t : out STD_LOGIC;
    Pmod_out_pin3_i : in STD_LOGIC;
    Pmod_out_pin3_o : out STD_LOGIC;
    Pmod_out_pin3_t : out STD_LOGIC;
    Pmod_out_pin4_i : in STD_LOGIC;
    Pmod_out_pin4_o : out STD_LOGIC;
    Pmod_out_pin4_t : out STD_LOGIC;
    Pmod_out_pin7_i : in STD_LOGIC;
    Pmod_out_pin7_o : out STD_LOGIC;
    Pmod_out_pin7_t : out STD_LOGIC;
    Pmod_out_pin8_i : in STD_LOGIC;
    Pmod_out_pin8_o : out STD_LOGIC;
    Pmod_out_pin8_t : out STD_LOGIC;
    Pmod_out_pin9_i : in STD_LOGIC;
    Pmod_out_pin9_o : out STD_LOGIC;
    Pmod_out_pin9_t : out STD_LOGIC;
    S_AXI_GPIO_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_GPIO_arready : out STD_LOGIC;
    S_AXI_GPIO_arvalid : in STD_LOGIC;
    S_AXI_GPIO_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_GPIO_awready : out STD_LOGIC;
    S_AXI_GPIO_awvalid : in STD_LOGIC;
    S_AXI_GPIO_bready : in STD_LOGIC;
    S_AXI_GPIO_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GPIO_bvalid : out STD_LOGIC;
    S_AXI_GPIO_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GPIO_rready : in STD_LOGIC;
    S_AXI_GPIO_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GPIO_rvalid : out STD_LOGIC;
    S_AXI_GPIO_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GPIO_wready : out STD_LOGIC;
    S_AXI_GPIO_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GPIO_wvalid : in STD_LOGIC;
    S_AXI_UART_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_UART_arready : out STD_LOGIC;
    S_AXI_UART_arvalid : in STD_LOGIC;
    S_AXI_UART_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_UART_awready : out STD_LOGIC;
    S_AXI_UART_awvalid : in STD_LOGIC;
    S_AXI_UART_bready : in STD_LOGIC;
    S_AXI_UART_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_UART_bvalid : out STD_LOGIC;
    S_AXI_UART_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_UART_rready : in STD_LOGIC;
    S_AXI_UART_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_UART_rvalid : out STD_LOGIC;
    S_AXI_UART_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_UART_wready : out STD_LOGIC;
    S_AXI_UART_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_UART_wvalid : in STD_LOGIC;
    BLE_uart_interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );

end Hardware_final_PmodBLE_0_0;

architecture stub of Hardware_final_PmodBLE_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Pmod_out_pin10_i,Pmod_out_pin10_o,Pmod_out_pin10_t,Pmod_out_pin1_i,Pmod_out_pin1_o,Pmod_out_pin1_t,Pmod_out_pin2_i,Pmod_out_pin2_o,Pmod_out_pin2_t,Pmod_out_pin3_i,Pmod_out_pin3_o,Pmod_out_pin3_t,Pmod_out_pin4_i,Pmod_out_pin4_o,Pmod_out_pin4_t,Pmod_out_pin7_i,Pmod_out_pin7_o,Pmod_out_pin7_t,Pmod_out_pin8_i,Pmod_out_pin8_o,Pmod_out_pin8_t,Pmod_out_pin9_i,Pmod_out_pin9_o,Pmod_out_pin9_t,S_AXI_GPIO_araddr[8:0],S_AXI_GPIO_arready,S_AXI_GPIO_arvalid,S_AXI_GPIO_awaddr[8:0],S_AXI_GPIO_awready,S_AXI_GPIO_awvalid,S_AXI_GPIO_bready,S_AXI_GPIO_bresp[1:0],S_AXI_GPIO_bvalid,S_AXI_GPIO_rdata[31:0],S_AXI_GPIO_rready,S_AXI_GPIO_rresp[1:0],S_AXI_GPIO_rvalid,S_AXI_GPIO_wdata[31:0],S_AXI_GPIO_wready,S_AXI_GPIO_wstrb[3:0],S_AXI_GPIO_wvalid,S_AXI_UART_araddr[12:0],S_AXI_UART_arready,S_AXI_UART_arvalid,S_AXI_UART_awaddr[12:0],S_AXI_UART_awready,S_AXI_UART_awvalid,S_AXI_UART_bready,S_AXI_UART_bresp[1:0],S_AXI_UART_bvalid,S_AXI_UART_rdata[31:0],S_AXI_UART_rready,S_AXI_UART_rresp[1:0],S_AXI_UART_rvalid,S_AXI_UART_wdata[31:0],S_AXI_UART_wready,S_AXI_UART_wstrb[3:0],S_AXI_UART_wvalid,BLE_uart_interrupt,s_axi_aclk,s_axi_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "PmodBLE,Vivado 2022.1";
begin
end;
