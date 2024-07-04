// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May  8 11:07:38 2024
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19168)
`pragma protect data_block
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
GnZbSEi+tymIu2qJSUbhIg==
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
