// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 16 19:59:45 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vmware/adc_lab/lab9_3_2/lab9_3_2.srcs/sources_1/ip/ip_counter_6/ip_counter_6_sim_netlist.v
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
  (* c_count_to = "101" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "101" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_6_c_counter_binary_v12_0_12 U0
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
(* C_COUNT_MODE = "1" *) (* C_COUNT_TO = "101" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "0" *) 
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
  (* c_count_to = "101" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "101" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_6_c_counter_binary_v12_0_12_viv i_synth
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
DAgLSHw6GauId5ZY/QANR1ANfXiuLnnn+L6DJlmb+tgnuse3V6GwCGk9Aboxvxz/98ZyR6iD6URR
ZqrAkMQNXB3dxnjksfFQILZeUapXetRX1Wdsom4+aGHguSTRT+9WIhZquDuwdPUntRlwDR0z8pWg
zk0jvnoyXoMvR8ZdW++hyCCrirnKXa8tA7hD2oGXyiTepl9I4qvrnPkdKEn3KZ3usdAnweJHw7sG
roepD7ZPEWw23sIQeYCAz2sUFr/Ah7+UIWwnRoZmFjBM7ok5lNlUKil9NDSFltVatZllK6aI63CG
U35XLASVXc/jRjyG+5W0o5nDFFwyjWaz3gNTHA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iDg9qEE5JJE3iznJUNlym5m1Xak2EZgSfcPoVB4f/Ble55dviPuXCOIur3t42rA2tfa+qiTsFsUR
JWJMgzgAnKCMgm8D1y7qJR3wDDxTS8S0uRI6b7Y1OuMH7t3ujYaKYunlQ5RE8u028KmFHda37gIQ
+U31jzzPL+pBRV+yc6EWD8lSTgtCnKADcz5ttQAdKRm0T6wAHuRUMIqHEfFmtgTf8MqtdqYPRuRX
FX2mes4miZDxobmSqyUblrmu/WgFoSEdLYcOy0yV28RjsQfOO3OEx5HK3lxVbfsBfz/jybrcZDpg
hrGJJ07Lt+2AiwfjuKF9ByFmTmejpACFSacDpw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7312)
`pragma protect data_block
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
78IRmSBqiI0r8vs0Qp0T5w==
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
