// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 16 14:11:21 2018
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
  counter_4b_c_counter_binary_v12_0_12 U0
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
  counter_4b_c_counter_binary_v12_0_12_viv i_synth
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
KQPhbqGS9m7bRHMVfjlN/jO342611XiPcW3TmyQzOlcwEwbDM3Tg2Bhfgw7r+mXYpMnajnqDryFQ
tGn5GyW3jxxPVIYMahMi9uUDX8r/td8ney8EHZu3uqdCa+l9LdxsE54N1vRUcEpr7J8QeKhZEk+e
BPbjYrIxfUJOHOHY/bizyxmUleuMiSlZXO7iIayu+BNZAq9dhjGKTaqHbQP44+qM/gx5/GiW6OsJ
GnYFgIsuC628Jt7isVSaVEgJdZdfdcAkjSJXsBYLXZR8qXC5Z58elN1gYok+U5gJXE3IOfy/ga4L
halT+dXyyJZ331Tv8hq/UnWL+vI34uViw0NoaQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LfvbF1WXtvK9HCxlrwKcyXL76xxEgSby1gHvvwkm0OtUE5qZXj0opHzNkQo4BEe4iD2szIivGoxQ
QlkPuXNTUNzUgDeTJ6Q0iBPM7Tq69ZwD1pSdXrBT9VZIqrUb50jRxN3NV8JxSVBlKZXJkcsLEenV
fW0AfAjlapyEFSg2E04lNeQZZCg7HuZxPOCuXzfqw7compWL85ExaSK6TfshykwCrlYXX+Jd1hON
3ieyIJO0H+LgmVU/3bXpx4kNJhD1ps0UmSLMrPjjGpnkJKvfZSec2hF1T/Caa6f1Dmycu9onGBiT
L5oOVdgtnu545DzA4qPj3LNpVOkvf8ZNzdrVrw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6432)
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
