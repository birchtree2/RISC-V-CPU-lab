// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May  8 11:07:39 2024
// Host        : LAPTOP-24U2CQ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/ZJUlesson/24Spring/CO/lab4/SOC-Int/OExp02-IP2SOC.gen/sources_1/ip/ROM/ROM_sim_netlist.v
// Design      : ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM,dist_mem_gen_v8_0_13,{}" *) (* ORIG_REF_NAME = "xil_defaultlib_ROM" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ROM
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire [9:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  ROM_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bEktTo8XfP53J4LC9J1bzNOsr+DeYSQtsSeSeRwv1ROtu7MJT7BubpFM5B3JNITvmmXMIQ7cHCcM
BFy5Vu0fdwcQmgznzr1F4XAF5OH/PlBVKmCiA5IZpd+UQUMuy8l823afh4u8+Fg3bwZX7B36A3bn
Zez9yHjSKD7JGdQ9zA8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vAZQ8ZTe/MermX+omywGuwEzd7SLijiaDbuX0B9K4vjWUXvRoI6Em0qizreOX/qdo4JlybEpt70i
jJhVvWv69a9yKb8TMuvLagWbQydSwTJKTY6VSR/CtA2Uive8NvQyiQKFXLjR8k8OBlgOYmyzZEEM
vYgZLdnM3d2xSMMmeGF+dNh8tCJpM10LRaCrnj5w8L73RtOImlhI/zlR8cC5oo1TbyRV+JuHvvMZ
sYS3+4qn/f80Ugvao3cYMW0LtoTftK9oYpzhiyqg6hnJnbGsAENom2wqBpcRJf1vsI98WiJqDCuh
LIdMFI+M5KuqToM8D+FTQUOT2NniYpTmj5qTFg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VpwnevLJi/mNDesLbbdRntRX/1KkSUuxvcBO6/opCSkxKA2w7s8Eyh+CvZJvHhBMtWZquJPlWZsE
d3toYaeyczcrzAzfKryx5nnTvscAyYnKl8QyY0fWsE1UqWjg6tazMCtzxlfF3HfKx/GSm3D/0NEz
xzyxLBgRosbKCX4YRV0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MhGbYf5xy0E517prDNoCHbf/sVQ5JHlfzlh1Fz+rfDm8S3/Zt1g/AR2QuQPNwJUQO22hvTTB491a
xRG5ct3upD6ZdXgMesPA9KgwjRjoBp/uriYuT6Sb/yE2jugYl2qBGpqxN9n2OgAVfK3o9XZ/aIcR
St2PwrmKRzU/ZoYenWUMZ6ZRsVNlzFCEBcKop6f5TBy0bWAeebXRZ0Mot23DVX4pqVyFaQoXdmkm
56Vr2jGszkLic4M0JoKahUlQpnrZuHIWgFVd/RzXXP9HwYBRQTxaKnNX6eWTdksVvzAImMYoPa4G
PJJFf+gsNAKp5BIFXjwHfNC+Nerc6XzDmxe+pw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jfnJJlFHpbB8S3PjID3rEIRi4fzY1WUZaITx6CJ38mSZfYSA13DJislb1OQ17w4Hnv5eGM/0GVgA
2jPR4wYaMzC8v3iDfETrH4kyrFglo3a/NDlACuR1U65YoHUnUu0UmMMovxQEnd9ByAfOtabZPL4j
FTvCoVMpwI8rdT4YJQ5pYXryESdM3NUe29p9OWbY1EalisEVViKuSwS4LzwtaOmrPecCE56FGEp+
2iyBMICOFF2PpT8Bqp39Z2rx4xyIiudZKo3LNimTm/UYBCnPAJ7XBIS+JiCIOkHsPER+wNivbtUb
J02F8ZLbEtS0qmUdYDXO4qqhc1njU9O6Uk9yNA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uOK6pXmc+RsarhB5GcgUPkseiDLhaN7KZ4C18Aqea9NqSbvIERAENTml4U58cVlx6j599K+L2aW5
rVMZLtj8UE4yfEDhtivrSdBYh446mqbnToHhH5r4BmzYnr6BUuXVZ4NIUU29WnaJUZxwrvZeCln4
GQCdP1kUA1Ozy9B47ndTYgOzCcZSr9w36W7ZA1gm34lqVpXYuGsaRTvk1DhS96aFGCeiCTbs5HM3
e0JPkZ7YUsMgWuRzE+jHE1TEMVjbPkpPjFGCYOEeDf2bc/2s2fPLA3bxMs61xUFH5LAd7Qrs9D2v
Mx+Vcfvo7kmp3J5LW99NXfA9OvG1JgjJ7ykhmw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OS52LCfxYaApFxxvQUqjJD8DSzwhbsM5irqCX6E4R0iBINlXI3QVmtLKp8vhPICYZWjEuTIVzohU
28vwAOP2ECPWOkJjN+ny9RQeAKmQhPbxHYOysXg4IgtMbK+ZODUoMyLIsJzz2yIFl5qvQeLBnc44
NvqDk7nFLhtrN9De4XV14FKtDvQG0BdWr2mXiS7WiEAQxiww87A0M8yP82JlG6ykYSwQh5G8K6pv
YHoqI8mKAC+KGuDltBnyBrKGip5pRq7Kf+0okVAOwt0lJwDvS0JMNEUg1HK/mEIR6TKUdd8B/fms
4qcaCBYsptjoZVCq4ygSG56x8uaQXMVsEALe2w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Aew/RSoMZUIh8oIZPhChM37w+R5unp+7pprfqezjGFUVX16UeT1spPFU1DaqTQvQkXhBe4/aNxvo
Y2eUJsQd8zSC9wBoevCnvwaHEv/IBc+OKmBzOPxO1hHXDVPtDZWdRCx+1y0ZYhQa+NA6jLP2zOJx
/emAZW55AWgZKKJS4QgantVgmUSyKVe/LlIVstraTkF4EzV092mOj1iPH/UqFFno9IwE1aOXuYuT
XrZU9D1dkPLBMg3CDwOi+bXRSgjvuueWT7ostJSFraLwDkurP1pYHHG4NDxYiDxMFWarWeII+T6v
hMJKd/8ZRrh5aHvGV5O/Hdc4rPitxa/cdQPAc0r2e2XWAJIdic09atzXXyU9o2vV/urpMsjSVva4
B5a/PwS16c18IMm6vAeFSLMo0T/jor1Q5SoxEC5QEkxvEfIUjjw7k0b1Crv5EfWz/sJ1LHwqlG7t
az+h03yAqvqGfOHC+7YoilYImR1NiLTCLgxnUfIvxo6woY4SgD+hLki4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iZJ+xdyrZbhNc8zYurF70yKiutV2IBjRXDiOZ/7w25UL6rCpY4Pd5gJN3+SNIoQ66bzRxlhaXMNu
tzoCM2kFY4N5ZbCy/S4rtBK0PUHKEVd7c5Btr5gn8BgQWiIafJ8Qa/8xqo95ocakFzN6/V+DNvyN
7FPkXDwuiaD0cmHW8XyOxnHM2b/XKHOibr7UKTRAomXyt7y80BVKpE50ddxXAxw9wlMn+gpW5Kpz
Dp8z4VH3uZrVv8Yl5RWELOQ3Uh0Xizb20mvc6Lu+BNoz0Ys9zZUaqKU71Kuv4s8vgPzrZXXNifo2
pU0aNj0oqAGlSTcTCBF8Tl6/jFvUXQEzYoIfiQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19120)
`pragma protect data_block
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
aGxh0zhbg6qMwwVNYHLkjtM5JJ9wviSGPg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
