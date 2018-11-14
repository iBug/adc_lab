// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Nov 14 20:09:54 2018
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
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
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
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
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
Xc7fJ9Fl4f1YI1AHVqhDmHbh7QwSI2sxF+tgl97mJQ2YKwlTl3aUdI/m8w1p0fUXqOdPootJXiuN
+KFxxjwUe9U6uaOu4o7hQ4ccx/HICLKEzasufbB8rRytveE+UmaoKncXsgVhsgoKsR/EPdCpZVYW
hlTbWTrsvCE8yoxuc7USBXW0lr5Gni+2Wr16QQsKOAhSJm/9FM4o4Xg2ODyGFjSF2OcUw0/0luGn
h26i4f0P8tG/KiQQfe70YL0Gk7pLa4+ZFuseX+cwSsX5PmDNcNwW93Mgz5nxL26v+nIDv+HxZbcM
4aUvbiRZh9m4NdxHsj4J8YNZQkWUUEt5FdnkKA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iLR6uA5iPCRfuMyEsOfvbLQJgVt2wu7/vMfdM1o+IYbOjLmhcjFKT1hLhGujKXQbtQmDpk/qV6Zu
50gu8V96zaHUAlTlzfbBNFnBZjyinWmqS7DCsumO6/2LtzzBm7oZLRm6Cus6u2zD+s2CYbmvfgDc
7hsxMUPknu76guB8ZRr//nkKpATEevkhl137YtjmG7HxMdou1J6nRKcF6BtDKm9HonotgOkNPI+7
rdUercU16ctvY1j5hmFjcx4Xgt9+kEGoJNwSRHDr5KbjFu1RP01GjTQxBCL/uBpIj4gq/v/9pOjE
Uruue6QjdREAc5UIaES1O1wCCmayAPnnR5KGtw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5680)
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
