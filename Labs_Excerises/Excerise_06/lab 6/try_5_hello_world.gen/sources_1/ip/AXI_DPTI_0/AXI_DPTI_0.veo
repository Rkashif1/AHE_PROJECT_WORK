// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: digilentinc.com:IP:AXI_DPTI:1.1
// IP Revision: 6

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
AXI_DPTI_0 your_instance_name (
  .prog_clko(prog_clko),                // input wire prog_clko
  .prog_rxen(prog_rxen),                // input wire prog_rxen
  .prog_txen(prog_txen),                // input wire prog_txen
  .prog_spien(prog_spien),              // input wire prog_spien
  .prog_rdn(prog_rdn),                  // output wire prog_rdn
  .prog_wrn(prog_wrn),                  // output wire prog_wrn
  .prog_oen(prog_oen),                  // output wire prog_oen
  .prog_siwun(prog_siwun),              // output wire prog_siwun
  .prog_d(prog_d),                      // inout wire [7 : 0] prog_d
  .m_axis_aclk(m_axis_aclk),            // input wire m_axis_aclk
  .m_axis_aresetn(m_axis_aresetn),      // input wire m_axis_aresetn
  .m_axis_tready(m_axis_tready),        // input wire m_axis_tready
  .m_axis_tdata(m_axis_tdata),          // output wire [31 : 0] m_axis_tdata
  .m_axis_tkeep(m_axis_tkeep),          // output wire [3 : 0] m_axis_tkeep
  .m_axis_tlast(m_axis_tlast),          // output wire m_axis_tlast
  .m_axis_tvalid(m_axis_tvalid),        // output wire m_axis_tvalid
  .s_axis_aclk(s_axis_aclk),            // input wire s_axis_aclk
  .s_axis_aresetn(s_axis_aresetn),      // input wire s_axis_aresetn
  .s_axis_tready(s_axis_tready),        // output wire s_axis_tready
  .s_axis_tdata(s_axis_tdata),          // input wire [31 : 0] s_axis_tdata
  .s_axis_tkeep(s_axis_tkeep),          // input wire [3 : 0] s_axis_tkeep
  .s_axis_tlast(s_axis_tlast),          // input wire s_axis_tlast
  .s_axis_tvalid(s_axis_tvalid),        // input wire s_axis_tvalid
  .axi_lite_aclk(axi_lite_aclk),        // input wire axi_lite_aclk
  .axi_lite_aresetn(axi_lite_aresetn),  // input wire axi_lite_aresetn
  .axi_lite_awaddr(axi_lite_awaddr),    // input wire [3 : 0] axi_lite_awaddr
  .axi_lite_awprot(axi_lite_awprot),    // input wire [2 : 0] axi_lite_awprot
  .axi_lite_awvalid(axi_lite_awvalid),  // input wire axi_lite_awvalid
  .axi_lite_awready(axi_lite_awready),  // output wire axi_lite_awready
  .axi_lite_wdata(axi_lite_wdata),      // input wire [31 : 0] axi_lite_wdata
  .axi_lite_wstrb(axi_lite_wstrb),      // input wire [3 : 0] axi_lite_wstrb
  .axi_lite_wvalid(axi_lite_wvalid),    // input wire axi_lite_wvalid
  .axi_lite_wready(axi_lite_wready),    // output wire axi_lite_wready
  .axi_lite_bresp(axi_lite_bresp),      // output wire [1 : 0] axi_lite_bresp
  .axi_lite_bvalid(axi_lite_bvalid),    // output wire axi_lite_bvalid
  .axi_lite_bready(axi_lite_bready),    // input wire axi_lite_bready
  .axi_lite_araddr(axi_lite_araddr),    // input wire [3 : 0] axi_lite_araddr
  .axi_lite_arprot(axi_lite_arprot),    // input wire [2 : 0] axi_lite_arprot
  .axi_lite_arvalid(axi_lite_arvalid),  // input wire axi_lite_arvalid
  .axi_lite_arready(axi_lite_arready),  // output wire axi_lite_arready
  .axi_lite_rdata(axi_lite_rdata),      // output wire [31 : 0] axi_lite_rdata
  .axi_lite_rresp(axi_lite_rresp),      // output wire [1 : 0] axi_lite_rresp
  .axi_lite_rvalid(axi_lite_rvalid),    // output wire axi_lite_rvalid
  .axi_lite_rready(axi_lite_rready)    // input wire axi_lite_rready
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

