// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Nov  8 09:11:09 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vmware/adc_lab/lab8_2_1/lab8_2_1.srcs/sources_1/ip/counter_4b/counter_4b_sim_netlist.v
// Design      : counter_4b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "counter_4b,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module counter_4b
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
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
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_4b_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
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
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1001" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module counter_4b_c_counter_binary_v12_0_12
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

  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
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
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_4b_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
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
Aj/M0OvbUjtvx5+oDgCbzen7M+7QGLqIODmm2ejsUbqrLIMquhHnW164QZIVmzhVu7BT3xwc15eB
F3b3beiuUnf8lY6faCvdlJP/Tp9MMdQt/OfpqHYnZlzd3MRPEJpoggJnPlvJmXYRczurCMM8Bq4X
R/iFuk7a8SeG1UvmZhZPGv+SE3wGVdNPUVnKP8kgBKBAijG2u2as25nn0RsNg/7Z2HxwaenjMZ16
zBDgNCSyTh1aZtlzZdnAk5jdiab47wnR2rVnxa1RYK1Gu4Uqo1fLFLNGZz65/JMKzxjAOhvUA3q2
gWb75Z6TXuu4c4ajg9YAfqujZjCY1Qnv0ZA8DQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WOJIIcvSfercUdPKps8HsVwaGGVbZrXzReBM5txKM8aOTs51V4QcJelyEZZW5BiBIxXwNXSdljM2
J3AfiKRXglOAp1DX2pkqp/rLsYLSXq3utpbfjKG3AqU3ZmZELYK6gY0gZhq9+Z916NOlCxiimrw4
3gvgg5tSjv93XVRujcvn7LZVK+nH8f+QAw6RPaCarttGt6gp/Srtvd1rmx2InB2nRuqaXbJXkNj4
yHxJ4uhgLPeQZvl37SxBp2Y0mmJrC751mPuXsUGy9JrPLPQiUyAAQAqubSKs9Ksa7c3d4WskeEOS
2kj2qRzZW9JzQ1IGNw9wo1sgFh7lNmOM29uyag==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4832)
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
