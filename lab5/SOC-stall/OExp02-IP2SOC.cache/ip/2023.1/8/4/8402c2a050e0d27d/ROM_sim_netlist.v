// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr 18 19:45:03 2024
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19152)
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
