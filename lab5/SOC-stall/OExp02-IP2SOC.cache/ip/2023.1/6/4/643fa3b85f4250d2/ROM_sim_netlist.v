// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Mar 21 20:02:04 2024
// Host        : LAPTOP-24U2CQ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ROM_sim_netlist.v
// Design      : ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM,dist_mem_gen_v8_0_13,{}" *) (* ORIG_REF_NAME = "xil_defaultlib_ROM" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8576)
`pragma protect data_block
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
wuEKAuAbi05fyObEU7EWbzDCX2wn8w+wN98=
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
