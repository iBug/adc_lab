-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Nov 16 22:29:31 2018
-- Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/vmware/adc_lab/lab9_3_3/lab9_3_3.srcs/sources_1/ip/clk_5MHz/clk_5MHz_stub.vhdl
-- Design      : clk_5MHz
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_5MHz is
  Port ( 
    CLK5MHZ : out STD_LOGIC;
    CLK100MHZ : in STD_LOGIC
  );

end clk_5MHz;

architecture stub of clk_5MHz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK5MHZ,CLK100MHZ";
begin
end;
