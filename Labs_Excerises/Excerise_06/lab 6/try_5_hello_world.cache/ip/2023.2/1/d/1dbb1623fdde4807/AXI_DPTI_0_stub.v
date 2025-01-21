// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Jan 19 17:53:51 2025
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AXI_DPTI_0_stub.v
// Design      : AXI_DPTI_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI_DPTI_v1_0,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(prog_clko, prog_rxen, prog_txen, prog_spien, 
  prog_rdn, prog_wrn, prog_oen, prog_siwun, prog_d, m_axis_aclk, m_axis_aresetn, m_axis_tready, 
  m_axis_tdata, m_axis_tkeep, m_axis_tlast, m_axis_tvalid, s_axis_aclk, s_axis_aresetn, 
  s_axis_tready, s_axis_tdata, s_axis_tkeep, s_axis_tlast, s_axis_tvalid, axi_lite_aclk, 
  axi_lite_aresetn, axi_lite_awaddr, axi_lite_awprot, axi_lite_awvalid, axi_lite_awready, 
  axi_lite_wdata, axi_lite_wstrb, axi_lite_wvalid, axi_lite_wready, axi_lite_bresp, 
  axi_lite_bvalid, axi_lite_bready, axi_lite_araddr, axi_lite_arprot, axi_lite_arvalid, 
  axi_lite_arready, axi_lite_rdata, axi_lite_rresp, axi_lite_rvalid, axi_lite_rready)
/* synthesis syn_black_box black_box_pad_pin="prog_rxen,prog_txen,prog_spien,prog_rdn,prog_wrn,prog_oen,prog_siwun,prog_d[7:0],m_axis_aresetn,m_axis_tready,m_axis_tdata[31:0],m_axis_tkeep[3:0],m_axis_tlast,m_axis_tvalid,s_axis_aresetn,s_axis_tready,s_axis_tdata[31:0],s_axis_tkeep[3:0],s_axis_tlast,s_axis_tvalid,axi_lite_aresetn,axi_lite_awaddr[3:0],axi_lite_awprot[2:0],axi_lite_awvalid,axi_lite_awready,axi_lite_wdata[31:0],axi_lite_wstrb[3:0],axi_lite_wvalid,axi_lite_wready,axi_lite_bresp[1:0],axi_lite_bvalid,axi_lite_bready,axi_lite_araddr[3:0],axi_lite_arprot[2:0],axi_lite_arvalid,axi_lite_arready,axi_lite_rdata[31:0],axi_lite_rresp[1:0],axi_lite_rvalid,axi_lite_rready" */
/* synthesis syn_force_seq_prim="prog_clko" */
/* synthesis syn_force_seq_prim="m_axis_aclk" */
/* synthesis syn_force_seq_prim="s_axis_aclk" */
/* synthesis syn_force_seq_prim="axi_lite_aclk" */;
  input prog_clko /* synthesis syn_isclock = 1 */;
  input prog_rxen;
  input prog_txen;
  input prog_spien;
  output prog_rdn;
  output prog_wrn;
  output prog_oen;
  output prog_siwun;
  inout [7:0]prog_d;
  input m_axis_aclk /* synthesis syn_isclock = 1 */;
  input m_axis_aresetn;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output m_axis_tvalid;
  input s_axis_aclk /* synthesis syn_isclock = 1 */;
  input s_axis_aresetn;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input s_axis_tvalid;
  input axi_lite_aclk /* synthesis syn_isclock = 1 */;
  input axi_lite_aresetn;
  input [3:0]axi_lite_awaddr;
  input [2:0]axi_lite_awprot;
  input axi_lite_awvalid;
  output axi_lite_awready;
  input [31:0]axi_lite_wdata;
  input [3:0]axi_lite_wstrb;
  input axi_lite_wvalid;
  output axi_lite_wready;
  output [1:0]axi_lite_bresp;
  output axi_lite_bvalid;
  input axi_lite_bready;
  input [3:0]axi_lite_araddr;
  input [2:0]axi_lite_arprot;
  input axi_lite_arvalid;
  output axi_lite_arready;
  output [31:0]axi_lite_rdata;
  output [1:0]axi_lite_rresp;
  output axi_lite_rvalid;
  input axi_lite_rready;
endmodule
