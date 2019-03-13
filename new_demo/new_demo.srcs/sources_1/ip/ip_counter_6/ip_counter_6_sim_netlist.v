// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Dec 14 13:19:27 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vmware/adc_lab/new_demo/new_demo.srcs/sources_1/ip/ip_counter_6/ip_counter_6_sim_netlist.v
// Design      : ip_counter_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_counter_6,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module ip_counter_6
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
  (* c_count_to = "101" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "101" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_6_c_counter_binary_v12_0_12 U0
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
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "101" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "101" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_counter_6_c_counter_binary_v12_0_12
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
  (* c_count_to = "101" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "101" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_6_c_counter_binary_v12_0_12_viv i_synth
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
LbEg1caVpvO71bXlUyrLlHOlTMJFLBPaVEOu3L5WgGOkO5QfStq5OsKSrv0nD6pIVEzjDkCcDpj1
OT3ebaUAdRm3cTFopVHiHhWtjyyU1gk+Ys9K6Ah3NjL1Qxksj92Nxw4g0KjF9SXd5o6j9GjQ1kx0
4cylVQVYpJQLR8LQq07FXygKl0aCKOgFbL0HTiUoeK22m+0xGGrOQ+ojCnH5DnoKc2niSFDzy90j
I1lGHGEmTJM5FInCGr3IPQm5kgWqA1dh9+k6tmktzUEtWWSk9Sfm9jFALVlULZqUv5Q6vDy2+jXq
qo8A1m89eDy9Jh/q1TG96BileStuZNqDn4D8yw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vie3ymwQsIBYcW87eHKG61yQGjqlXBKEL3DNXDbHdS8doMfILz4IqpiXO8W/LATYOBZKI8DQAA31
7lKdOltoMF+n5Vk9abya3R3xwn5IhpR8EqH5FvEe1UKdqoQ0cpxX6eLmLTC3pQcFlvLagz/J2y1G
MgoDUMzjKV8PGjZJPBLNuVLX+NczQnwbOwxy7H1RfRLiv/o6bitgBn/Sbul1eyq+vowYB24ejr67
eOu2flzKdhoW9ZsWYH7jsxA27osNqqOY6o8Nog11qjAC5OeOqmuJq1YHACPtf+uZpRXDEkavkWof
fFsYMKYluF/NLZ0oNg6HzIQYV8ooFEEOE3q88A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6448)
`pragma protect data_block
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
EQH7RaWxrA==
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
