// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr 18 20:50:15 2024
// Host        : LAPTOP-24U2CQ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.gen/sources_1/ip/RAM_B/RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module RAM_B
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
  RAM_B_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27568)
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
