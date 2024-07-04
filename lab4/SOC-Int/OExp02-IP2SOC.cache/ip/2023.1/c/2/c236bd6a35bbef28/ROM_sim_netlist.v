// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr 18 19:15:40 2024
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11616)
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
