// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 16 19:53:13 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vmware/adc_lab/lab9_3_2/lab9_3_2.srcs/sources_1/ip/ip_counter_10/ip_counter_10_sim_netlist.v
// Design      : ip_counter_10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_counter_10,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module ip_counter_10
   (CLK,
    CE,
    LOAD,
    L,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME load_intf, LAYERED_METADATA undef" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME l_intf, LAYERED_METADATA undef" *) input [3:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]L;
  wire LOAD;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "1" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_10_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "1" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1001" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_counter_10_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]L;
  wire LOAD;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "1" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_10_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MIbZEehd9C1xmwHvqfFiD6Im51uAQPbqTFj4jj8ww2MLSMxpJ5omROZlDYuYbRZTvGCYbj4Us7pE
MQ69U7Bkq4+CKpBIl/WlEsvjhYovo3LMNZKJO45YVokieh6C2SV3BnIpqXNKQ9JVmjbuR8fz0ECo
UT1BH5txiMjOe5+4lH0eQ9aHr/VIBV/dbgucXWZMJ57zCwZCXg740ZQMPyF+rKHbEKiA7QsntbFP
3BYwijnLt0WKvUY8htrFLGfPszPbf11zpkrqFr+Xm4tIk/kqp4ZrRyNzgkHgEx+VALOx4IpLTEbD
zYlznuTu6DSeJ3yDWnbMFccA+7Y4FClRcYGTMQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rW5MI/glwwwEs46h1chyK3D9yWICBsmhJa1fBldT4m1yLljmme9y/XuoTe41Ywfd/1loZNkqkS6N
xAK9SjNPKq6Sq+KRvwbFn3wCNuqmoL8ZMI5ixTW5+qVHMBxUrs7HZ+nOzIC2eW3zB2P12m0d/nc0
bHiQyV3h8aDJC2LTyS4AP6rKTIVWNfttcakgX+pwqD3rz37y3mXUgCP5lqEuUuEFbdIUe5bdg5+0
xufhcVddoKFfHh+0uscrB4eTrnxrE0GbltLDpJkQ5NBYxrp+QXdIJD/89AWgl1c9i13ZgV+vQIEc
a/4MZ+v2BdMHcWd5xuIbuL/Y/8jD5T7glEaJJA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7328)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
