// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu May 16 11:10:18 2024
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12992)
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
