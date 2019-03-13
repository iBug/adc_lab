// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Dec 14 13:21:01 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vmware/adc_lab/new_demo/new_demo.srcs/sources_1/ip/ip_counter_10/ip_counter_10_sim_netlist.v
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
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_10_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
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
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_10_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
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
NrzTu4X+XtURbFtEsqt0CbsgrgYtgITCo4ju3H+U8HC6bNCmKO93sc7V9M4l7imosfrd8bWvQhgZ
ER6cKbZSAurTb4sWJH7L8KPtAWv30D6NuT65AucEzgS/xletDG2E7Kg8rgjJcvUZ+f3cBz+OCsch
MFsTd/i0A3Cx9TwVeKgKfP9ZwD2kqulz1NQ1griKJNi6/GD3l/TnqCOqt6ri6suVS26RTnFeozTM
EwJNyZ30LD1EXVUai34th+DTaEO4mmcY7I3XwaQOLKwmx2sm78Eb1TDRj75yQ0B1o7ivcT2SXDcz
n0wtEjq6TPr22PLZakiXk+AFGsOLkk8cma21TA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HhIwuOOFxTUhpl8zbBksICNVurenEbD5vtFt9uuBk/3o/VbU15GnOsPDRLF5YHQFtwjErZSKX15l
DiwKiRYzkFtjikcIX/+Qs06zbOLzwf8fIIC9LzCRJKaEtBaXQL4IrUTxSDQFufsdmL/+NGxGDib3
d+Zh83/DxNYvf0pRM1sRW5eRPyRoWbRuEOO0YBiGIvcgODovS/JuR52Y8iXyLcXzY7h1LHKpczM5
7KqvktwwbT5NY/01IuySRStWCJAaJ5Y8NDoc7cJv/GW/NjjnjZww1+Lsd0F1pQXjHYX6QfQ21eiY
MTdruSl8UaDfO4n5KHMgMUKJFO+gL8MthFzasg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6464)
`pragma protect data_block
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
JP9oBDZYIdC73vgXRLt9NHbDF+SpYRg=
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
