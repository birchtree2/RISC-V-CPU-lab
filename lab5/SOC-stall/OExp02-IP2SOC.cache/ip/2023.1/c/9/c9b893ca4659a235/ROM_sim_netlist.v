// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon May 27 13:24:02 2024
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11904)
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
