// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr 18 20:50:15 2024
// Host        : LAPTOP-24U2CQ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "RAM_B.mem" *) 
  (* C_INIT_FILE_NAME = "RAM_B.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27680)
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
