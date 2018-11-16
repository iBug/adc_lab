// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 16 22:29:31 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/vmware/adc_lab/lab9_3_3/lab9_3_3.srcs/sources_1/ip/clk_5MHz/clk_5MHz_stub.v
// Design      : clk_5MHz
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_5MHz(CLK5MHZ, CLK100MHZ)
/* synthesis syn_black_box black_box_pad_pin="CLK5MHZ,CLK100MHZ" */;
  output CLK5MHZ;
  input CLK100MHZ;
endmodule
