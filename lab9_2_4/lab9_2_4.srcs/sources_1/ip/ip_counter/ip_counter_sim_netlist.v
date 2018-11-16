// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 16 19:24:24 2018
// Host        : VMware running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vmware/adc_lab/lab9_2_4/lab9_2_4.srcs/sources_1/ip/ip_counter/ip_counter_sim_netlist.v
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
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
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
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
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
  wire [7:0]L;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ip_counter_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
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
gAygJT6DEac+6bGCq+D0DPmOcpmQFHnUFGjV++Hb4ULqo8LLjcvZ2YbnWX2T3c+xli1fF0oZS8di
a8EenlGKZpI5Wue6qK+eVZSwSsU/JWzUgTxU85sIrQkLfghIvZPTLNdCXT0i5VEMVacG3iNxbr3B
xuVqJjvOtc4CIr239JnVrF/kGXo8vyUQNeA1yNel9+eBMQC0mcRAAxsxx+LrTnOO/IspVAt0vwaV
zxEo5xEmRuv5cbmFOiTMTcp7hkaUC1GPLz5w8u0mqwAix9KhWwrKAVgFK9Qw0IMQYK9Vw5K475SX
5+KTmJfXqNdDki7OEOEsq8ty+QAh370WlyOf7g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5Ty6gX8U4V/W1wajbQ7w0YWwNQNnh54r7OSBDg8Zn2Dh4x1R+fLIxaviLc8UjcE3h6rUVoYrPZ9L
OKDJLOGaes5GQBltungXsxutIsQ/lEAtE8wuKGXjilzXcyCE1nH7WuWHR/bbRzvkvnV8aC1YMm10
tjnwwhDSQteTlqOmtytkKkT0Xa0YX/Se7NRVlhRUe9A/9HGWcGchARn5DbW1yiorTHZjVJdXxJQP
uJvkk+h+7j/jNgQIrStLNoS3KTcSdTPMnsLJoho0AfQY1qM7sZr/D/mwogwvvnfnTp2zw1YSe23a
gsJ4WZO9mh1GeR3RcJVvH+vfRp5jyCMz5CB58g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12176)
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
