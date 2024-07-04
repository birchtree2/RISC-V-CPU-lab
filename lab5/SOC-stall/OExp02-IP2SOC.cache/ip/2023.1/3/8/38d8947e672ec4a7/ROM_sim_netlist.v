// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Mar 21 19:42:06 2024
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
  wire [26:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31:27] = \^spo [31:27];
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24:23] = \^spo [24:23];
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
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9:4] = \^spo [9:4];
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
95fsv6nGZkW6rxPrfnpqnQa5RNBeA/4QcFs=
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
