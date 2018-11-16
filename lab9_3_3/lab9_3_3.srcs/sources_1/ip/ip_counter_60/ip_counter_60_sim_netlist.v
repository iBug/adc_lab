// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 16 22:27:28 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vmware/adc_lab/lab9_3_3/lab9_3_3.srcs/sources_1/ip/ip_counter_60/ip_counter_60_sim_netlist.v
// Design      : ip_counter_60
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_counter_60,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module ip_counter_60
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [5:0]Q;

  wire CE;
  wire CLK;
  wire [5:0]Q;
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
  (* C_WIDTH = "6" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111011" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "111011" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_60_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "111011" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "111011" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "6" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_counter_60_c_counter_binary_v12_0_12
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
  input [5:0]L;
  output THRESH0;
  output [5:0]Q;

  wire CE;
  wire CLK;
  wire [5:0]Q;
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
  (* C_WIDTH = "6" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111011" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "111011" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_60_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
jzIU80kcpU1d4zrqYQ+Ig2QtBIH73zAoAHwv1HrYGEFT+W0oygTyCgMpQFgUpGNfFoZOciNQgaHa
fwrC7txIPL8TBpbIKG/Qban9UBr7OlMoFmrPYgcjgXtvVmcHZ9s5K3TVSghiFcGFIf9ECBTsvRCt
tPOKOEHbeWmf3g7a7KdMItX/pvPf6E7XVMQARSPYtCvxOCDHR2QSc2Hq971OpU5LccJ6Jx2mBVQe
T9Lm5AMRE6M77zV2bKLOWtEF8Mm8BK73ae0IzAo3kHdBJdtjLjfOsSnYqA4mWr/nSTG3SMJaCCLB
DpzORfCULUvNyz7JQ2THEr6Hy2V2iaZ3DWdhNw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D7eC5ap/jIwJRe0oxb0CcozYcVIAFoIS4t5Czj21yRn0N9LZXxS8ZHaZI9YBlgMKkUr8CVpXR3SG
uIJ+7DlYx+66mIzhRWbXYmF+oVJB6yC5DhwS9ZU9CQtuHaWlyaSjEbgQPRv9PSgHjFLep60KpbMQ
y1gIgh8Ih0japRukrsSsGwQTbRg6Nvd+zK8dfzYDiyZ89Ey2I7HJEPIuMjzwdNNRPQPVRjkrQ5rm
50mAVtGLx3aIxIbNSAvYGiaNiwspMxAJ0pMNRBX2MF2aZVpB3VC/lkGJK7q5rQCqevk4HSrXMVSs
H+tGcVKeX5QU1aD0faeDbKgrjp8s8IZwWT0Hdg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8016)
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
