-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sun Nov 18 12:22:06 2018
-- Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/vmware/adc_lab/lab11_2/lab11_2.srcs/sources_1/ip/ip_clock/ip_clock_stub.vhdl
-- Design      : ip_clock
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ip_clock is
  Port ( 
    clk_5MHz : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC
  );

end ip_clock;

architecture stub of ip_clock is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_5MHz,clk_100MHz";
begin
end;
