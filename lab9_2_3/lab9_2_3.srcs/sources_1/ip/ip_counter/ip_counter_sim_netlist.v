// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 16 19:16:53 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vmware/adc_lab/lab9_2_3/lab9_2_3.srcs/sources_1/ip/ip_counter/ip_counter_sim_netlist.v
// Design      : ip_counter
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_counter,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module ip_counter
   (CLK,
    CE,
    SCLR,
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

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
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_counter_c_counter_binary_v12_0_12
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
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
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
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
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
Zv6CN6dD2ikhABIFJ+pw7OyLRx8NNIycRBThLxvmL10fYCKDWG4D0pmAfdzgxwg8OjCSGPRBmmEU
yXIMvha663v0suS9FTVtDHFFJJIS1Gtj4crWRCnXqCMHuaZrAtRmndBVz2/R0j39O7AVSsSW5skE
W6RQhGNEUwyZT413XkxUpkPwCCDPIUBMJ0veSsW2hXRItlHHUS27z94ALnDva2ynu2D2209CyDXf
gQoq5ntnKsTTNYUZ20kzImvDGHRO4Gkk0DYMl0S+0vv/8am+a3PTiuQ0W2X4GFZdI5l1tYnLZUnP
Fa/UopMWlNVAUJTojyuBKTWSJES7mFJ6DffNDg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0c61x7FQZpkDHhpNGsB/CKP/cX7uDCt1mrBsDUvY3l64Ps8ktAay9mV+W5vn9iFXGRniRjSXSMYB
fxfm9SoPTSQ1OrYSdzU9VnQZvMWF92PdA9RuasnL0ITV9XnFDqqLcfEmmuFPj6KpoLDmgegFKrDg
biHTCZ3uY0zlOy6LfOtV+yCxH+9WctckJ39ZYgRcJzDU/1voFZERyJIIBp4yVoXbc7oZ18HHznTy
P8hadrrmolEK8tAELH/riC1g544DlYkG9sod1cxntlPpFBVGYzOJWeFj8GYJJUnAMMmTbrqXOmrQ
Da7pa2Ll1iVV0YG7PVVLTxRZyzbdjjn4sTdekw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10512)
`pragma protect data_block
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
11Szs7u+OG2v9Y032L5xgkoo4Ja7PAz5
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
