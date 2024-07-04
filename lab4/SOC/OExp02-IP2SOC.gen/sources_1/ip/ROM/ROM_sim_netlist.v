// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr 18 19:45:03 2024
// Host        : LAPTOP-24U2CQ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.gen/sources_1/ip/ROM/ROM_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19104)
`pragma protect data_block
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
nykjXSbiY02+
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
