// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Dec 14 13:18:16 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vmware/adc_lab/new_demo/new_demo.srcs/sources_1/ip/ip_counter_24/ip_counter_24_sim_netlist.v
// Design      : ip_counter_24
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_counter_24,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module ip_counter_24
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "10111" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "1" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "10111" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_24_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "10111" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "10111" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_counter_24_c_counter_binary_v12_0_12
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

  wire CE;
  wire CLK;
  wire [7:0]L;
  wire [7:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "10111" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "1" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "10111" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_24_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
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
nnt4hpm8aMeHj7Ghlfbft25wCDSU4OgHSYgohY5Y54OVk/ZF/3/A/1b58fvKplqLYq8SNPaFTeCI
yugxb4XKPA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
icRB/fOZDWyBabMGd2m0JhukfnHCgsonFqJLnbFiHqD4HAq532BpIMPsTzpuAnC2rpknvyTqUyNp
zmJV0F6HEz0B1BGhBWnWQWdUPOecb25tLs+HSnew62d+ujGd8F13AaXdqIxZe7XJ+oOhHoHhftLN
PVzwMLuHPFC02rrHF5U=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UY3ILsM3DuZnc+XV/RUWvQudTdoUz1tkAgav0BAHvgsM5yBjdXDC31ZmzwEomTATGQA3ZyDP1IDL
GXtKbgQ+Cd8kP0mzW8uQLpCA3FUxCYqGIOkrz1AGh8jX5JuHEvHCWemoS+uYgbVwGRgNn36iGiSU
gxGxGxdh2dlgJ5TnZBiEIX0KhlcoFalz5hmVTHOhhNB151SriAh/a7nvbZZdKagnqHLBGnsXr3X2
hj5Ufi+imJE/MbA3k0WSVJ4K4e5uzS7+rQaV7dfOOnqtxha/GLsZlIe+0/cSPegx5a1wR5/zNvZt
BjRWlUOjXOajbYx1DXcjwQJUCOW/mYg7roilCA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Slli2CcwGUT/eLLglKtjS4wUNMwN9NHiNCUArxZPrQCDFj2jhlUE28LL+IBGjrR+qAtIFykC9Kd9
3eCP9pujYo2DPdVUfuJULZV2Ow2d/+Zf5Mnl7hwkv3QsIu23MMfg+lCwO9PbciWGT7M4tuIOaDt9
gcvijNKNayVH/TgLuZmnfRcPwBpc/J8XAcme4fDtiSN81WJiamjnOditpRqGbcdTwO131y3Nf8IU
sOBj/rKwh/WiQn2F7WQwKwRx1RG7KWbvxZ7AKvotMiiicQ4EeMLyar6qr288WdRWnzO40o3xfNf9
XcEV9DFEH5pf6mlO7Be+8poeQfF48BYr0oIWsA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vuD5k8BVxa4nKjQQQ+WKvoQLLI56XSBoO+N6Qlv4P2y6A1vklc08REN048SZS7CnH5rLUGlX+L+9
fd5VyDJoxFwuO+7w6acZY9orT2bwypP1gs++inV5X8k5aesVPhn5W5ZLNBx3f2u68cgOZ91cv7Tb
l27FG3cu02IjM24oe/guAhidJTAyYUgfasdILVTBFK7U7Qgqxrrtk9P5fQ7hgv3p/dnNUgVcsmUN
WLgfDR6BhoxTTfVJ3LsVLbRONPCncrmpSZN9u0gN4Ppjc6IoJlWVtcVVe8e5+AsCgtYtEC7c5uV3
ZzcSv8V9D5QSRKzac/hcIss/5ig5V2e7Odq1Ow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MnSIaBDkmU6w1uv4HUaSfyV1n39EmtmvDL4skDTuSqIic/7uyYxdyxkI1yYPW83e1uADyCVxLgIF
QWykei8H4LBD2qPj35xMB0VUiGklNVrf0xPw7A9zc+TaWRZbe2fUzVBYNGCZRONUmFhpErrW3ZTm
DGatJQqh0zL7zm6RtM0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MKqZgbDvPEkX3ewZ4OGZSdUgYTLha4IvHZdTjQbGb00U8YWqnUlofBnOzBnxDcKNxtcZr7tRVEhw
kraDbaXkY7kZztTYdYH4OIPzHav6NHz5mCM1y/JJ9LeFzH58+3usISA/dOz35h199Zr92CNRUFam
2jVWlIcu5zPNeve8tgzRX6nW7B14Chd6hqXLtQgEIHqi8YzTiDcZ0IasUfzqR0s3tKkzjMCC9/w7
bThLIredtKAIcJsjllEJm7S6cloYWgTjZHdOti+DRmdqPHf0yB6CaYa5wIK85A0vbRUG90uBivfI
+je7B+2BZvmSOa3QJP1N3EeJyT89YDYnpJhiDg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VisXAPpEBvU2Zn8sGWA81ObbhMxBLvTyfA0tCkbIhhyMHuxAPLz0VeA5DYPPfX5Y11/zUev5C2BZ
T+Vp+aGgN8mFrmowXe7aeF493K7usSGVIBF4ydxhVeWTe2yAXg3SR77tuvzQgoSX2+ID/ynKVIl1
JdpziJCzEffCfu+PkGpNOo0j85rBZ+W36OC3BbWXace46j/QEUh8T7qKIwXo6PUpZQdlBUmEb+0M
0qV5gl96kwAXQdp5tNt32V7mxvAYgdXEN8hQezIXNWPaYZP+I8rtIWZ6nngNr+uYTTeIbyf+17s8
1VBUwImRvyMNeX5wGQETp0K0ahmQ8QU7tTf0Uw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZmlZXZzIFSKs7dbRwUBuFsfgo4NPyKz3rAdA2sWleMKmq4Wie0s39Hx7UJqqk0bZ7OQtnKjemmhd
xgAeDAFYv5QEdF2vCjYngkdZrl+DO7dktaGhvUAEOvP753x+gw902r21+IArk0qBzhaZVGJqHV57
OU0XAkRcX8xrebZ8mCLhTk6e10rnDtvnkp8t9QZJqyTjuCxXGPndTUrEm8OlWswTZj/b8zcp1pFn
Uccw9fPQA8Y1gNtWX8tHY32z1wVCbCipsIueTGfi8oQNE2Nr+S6sTuzdG2CTCRJliQKvfJ2OWsAl
oWAd45+HpgZh2Ss7lUI5HJKRd8Kd21+qX83QhA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18640)
`pragma protect data_block
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
Iw==
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
