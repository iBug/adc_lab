set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { T }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { reset_n }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L21P_T3_DQS_14 Sch=sw[15]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets { clk }];

set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { Q }]; #IO_L18P_T2_A24_15 Sch=led[0]
