// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon May 27 13:24:03 2024
// Host        : LAPTOP-24U2CQ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/ZJUlesson/24Spring/CO/lab5/SOC-stall/OExp02-IP2SOC.gen/sources_1/ip/ROM/ROM_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11856)
`pragma protect data_block
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
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
