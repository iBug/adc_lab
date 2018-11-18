// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Nov 18 12:22:05 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/vmware/adc_lab/lab11_2/lab11_2.srcs/sources_1/ip/ip_clock/ip_clock_stub.v
// Design      : ip_clock
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ip_clock(clk_5MHz, clk_100MHz)
/* synthesis syn_black_box black_box_pad_pin="clk_5MHz,clk_100MHz" */;
  output clk_5MHz;
  input clk_100MHz;
endmodule
