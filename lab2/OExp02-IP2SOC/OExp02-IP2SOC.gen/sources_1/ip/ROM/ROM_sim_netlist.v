// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Mar 21 20:02:04 2024
// Host        : LAPTOP-24U2CQ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/ZJUlesson/24Spring/CO/lab2/OExp02-IP2SOC/OExp02-IP2SOC.gen/sources_1/ip/ROM/ROM_sim_netlist.v
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

  wire \<const0> ;
  wire [9:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [22:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31:23] = \^spo [31:23];
  assign spo[22] = \<const0> ;
  assign spo[21:20] = \^spo [21:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15] = \^spo [15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \^spo [13];
  assign spo[12] = \<const0> ;
  assign spo[11] = \^spo [11];
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8:4] = \^spo [8:4];
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1:0] = \^spo [1:0];
  GND GND
       (.G(\<const0> ));
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
        .spo(\^spo ),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8528)
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
