// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Mar 14 20:48:50 2024
// Host        : LAPTOP-24U2CQ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *) 
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
  assign spo[24:15] = \^spo [24:15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \^spo [13];
  assign spo[12] = \<const0> ;
  assign spo[11:4] = \^spo [11:4];
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
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9712)
`pragma protect data_block
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
XlXxdCQYXxrpcuCKm9lRzbO7IWg8iA==
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
