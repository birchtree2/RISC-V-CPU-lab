// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr 18 20:50:15 2024
// Host        : LAPTOP-24U2CQ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM_B -prefix
//               RAM_B_ RAM_B_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27280)
`pragma protect data_block
3D1Q75jLbmGXOBIVxfAnrxlAPje9JnsabfL/3sAZu7Fqfguuz9ZtXwSq2UbtuRmMUl7qr/J6KFrQ
Gv/FrcA1MEhxYmyvnn3cfPaAIMSWiJ+eEhcH1aT7ksz3DzTHhjPLD8/mVTH26Rnj5RtITIpxT3vA
eLZpcRdwYEKrwuc66553svGocQ2A6QlaLY+ZtgyZAHytGHfhnA/WaW/tJeUtIKGYSHdad95G2Q9K
dAdMln4wD3CVNWnbj2RcqzKGvR8eXULnUnZXFLrmp/gkGAEJFr3hyct158Tl95v/y5+49NCufplx
IS60b0/snOKf4CZgKjdBBBAn3I8IFcOuEayGMb1KrGMSFGEeh09GmtH1jAfVSWCwKRp3L5LgRov/
wun+MZ2ZiJbz2YiUTqohb9MdXvbwoaGx1gBuAxLToHUjBmMZ/IsbM41BkwxezfXWfJvitOkWNAAI
qMUF4L9RALER4c7LUZsvXRjEwTUkwBJloJp1oXo750ZR2aobjlwHDOEe/W8NwL3qK05dLtMNCapP
ZfNwPCfYZ0WxfQzzrZhIYjB8FwELXJvd4dhvieV348wAn9E6mbQnCeJhxgbfb8V1iFOpsVqaO+6a
t0Ougx8FQrLmICsLXZL2h5dS7T74ZyRGN3Ivp0CZXAFDJYxLi4CsNGs5rB2vWcUcnP93Dv6GY+61
VTQ1D3Cg6B9+DT9a8gH59fvjo7agaxVWrCHDLArBTP6n+QD3bWaH5DGVIm57JvH5E3Gn+mwrqPIB
q26LX2rWrT52L+zGyN/zWYGVDGk9rozASYTbRmPj+lyAekpRTn+W8IRyk0nIjIgqe/+07r9+fsU3
M4HfZ5KDdwjdIg4TtzTgdZVof9DqrArELJtlP314OnnzJNRiFIviQemc0JKiq4xEGkB7wL+5v2H7
JQQ0ZDonsvcxNx1Ntvrginnt9NfJjN1ZdXj1dZczb+r11BFmKO11hVxoEffHK+GoUxUPxPVGSK/W
j9hmEm6AxjroyFP1IEqh7c4dAx8YPp4cbpJXzrmb4ex/2ZTXoNcJnXOykXPY1Th38YF/ya5/Mv8g
yaoZ8pBYTdKQ5rMxbfvS4iJ5THSU90Kj9PGe1LqZ2I0IQzZHqg4I6CYRhlkmhHYVCRmFw3oomOR5
weTZKXIXYObI6PFFCzcZue86dzBpOf14sa2jX97laZMXDoZvDz3a0eaGB6+CVNQVTa2vdWi314Xs
X+qFOHgcnW4bVNNwqMAK6uMp2pu2M8cBe5qQebffpEQNE65V4lwctbO1/SfAnvleeoF7wKEJ/AUb
usBCa/BALq6owDRCj4859Hpd2hW7OJU+3jJAHysstkFb8nnayutKCG4nDi9S2u1IvaXUlrSNADv3
NOKXJzJzNpmh0Nsops6PjgUm8EhxLUpO+Ml819KEJ4UFss1gRZGdA3o9v2rGKtosthMN2YJM+rOs
JAfGK/FQRGIbBAgQ5ofedQqvjzOjkH3+OeCFrxYm5HM/K0y4/4/odVfvjJrlgN2opZMqQSgCQNNA
OVS9gwVO4HnK9M/npo3TTEt2QlpU+Y6GKQ8BRZvHpkm6kdT2kPDxgofC1T0MXZAdZuL2lBmF2GHc
Jz6UByYaqLOL4C6UmUF033RBvqzRoFlUh7Z+g9dxf/lkc/D31AprqID1h5aH/hcLI+Swkmx0FiCu
eh4VhREM3PDje5IegzTuLdvK4SrsGq26ogffdsjQhV8B1vcSx+89xrgacyByqGjMI0m9WUP1PWtk
MnW1jYDZXKU9Wn9W0quC8h4aGX7OeNGFWeYGIWeaP4Oit8V5h/N/I5Fl65lh9Wlg9Hb/8ZWkp8P5
V4lt3LmKSSafA/RCYbQEWTkwDnmIk8dbTJDq7Dxxhdb8pJcHC3gBjypc2tp2Rlk9siwWdnmO+0Ua
QI3r5UNuOme1IvOeRmjS+CxAylcVnD6tmBkmLOvPBVdcGffkilN6xWKMT6OatplludmlDXl6WC+d
JM7kHRJLEV0z57uoEvIqp0sQtDuoFw2biEMQjC+f+v4yrrltxolUSD+nUBcqaWATx/UceBSSEPnz
WiqdDK4B0HkMphEDnTwH2bBaDAE3yIUPlyOKi15TMyMFlpTipZ4mNL1qim8eXD5lfD3dOKJzzCgu
hu17lCuPTw/xr4LrzRnBGcQp0LBi3fA3ljP7Y+lWG+4VAJ7DTlBVdey45X5REzIFETms2XHa0Sjp
DWTLcrQiO30Kj7OKUHxkrF1GYJtL++YkNDJNnRRQjX3icJrf+lVPM3mKCehYaWmRxtWF582DU021
xDJ9iVklo3TDMLXzuBgc6gAoGJXgw2bW8O8vRO1hg10nSpWEgQslKRpKu6uv7+WDvqd5gxnbMi6P
D52kNNMLKWAIwT82+zeFRJarV/EhYQbSql1ZA4DqBlHs+WEv40z5bzhJgEueDslenODTJpe9npZm
pfkZ+ZUBmf8Kwj/5EYssvJ37u0Alvc8lYypSccu4R5lhXGeie8VEAFlkOXhdiXIETU5hBX2Jn0iu
aRkRWF0SVQex2Q7DtnWca8MqJm2R5mMa3drXctmCZ5/yEuzSYFYWu7d3hRWMTelGMe7kue0RM5Me
7K6msIhKiDjIvoEM+kElA+ncF46BJlA7UskSIuHStw2aTZT2QAobIwep7FmPaCvnMdRrhn1qRFpB
ybyz5pG6kb576Rz8FNheqZMFRtZU5npUtutrUT+V10vW9lh5226Id/NWZXa+Y9eac3ZJ4LJOUXB9
hm7N41PDZcYlzhUenKWO+d+zXacJKULju4F/HqISpzzvKGJfT1Ki09roVbvtmWhM01x6xLWY01Lc
zN3au0A5g0iC5/Y0qGCM1+DCHnDbiufpLOo5qbkjwq68bMDLMwltxZu7maCcFsrfwwlDik/l9qEj
WXeEPkUV2keufLdpHKp4iIGFLO2I/ZjsiLQJKw0YIMlcU5eGyjoJ01LEKd/An9IA3GemNpVqAcgP
6rIOAUGw+NWR7L5geEwpkgsG0aUN0wIob7uZrIdoQlC/To5oG3LmWSeco5b9ztr360pYvKvfRkfM
fAxl9xTeqLGvIuRF3oXX4LUBLfVmN/wdY04CF0ZPRkvFGCuDEFL76CVMyzbS5EuP1ajjHDR++k5M
Q2pP3gD9IuVxvshOLIklj4B9LLuOPfJL0waGZGwal81bOp9WkAbap9ji4+rEE7J3YC/49+lQn+VB
MDfu8JFYnowQMDCO5hsHvx9ljG7gOHWxchfjZaQf89XaxUhuc7eqGeIPZMMoBL62od8n65OEmiF2
wm3ieYZAjZkbwvJBMOvDtULUmjEGX0LpFJUAFLs2x+MhsJblV5Q14duR78NhQiC0lo+NPAq9r61m
W/LLGS3YjFHgqacC2gSPezuf+lGVXxrcARRG123nFMupxenGMJIZp1AKp84ALavPV03DTDdGsx0p
aSlSln+gmRe8Q3eMmpWLTmobpG1kUW4+NiL5zj4ldNpYJRqe02gSglHRqheDSzPwVicEa5E0ZmK7
pj1H2cXeXVhGs7cNT0mv8ZbwhUuRl46Jq2OTvk/1imVnvfOFuMWmARna3tcOzxDFDDRw9BVz7uTb
2o8C4oyo8+9biVzPeIAkePbHGRzl7IlIJ/2A6wvOwzI4xmAwVETkAMelhN6L9LdjaBcidgMRiHPK
IKDRyy0jsT74BbGSBc71/aUKdFY8uQ1xEMqGLWaR+DzcELk0lmAlQ+w4cvW7mVPYz+VFNVaquMrh
Fkm6tb+BmakSA48fJjArt1Ebh+pfRG4XNCkvaFL9tcAz5QL+ljzgUa+Q2eO4EMAH++WthLenaWG4
2EI6jZIwab0+09xjwxoTxNpL4He70Yq2rgiCmj7GrUXmOTfjELtYaEgTbNI4iHFWQrogxXl7pivu
ZER54RnPS8Ge4F/ryWK/Z8Xp6vlvPuDREp63DnH39BePTM0c4//ZlGLRlyjCM6YFzQERkOmtNd5i
9VIQNKuvzmYpq/jCxoB3gKj7Uehu8hIiHj65OHer6OpC74ySmAeAZPNpVNYkueBUz3f5OrenKqBC
20EZfI1mhst++JR+rxOU7+CKCwL6w7hBL06U4lNRDSVeO41SGxb7e2Xman6ydMwM3yYR3EbqLbyG
sxi2IpB7J0WcMhGOF2que6rSAqYkafDF57lrKF94YKlblc0Lvni0L/rRxjsZM2kgA1K/oMcgki9i
Aq963Q9QQx9mWr1YblSbzm1AsaU50N6/baJUBmkmjCTjmmKkE2h7QEDMhzON5ucvTTZRmSzaCYEB
GasOi388F1sJPBVPJKd0FZ8uG1tUWeWey99B0A5ZpZc8kI75GsxYIZuvp4xB6hw7ydNA5T/Nw110
7R2k5N/h4o0EA8pvN46LM77/oC5LVuDMt6DV8ezgbp22ELHomJD8GwtBv2LaHkzV23vcNqYgSctp
Wk7LffZFOZtZ2Sh1G97EXw8GCuaxhQE+1RBM28cYXEJyD+Qilj4EBFS0cl2u8fqni1y/Q28cRYmp
+uFpD+jP+02M2odNgaN/+u9JwUH89pb6O1DQc9PJWbF5PSR/HHa7yhBIVI1pDmXkuIv+aIIOI2lI
2AT0D+UZbWmm20yHI6D1DFp490Xrg3TTA9q7+rcglDYFbPPuzqYiepEu12dK8MNNnFwxUVHFZ316
BncwS/Sg7aLctWxKwt61O9FGQGv9V5rnXS7imAxvFwuUTAPXGTg6SUnwaY1wd60xVhUHcEIY1ybK
IhG5kfkZFBu4F3xW52tTfDpO0+S2+53ZcWD++q3pL2aAJx4UATvdvqQuCxnSDR0gpVRC+Hxu8xF/
/hmiabcqePy0tD7fIswNXxONA5qYw1hkbHdQ4bUdpHJ/jW0n8y8+med59yRRsSnOKtphkV4Jsxsl
JSs37rgD3GUij/8Y4RR6qxt8gLqZia0Z7d14MXLpamF8u85JRMoex54hxQAijHDU3oiRJd1l5E5U
9c0AlqnwejcWK855lEz77mYsV3dK5xC/8OiIAjoP0ppWPQ/tPHM00HaNTEi/R9VwgqEgmIjOILst
SIva+oXcRiu9FrnDb6jOIsuR/f2rGDbGsqKt2gJsub72ss41vn31VpbX/H5r4UPVic1JGU7RPlPS
ROX29KQ6uk/mUglNQQw2kTgPsxXh2ioH4xa1ix4SlBeRA0dTwNmOR/eOEc2hoG7wDM/f9ieQWkDk
2ToovnLaplWJks42xnRinhOqy8jTWQ/OdBJ8L2dv7zIc5DtVsWOx+56J7lnsMXfJ/fewhUaWU5Hq
5yEw2W/8R2G743B2k76jejA3I/AT+gwZCbLfdDCCkosWGZeU9tn4xGTvq4cBksznjDnAJuP2drsB
VsmKOagpZ/qXXfx/hDwnUWlWVIpy7o6M2WvkkV1Zhv84bjFyr2simnU6WWV6bPBAaYUCjwsIKxIe
l3CTADwTUOhPUj9XkPD4avPRkyCjcbdVTbR0GBpsRb8AiuQcIQhZHO9b+i8H7m6OboUcyvddSWau
9mJgZXwsYvcZ6/Jlp91XD1Rj0ANk+hOGXTtiT7lCO2W0tWLpIHu8dpev5XFYGBfQrfBAaI5HbTd4
BunG72m5gqr9blLPG+SNye0M4fBgXD1XP1CONfOEU/So460ydz3wqyP3rB8QZacG1sVyGJF86bex
FLNtCVJFcd4/e2CfB6nh80bz1tvhtnd/97sCzFMIc80k8hwzVE54ChRqSwgm/G8JhmE9jiMgNKm1
8wM3Ru0CEysF0qBgmrd/cQOgTi/7C6qXQ13ZZPOenGZQx+GbUpaDN1lB4sZK0Es4A59vin1vuHOQ
FK2KkleQ0fVFWPFZQ/nyWOS5gmvZO4cFOYKtP0prCaicvvSOnbQ8bfpQ7J45lUNGb+LqNvxBUqEo
wv/tS50qdbl82ebhqFFY/7bB1B8OC0MXLYBHfnSh0ptRgil8XMTmh1OwfyxrxFwhsCGT/W+Hvjum
g1ItY3IakM6Bm+R+TgW3EpsLcjspIzwEsHRikdHDXIcuG4/IKUIvA5Y7K93dtiwaA+99LxQgSX+3
mhduCSyIyjVN4hZeg6QOnQWrqXlnzfP0pd6CThAzlkN3Lvcu7z20PuKOldY/rZjpOxDYXyqYSphx
Z1FEORTIi/QwhlLkFQWyCotcjFDsYJt8S3NvEwmby0LBxm4sDyocGyrl52M48k5lFxgoPLwpSIUX
sVNjCd2oKOgRETE8mI7+gBE/5ure2gtraw+u1sTtZD6hq+ZGVBNOgeTleGM95nkg6e00c6RHgBvU
SYnk7zSkuyJN4Xfzm21yjHX9ZxO3xIDCzBmB153/4wdC/jI6NnFr+PWf4Cprwv1T86/r1/OLhsEZ
C6+q9WeTr7Zcgj2SVuazeShmSft/bgFZz9rY+qz3yBs5p6795luNJVqqrt/ykJ1Q7HXN+SxztLW/
7T0Nb9pWYvkWAcVvuRxLbCCroCdsbKbgwAOocJS4gAu5tndegNGJ2bD7dMEGQdtZvMX1ZdKYEhsX
ujR5yD0I4usR5P1u06XkuJVwvJXsK5Y3btF2FA7nllpWkktzSmWIJ14HLWV2/4iEKIUDc+qVm0o0
VmI3Tw0m5SlXSqTG6flzw/kWNY7W82btZpRDdMKWilt9QSiLDFSHbFS9ug1gIRntaNLsn/4YJQs1
/qg9U0FaUWllrbBVik+NuBmNHXw+mYOxiuf7EGbCnlL9o+IId8yLCLNseSy7mnLP5TOHOn0fc/rm
XLNGD8wdwN/OvCZ9SFZYSj5k15js1vl+sr1l2fIJCBKMUd61GTBS3ejek3SDdCgzybBKf7HfrhCM
6QDkVICNsfKCs+74bSFQjYAQ54brcpc1ARaOUlt6hkqM1Ho+DZA6jfVK6bIvGfYWnv8L0AFUBwAH
aj5rTPA8/Mbj/SRkHUAKV0EtcVdj67R0v/elRZ0RdxzAK2w3k2UG5UgDI28gyZiHyiBhiyRi2NbS
+BXHhN/vPT/vjMeidnmcxaZarLnY+4KQjdfpJDR44kNZlRjdu353dgTm3A7e28qGXMcCIIIlhWhS
UhGdjc0BdmvsAktRlrzNPa1cqq29vAZvCqf9vf48wcfVj3hQosxX6MEONV/WQU5liBGzI47pCBQe
83H5PpxZlZXfr8sNtPLAS27Pdm0FhmeT/KAuhI/h7gG89z5J+0KUtsiej9KH9kjFnvB45d3fyl6k
xAhXZRWrPqFFnAjidE6Rcu4+49APKB+Rm66Dsi9AJoHix2drY6HJ3RajDnvyUfLi8ofQg6nD/8+7
ctACZ4pCVGvyHh79VM/kgOj9NWXE24KqniOkz1BkJyIEcw0XQMQaLU6G7fRHV1lZMGyc/0wweGrd
s3j9Qdp7VUmuKnhwQZJVkiGkoyqBXYwi1K9eM/M4IznrJLlxHJgMGQ0yW76QpWqKCD6qgV05jnZt
TgGm95D+fyT7DUSJ14j9lDUlHCEp5CvJrie34ZYLYaLZwJAPmMv7TL0zCKysfRRFDoAJMxcleBno
xqAzA3rO6Ecbr6q+JlPLTDNQCX7+rd9f4Xy/18b9B4xYxZNX+T0S1ZiKm+13gCyMRxGU+2JofFYz
tiXyuymlALBkVtMKKdfLYIHeJV5eaFL3wS2xwjq4HTeqez/44ckb36LTDSTenaiLA8yQGpIcjQBt
yTWIxqujEMWh0GseTNMOR60p6e94ArEuqP0FW0FrSlmtA0mkrBBGnde1oCwMFfpZC4f7DU9IAkHW
33iScGqs32BJy5M/tbY8UQyBSEWcs7RAUhfICBKfHvGOpChkwCm/s4Qu/lrK3e/WfsFrKTmLDx5P
2rityMTki8lBdWRHQvWLPSUu9whtI14seA8Llb/WV44Gvua2ppCCHFo1NL/YFMRuFhyRY1xcBsm7
oJe/GxmcBDgp4A3588rd2HdWC2l0h7TWvl+vswDTLit4LcSB58+OsBwSkzJWc3KV3+Y1Saqy40iE
wH15G3QtumK3UQRxjQE3Ut84lXUdD69cTk5uAFOWzsNUB74EbNPOLWjhYgSBlMlg9hL9/VaaDOp3
xMIACOkOuOdzEDQLOf8CULzdkq8L+kyOUk1PDCvT/Wim0wkN1M7L/7eldTDE9CrvQ03XdpwhHjrR
BqQNPsysq0f0wYxSWGSs96+h+CKu7SaxrEMH+a2bKr9QM2qgI7lL1flyehLYF8uP3mGwmzKLDo+E
Ult9h48UVsdiTjaVCx+d7H9QRGTC8KTSDYxjPKWZKTO4QJwv0jvV5QfbxF+zTETht91rK3kzMgjz
k2vxDxvCw+fq/X5vsY4rbccVw18EmbbVeA2+qW/xxrhkjb9dJpua1Qc6YnkoJrt7kXjD/HCOoZN0
glViZ35tR9b1ijFKh0WRvy7pnyggww6daWRIZVr5whRuTcHXoHitXMuSKL8PYi4ek2cp7rIv/DJk
tfso89ELGClNE8GkAE6EMKM5nrjcjwM/lQQBCmSMTdFRLTXPwb07Q/ugdNZJXd8CJ23G0Wg7Grtv
vnjQUPCcBRPatIRbgihPHo8FIJVQN9p6YAiRHkQwThHL+TBQey7sZJDaeYhGvf2m6ehTqVHNCAab
hqCwRLjQnkcWuCOXUapp8OQ2D78+KG1R2eRicQqSR6vECbTTeTDX2kPfmDbh6o4tWwPpjf7UBSUE
xbyNZrheX7FUwU1bs8REX3ijBO18SXQJ5SL6jo+e+dajlsC16USOe7K3PB84eUPkKAUWM1cL/NQ4
elwsDOauZYe43mW50tI572sRD6g8vCb7IrZuo8moWHoPvG0gwyFqB/h3dVedvoBzMdMneqhAmuau
fmJnMr5tivNnsQGUHL5LmhqOW78CjSG78DximRyANeawv/dZwbRk2u1tLhVhYDId1ODajMnHUKum
UG39qoMm4lrgREbtyqyXNBewTWf4LyDPAZ3o+ozReG9zU70BWPTZ3YdhFsq5DagDxNtKTyCtSIfY
zhOGFc/ScgzD7lgcj2LZkqm7kTOm0d7dTyS4muw4DAq3morf9lMeRXU0RyNNAqpiMKLfrhPcYglU
YMaI/wli5BItGaahRmuXTQ6TtPvkBNsAMllWxv8s5GKKDPb9ioMqaPZSZD1WteNmfC2NuJxgpFGn
vmz/w1ltYlXqGr6Q4VC5YTXPNNg4T3fOPMHaVr1GjNojbhLEmdCB/ZVcDCjnAjWH0HhqUPVBRLhY
66TKASYukzq+uKOaxpTgDLhYT49uPdmZvYSVEhXdJ0Ir2yl45Fpr4+026ibvnKrRi2eepJQ9pe6M
kzXEEFSfq9+Z2NLkpCc1ENDYPqScyXwl+uUtDc+613YipUdbVSCe/vExx+ZvQb+XDFnUar+HK5iV
vWFxS9tVthT76xo5g+YUPzYiuNR9McuARgzIUC+XwOmmeBfZRkPlLUsnGVZNIfDHXHAACPL/Pov6
n6JxBkaHIrGZq1JnbVfUf1I407yGRnKMpI9zbw1R5HrdptIQSv5bmy8TrOIzCJ1AFppCBzjCh7VM
h2YNTeOXDPM3CYL00CNCjw/joCbnaKiDWffc0KV0rpaCCFfTways8MyN7CyTrwNuIL1jeC4RIvs5
tuD/HE1sKWVge43P7Q17ERpsL/7bemSdSFfjmBw+gUXOOl/o9deGXonerfi9vWi2kM5J4CAu/nDH
1wFhklQobmMpn0xnuzX//p56tpHotZBzbw7DoDRQ4em70/WqoiDUz0zY2dYjsaAeFLgvajpvpG7a
ZKRrB/hl+NI6Iy+8Yi+CuOv0lNwqxEkEihP162EidHYp5tApDZyvGmcnjZz03JhZ43HoSXitRIAE
3nfsMyBQx8+x0jKHQV0c5d3jGr1gOmns+46RKf7ilSwd2v/6FFzMQx3psEUaidRcWxTZZNdKlAMk
Yu72bblZsowrzbI9d18drZp7MyzV+hfTzjmvE60gN68q4V43vlA5bEgi1lSEyO5HNvcdnjzjl4TN
Nn+vuKbEeIi0WS9bBwiyahoRfJx2FR6UtFZMTpat3e/m/PQ6R6MdwI83tOZbXfuWOrI8uVwrVp2K
LCl3t6FFn+seblPfaqnO6I4DOJqEvbU8tF5hgfwn05OlIpRA1/86pIV96wmz082iRhYu/KrOSoMy
4agHba1kCIgAZnP27hg3XIofPJQSC0B8lH9ZrFERxoiXX27OHGH3NMLKi3BK3fuC5mGCTCKSsQ/d
OPZ2344Yl9Gjy16em8Eaal8POLaZOr0iCRGTuqIE+LVTBygORpkCly+q4FuK2lYutsoLxsrobWGP
1zrf/uCuO+OEUSQ1NkWugR1/CWcCqph4aHYriHvOPL4s1rQQcIH08AUYwDR9vt7uQctfXAQp02eu
zKzNIy/WS/5Wwqn1uAzjHr5n5OC+df5GJD42GrOurO25nC7cari4Wmt8PDkm8fjnT9ft9NA7z0Ck
LmaoNqmZ+o11xwcgj3R+Y3fP7JqSss60VyvaOn0YEvYex54NvAGGGFBMKoNZUdMup9vHf+XnqhUa
Qs3qUqvMEhgzxT0KJfUBlfRtscxVfDL2nr36Js2knwsoR0mr7TNb15B0IOwnf7SeO2d6wIbBwH5Y
c0AhK5JoD606wT+ILCMoP6y9tWNVImaxznfX4Q0p+Z2PA1EpnhBeitIsHdDBvv0fgBIIy4UJGEDF
JZY5RJg97EgUHa9l9ACK4zgt7RtpYyfb4Oao5GXnAFe3JY9SUo9KOahq/e/gSJPH1rsGw3PfitaN
poV7ETKRQlGU5Ev0jP0OjVojmLAnzFpbUX/1ew0O0KmM8cEEQeFYZ17GocFlEaN6DoDeM3+TJk+h
jNC88PnoTY/LcatD9El0gpB5rPV/gnUXsmAzlwrfcfGsoMU3nHW8kZ95z5jBhHTHzjIWN+yeJzOv
mxCMI9AwnUHzi9L0W4iD0epbwAYvewWRSP8Ety8U+7l4z5lCn2x4jicPcWsYw7nSPy6cdjKmwQiQ
EYrZzrndUnjfUU9VopQ9vGm/S2OOr/7r3OC2X2E04HQWGAmUuiHMPD+48d+gUK1UEECdETLrhC+X
MEOry+5HqWS0i+3Yt7NamdtlS+/njkZfrC0LCSGiSbfcOaQDm3yVo5zQuAqNw17a3+ODSYxNUiCe
GxHDUzEnBg+pkSJhJNAoYEo9keqTKbmImiwyZ8hCgR4FhaevtlzGHHJMKwv+9B6QfYv5gC6A+Qye
6bpbowV3KuoL37j57Jvc2pPa9/wSNc+bo3jJBuOGi9VJjfaVDbqE+0gCKi0wuBgYzuLsNCwe9zek
wwMWUMteg6LxNy5XndMY/jeQXzao3VsQ9hQymlLqy6KOoI4r6vTiCarAgFr2tr4hLsyJt0+fXxO1
c4p/QNVzda1Hke7hasy+68yjZdaf3I5jt8LVHunrAWyZaLPZ/upFBRlilx6dGArIsrE5SkVNqkxQ
A0SD7yT2K9OYY9Mf5pW2NPYYiMnYDrLVMVm74Ye/bzhdoHbmrccOuD3pveoF5Ba/QMKRiQqrrNpv
Exm8k9gkncIGpNHEGlfOwJUOxI1StrrWRY15BqprsxAkYjPK7mriJeduNdX3PR2+wL+kecNfn/pi
qHgTh/OEVNpGo33bPvNmC6OCeIPwOUxv54IgWsDo1cflHYaO7IvVqRlTEpCpCUQOmEZ9KCTdqyeY
QeV2ED4jyDOA0H6ilzhGLvsMEBq43p7fl+UFyh6B6A9x5S3Z8WQxJEsCeZnv4H+/TJeAxdS7Ehyo
zCcLYZdiXMEvyBpKJw/4KDjGQSb8z1Tyoya05o5XrgqfK6dThj0WLUhDrK+OI1m6PrUVRzbgVvG9
IIjOuw+lz0rprJqX1X2mhfd8dnc6gapbF2xpuoATJ6OTBhPVcww99I8Qzv2Pk1USCezn0juDxYnS
GqLqfpyyJb10O0i7N/OIwbTAkqlEVe0UJa1L86JVhHaQW9wCoYmiFHI4k0dQv3EA1+aBJYNlv83q
nvDlIlosJexsh52FnKbJYgOMzPWwR5C6Dm/uZkGe7cmYUSRlrmWQCaxz99BDrb9tvZbbheBw5huM
huuqYxZ0bB2iNHrOJhOgsh9Tl+W4eP61OidzLn5iC9hNK5psSKVPSY9D1UqXcHJhnVyYTjRYwXJU
lhIRGyadhuLk7PmO2YXMMwHA3mQDc1kTKqQW2cBm1wCKZ0gnTSq5jZQ+KL5yWIlSfPGtQ7KgNNsV
BxD4D+fCTDcxzFS87MMq6elvpd2Lt6oPcmNsLHrDV4ISi82MLOEy94Yf3mx1V4JisDLqP5alaqN0
0aqHf4dIWmqSD+USZCtpplrQb/SwGs2v6cM+rnEDnW6uq1uDz8tyda9uE7QtM4L8kfZC6abwEuWw
eR0QRDR9+5D6NoMKiHOHZw9esW92VMe2E3QCgOfWkRVhLkOa6wfeTe9l8CsDJAQRTT9SFir6+3F7
uBJmC0CWf0557oT72ugwM+PrtR/Jr28RYDiSXqlT7MdlLQba3AwjJ9ZDz2Y+p5Dycnme9Qgb6JJd
pGk7WUecpr3WQrrdfrgPkDwYX7+DOodfe0M51EhEr3fYD5Lc4agOIRdXcfTP7o1xMlay3TJz2iVj
/RWrNJkYfIQpXtXqBfPsWEXB8/gfe6YFHZjoPHRvEG4OqSOa/+otazzLXNVLdTrZSdFF2VqsLfIf
nFJvHPjHCFPOnjO2p2gCPplAohiOh6rRMPeirHv7HnZxlN7aY7+6VSRzX1mF0rdLNJyUeYd3YIxJ
mD0RkhNqow2nJamrIUV9UPASHnGpgtqbUFjS+AbwnLlAyYcAlmaijChY9pYcrF5UOO2G///WFv7v
p0jrkV2LNbBfhIcxNAaZQ8v6WhTgUQNIUeUdJ7ykjDeD6cdrQZ0emNJIEQQrHkROLbfTdCh7sPyH
iVxyRO+N0h4jy7a9cErJpnJwL7VQEEykouTvnwL3iNUleDVvdeiv/tYs9+d2PQ7LJj8PHHyTET2d
wi8G364NSNLvFbeN0fcFgJYhwqPf13TYf4g/cCyq+p6Fod0IKnvlajOgRylLYApY/UubB/OB54IZ
NWbPrXvm37+IXy2hk91VQFIGkjDYGQy1YAAvZjb7DoHnpxeNKa8KG4XOv9xwWMZbBEK6z+eCwcRx
/ODD59zddz9A7m1Yy9ZzNtNPCMphkH9gSI6VxQlI/sSSE27TC7XWw7vo4TOZ5zCGy/u7/XfHwOLh
35z61h7ry9tJrU70pFUfAEtCGP1fzrlRPq1tc7TZTce6MJqphejmZQmKwHKKS0R+uSJYVwws1CVU
sRwFKKk3r9vm30WdprDk+sUIGTvZSy64DM4+knBprYsGe5redFPwNIkqz+fHgiC4PAf4LBwQhQoR
XDVXdj5O/lId6aJon3OwgxuYXEPHiRe4LXOmdAIrtqqtvoxchlzlmEjub6eZHDulZWJTJTAEw1kv
7QFoUO4xW8c2gN0ilrZ4wKhGgEeCqF8kaWoZA9XI5dV9RROjPfBzA6Splxps/yJlniq8+qAE/6em
qU75EGioQet6PV+6fXS5TB9SMy/StlBhPdX2dHmhw5whIIjoM/Y23nkI7ksFeKdg9VRLpwW70VbY
lKsOsi+ygf8BBx6pF7p0nPsr+tQKgbp5kYUOwhCWK6Q3bqv+xa1z8UXdpVKpYFtHPshixQBlL4Ug
zlrGzGNqFYxgnrIE8wuipslMdWbIBEJhID6vpMNd+3Mv+HFTRP2ECNLySfu/dQOPHUMywzqQBC/R
+N8wkPNWfwxotB+MBJEJ574kIU/wxy9KnSfshQ3M1mcQSON8mmcuiHfq9HO7Uh6uMjPZ3FbSblWT
xuDFPY5ePPxrIyjr6hF4y2u+J5x12ld4htrqgD0SKhIPaGUIMWlqivcdY8VF1lBIh1pXnFT2reH2
kXuGvjYu9wL0DofO3H+glkZoqZQMM3JVwX3vtgBYWglTnt3OBy6wcEOi5M8EjSMe/t6IQUmdv9uV
YJ792V3JG6X6Q4juyp8/iTpGgHkLg9C3ZUI9tEhAKGmRZB9G89DVJPSrYum+Fe2LQOepYLODHSnm
jorO2U+U+3qsO7ePS8eEdPTizKzk5/u30qZBCvY/p8PBs8qG1IltDG3AHcVXvdv7fxlZRtD1MW1C
vLcrCtALiIq2V/tHgnUcDLok1FglhRNaXGd1AxgwRUXSKjoy+g5CAFqGlbY/UV9KN+alnxmtcPzr
PXxiI/yk5sexxHajqDcndn1+ljOHWjicZgIAMBZidbZAJp273VXiGnBLGLok8bAGmBrTFNniuS67
w+BdOaTtplWCkcUopjU17Ty+HIHV1pGn+/1QKItj1t64vxzmeAmUFemiDgxF/0vrLjj2v1BiYeaV
xa7jQvlCYOcsi5E3gYkh1/gGioBmvW1F3PDO2vpYglJN0pfp/DSJ5tAyFMS0J1CgvSKDJ6CwQ9QD
exGJuFdrSOHHWelfqKuDbyG1NUopVa2yX2Zt4eMBt/J8+giXiBPtLPD6pg/cND6qrkDJRx3scub4
zeAdbbVYbXben3Evc+HbGbhn+re3+FXJiXjlTjhDirmvsWzTnv8rYNysMgngU4KwwZOpBxrkx2cO
k+bCJmI3nDHE6M7fkXshHrMvU8tuJYuZwJWlPD+0T0iNY1WYYYYfnnbijbcKGGBXqdtxjyLGaBqS
Hf62mxUhLOJkZTy6YJGdj0TJZeVRv5BicoMhe9LuvqVTX/aD6kH1P1GfSnvwZDsIIw/yevbdmRd6
8TUloiWom1LW5SG6rbBvebw6OsUW2ZK3XBK5KYlEPBS0NxSXnghB4Xl0aZfm3ODQPggxPBYy6A9N
iB7gnaeLcYIb1OyWNqljB1Sok917lPnyq4qjhIjZzZjSb/bXWpMxub2FO1uVtO/lpo80Wnzb/QJc
jpOGMQL9rtsI4roawh57oTjrqi1B7gIhD9Lr6+HigoeQ1G01GzwBAeFECsnZr0/B+IE3GjyvkWsm
rTN6C52KkAg5bxi9QcZVAyIVIeJMw4MtipGHdEshMjt3hbiDNE7C1pgu+ynCK3AUOgNCTxPXh47u
dl/0BY4sxAq8lRDYYqky1Pa6Oi3euEKUYYVDW1qoih7vrHYoP6AdfmRbgHdzQ4+Zxd2DHzrxIlWW
IQK4QlfuzokynaVSREJWqgZKq5JMC/dwW1kAtH06I/+UYoiu9iJ4choG0FOzRKj3MTk5/8rMfP8i
n+Qq/fzX31aPKE6TzAqxGIjwlEFTfJf3n78lVWAn6zw9ZVdqD5nPvtsdWGWoD5AVMO8UqqNfcgqD
qbteqaxVkl3xIuOTFei14WzaYvwpsIzQADNspISM9sQd1S1y9RWJyVsObRfu2ZakNvw54bMrUf0Z
Nl19XM/DvuIM4dk1SgheofxqyfH1l2vWx/PE7muqIOLiQwnkzrkZN8+RP7KkuxlNHzrzbB1uLYfn
sFl/sUtRvz/jRZoDkRyCVtcY4DMsiH0sbR35iLQUQZXoZ1yTJhsfnIc5f46TzETdx/eNnc582K2o
RuKwqc4f6jntrrosuxpZuxrBWV2zgIkKYMPiU57LIGFXclS7HTZYaZLD35PqtNd6/4NE/epN0Z/N
Wcu0KYqRHe3KnZxy08Nps5EVt9QYV6R0NyEPaAv7fOhWAtLb90ic8se5s5T5q7NqLgggrbjFd+Uj
4nMH+/cKIlKPtaHIVRlIw7diaW5cNgOkNSv8YKoe60PibMDxnXk0MH2BgvYQi4wqWZfZ6sdof3Ih
TCfjas9yN+ulxhTTR5iy6WsdLz1xICwMHqSyuMWuebeCO+TcVJq2v2NwpTCtUbs+RiryC/KW7tkm
sFIbx5k5PdLOi8s9B7Z4cniXX8TVeJFIcduuEJgoFEFeb6axvbLbdGyPv0Q7dwm8gxseSOV3WLXW
W3aElT2/zNRgoNkMXhH9bxVuP7kQ+qrA69fPFGd7NrHmNlTdby+0IcbV/kKpjlpicIzOjyb64Ac/
UmOehTK/cdPA9AUt8vb1G12Nha8ZrP/Wc8JAmynkkancho4KZE+/QFVlpjqcebBNYAWECF6SU2JD
LZTI5JAkNjadlwRVX76sx9nIAe0mep2YC85t2hnm0ZuhqRH4SiLi5H3FJ3ibsYF70/xRtrAapCV+
iTEMFYvMdVXVidrFzLMCIEeN3tRZ8VZRdiMie+gEmqVhWJX7UdwiTLmoQ2N/wWqyZWbXa0lyjOVA
2jOBA5eGQb6583mF3cmZxfvwF7GnycNaI8GnsOo7cfgdqEbCbIVDLKI4Zdu/Ut+JUN+0rrqIIu0P
B/yYpkHrxFZV/mY6q7ChUNyworNlt+9944XyTjKum/WXln1KzGzNS7mQIrtKlXXWGLSrmPqwUvJM
t29xzVYIYVc3XHWgPGwg82fb8QtNVQF/UtfelvPUlw6vnJ37j3dcuITyZM6lgjgQlK/+r+Uik7yn
RyM2auYxQAqmkqPNBpptuIXM4lzFrYuNsgXO4VyNeL0hcYvd7Kj/ozk5lLhVX2bTWCQAh815AZ7n
xo2MmDlY3N4v3u+fJQ8X74IC6G5+uMHcT1lhGp8rbWOopuDebx4ZvJ0yRYags2mE0GzC3QOYP9Ed
Jn8v3jdXPqNq2VR3GVvwpnQ9BFLWS8rYL1VQsiO9wm7ZFfnaiiziYDJ5WvJbWr9g0lxuxPmq9pZ2
2bdqiqZa0R/jZDnTqn/s3oByZpicVW4+SKcvKKyspK3R0cWwZT53HHVjNwGLmDNhg5i0++eoWYjg
9QjMO2tb4ZZI9GqXgU7IhpvKJxIi9DUJT1ug6gNN0yQ0LACBHR3tt3H6i52AzTplMLCD4uOTmeV7
EyVHPn8ImYQRPrIIdOZ/nnMQMsd7Uz+8XSdZf2vhpkJ0pRk9jIfRIZ6M181YLEr379jkQgyh9szH
IkiIzs6zT6Vt3RIklUWetb26x8XrvvkJF9c2MehCepNIcQ9K+fJqVd2XzLT41qXNLgvFp9nbUAnH
HPqxO5P1ZNtbGRZvlVAtSWLaW+bfV6xb8drMFl033BgG5MuUCj0qCRpXvFxOZbVw5wDo6N7n6VSm
X6Yn2TTfMISe4Mx73jS86CUsIp8seSPCItV5Cv/yCuI3qemAU2lPhhX/eD3DiBCPmMlAIMxR48fO
oZy/IJgbPprOgObWfgnG3o0NAbi1t/PcCgwPlm+2hqgnyun+R+CHdCEj5eIbdORWEQTa5G4VXkD4
7pMpXJ/ja56BUhWRAnsEwqVJ7/DFS6Op6eij5HzFlpG6pHKlX78hN0s1jO61T6cAg/kELLMYswsS
DPmfEMJ8jZrPo+ZcnYiif8+SP3HlX3Lh9p45NP/UmN5M6m8UBwazXvR2Ak4cFzbwz4ryEeE80wvD
K2lkVP7TGGs9hWKpeRHgz0BLoz8MdpmxePqCLB9AdeIKVD6NFVX6+mmVsNOJMYPHOwx3/kRgn8tW
vbR4jJf8pf1MAoSvjfjooReWNZGFYygZ43HiHOIbl+dRsistBkn64TMLGtmzuaKiC3WLtPwBjIbt
yfaNuorlJlL+89qdzPLicU1279mpwjacVlzJNgAFx4GpoZcZ5rJdgePiaDQ788mYP0BNeyfGRY2d
aiUoKj3mA8RVn9JAbjz1HXMVcFTo3SRdf4vXxlQOERvdU7UdewkkjeFB940481AFuvT8wuVdXX/9
uUeBCRtNAMUBz342iAc6FnIN4s4qUMSgqK8GxE5hnsPhYbjceIAphRWJ0QjpN1Q8C+RgAfAokGSM
m3CFatIHyzLnvW8gE1Fs4EtDMBFz0jJjUlLZlKAGnPc7/RjwzRpknoRXbPnltaSkKejrI0+o6/6Q
FJjpuHEAfzb5L9Ao6Mk9RCYLZuKxF5O/s3IN/xSCATPFWchnrMVCkxGx46UdGdDtvmCiCDbn7wMS
dokUlaPoEebkkgwkI1Fp/o5gy8M3iVqu1h6UgouAPfZT5WFZccAvTeoItms1OUIVe6TvD8oBMt2c
mpIemII/9gTChcBbZ5jl/hIZDHw7WGfdIhPv7ohE2REk2kTbcGv3+YafhgQAcmSXHS1VV1UB3dxB
VaJa9sgFSqM0nH1mesYuHj1W/1fU/3n2fjcdcOdOiH90V+2cW+Z6NvaUNm9lruKMhvwj13w9JnBx
ley+tUySZ4W292Vh45MioJTthe1fM/3Fitcj3cePSGmH6VfjQqw1bJ3KxYbdbAb6/UpdtlFa4T6l
PdOKUix/c9gPp1hyF0vtFKw57qdhlNkDhX2+u6i0B/c23dWTD/5+rH4uEVjMPYMQnDfXb4n0bbqO
8UHmLrsJ+mZqeAF8zxRHVhv+h4153EtTPcOrL39raSBWcziSdvcBfjjaZ5kiNH2eEWrdlJkh2HB0
4lZlUUUwSdvDbE2EJde1dtd3VjPc+JWem4I6pW5jgRem7rfTd8/KAqJM60hdGGZvc5UGClXeIEMt
+SjIddz5JHvFwP+y3Iae1dBKPff9wC3HOgZyK2BcI0CBAcPJUEOBeDySb7OvMak2jEYGYSavufaR
gP9IIjOx4dAaevltakGYuZ3vc93j37zA9N306vT4M77JU+SLl4k2o9YgXinaEUGXUyTsn1jc51Zt
frC8AvFBHZ6FI+4qJLI464f2eJdctjA08uQrS/ibbp7byMb367VCkbzHh+vEMLdVIKXfSri3Tge/
oUeZQbfrzIhv+r/Ic6ClraTzeTL1xLHWJ99UTqWXFssAMrxM8hFulmIJhjsKTxFzPHwb+HucVvX7
aVP93XRWkRH14MEmHscqFnCZYLCUDttSYjfMeaEzG0027ejiVQ5SSBZjs8lMgxFWfnz9Pd5IysAC
fJLk7IQkA/JScAdE10BKh5noNaNMobjfxp0XioqA/oVKee/FFcewIOxeqnPIk/wVWdM7Fhg3j7RR
hjDwjoOYaRGN4UqSMk4KJpqh879MmbwXmP7x5j5b03KmY9PIqS0Z65vjy2PYkM4F4GgGpTR5Bq7a
n6ePoyz1HtZFEvR67RVrMAXp6q1VKSziWhvpLeSWiRGdVK9e6a1J7R5XNOw+k+QSgZ4AcOF89gZn
DJxmLV5DiMZmCofTHIyBL2I1zCbD85ChzTB/cbMojGjqiWavN8GAmoUlPzn5cDGtdfmnU+7oDzYx
AOqcCzA6BDggzKgkzUJlyvjInzUMY7iI/J2rUrknXtwb0vejlAnDF6axH6/bBWXEmFGuLrYiS4Pe
zZk7/rDuxuJJR9DX+4h1FAQqnnDQYcghE0bRDOAAJ1WXjQ9OFi8qEmRVoeUWObRdBGVDnfeyRszd
oL5dvRLoFTGvj27UtD/fl+Pg5dOC+OTqUMeQB+agG4hGPd7BDngiBnmVI4UT3IGIDH9e6f7CgKFy
sjdddlHTDyXX21hw4mXFUS8YbwxSopbA7GouvZGJ4K1RumuUxk423Yb1lwZei2R+Dwf0gEheJ0JX
jXMLrIMf7kNnyJKB7CvwFM+HGJqLn8tzJ5jTcIswVHHknDqpePRUT0KGSz1LGUAjxC8TRWb96qLy
n4cy+QvDEvptdiKJJ5PuuN6wgglbURTc8P1fKsiyjruv4ZyazX3zDfRUw79WSCHU5gEoqt4lKGbS
vNZMsRUBqAVlaBDEj5WUO7LJWRnxhw5aQhI+Zvy9kyS3N5i7ZPC5nooFjmBxyvzZ6w8QN8nPSxeC
NsIyXh35n1TYHdVFkgLxAyed3NLcEuH8p+5yh851SVsdiY3uV33mdGWyLo+QKr6OW77xFk4rEfsa
kJJOd498sI+Szk2cwYSd4dBujRWJDhIUO+9TT0O/lxmDLYrUfG/DGIdhAj3zJ+wdG6uE1NoZ56wh
MomfdISKACUjDNm7/Yrbp85KxaITw2RoTx4sX3Cz7mbN8xOmlgl9cjja5OdF0uGvGsAznEvDYkOw
06yiTGYWvbywma3SyCTiNJykOG2fh8VBXX7TrYfsVS4llM1YEIt7DCHPocDyj8zwjxAzGYY49vcO
vw3sk2u+L0MXLlsPEnCXkGZQ6tFEAS0q75tglrBpTX5mdRCNPwGr9DDPB4J8Qr9LBGi5WIs51nRo
j3foU9FBdulqKhABhfVZFxaTnKx7oLU5VSuAsjElHu+edVqV8uxzOB3A13Ke1/TOXUNAeMRe7Ydm
1XmDLu2dSp8gXVtMjGlFY5qncqbcfn+wgTL6SgGHqDLnfubjwBD1NrepquWIXTgNfjCoJsk81fiP
pWjbLka+f/L82SxJJE9HDgLqb/Ej8MiwBHveht5qwFiXTdiQQzJXx/hx/MCdu5P4ilcqUJO+x3b3
bNsJ8aJFDZcv7L1UhJEd2fkqVxHm0YWTvW2KqP8rZCVKoAOHUmsPbpPLJQl/0BMzuhgnZMREsv64
3JZjPNifGzMq7H+2KQk5RQ6kn8w52P/6rhHR+5vsvZrDEcj00PURzU0evWTaCjdz2bhkL+1LxePZ
T1AuqFv4DZ01BpTj5ox3umRxgI24yWDOyX6TJ6WK2Qxa0hBO92RofSwJX1/O7zZFcnGVdGi+3/w7
lQOPJXYAia++p+APvK4F3gA63pMRybGwt17WUZYiYYTXrKTYnDOxkC8QP6d+q+h1jixTEcVtm9yg
dKqTmRaHWqSkdlhhnUk3CYUtwx0zctBlIhYj5c5myX7Y6z2USTm1JE624Skj/WcubBSzsPU6rudw
bSgx/Hjrt5GGO6kzPuHQumtPY3Q5V3mMhm16p4jt4EpbedrowmO2UuIX3oPoH6VZvItfsXYznQuB
Nuo7d560Okt4uhW0TRHf9fGhaiOIezDU/oHZ2+/9LCurI8tgnW6m02GS99hBoI25bJC5fTw3ZSa8
xN/LOLYz2Fu8h4lacSY9N3vWHuZBsaVGQ2wtV8lSmA7SXWvQ6DjkMXcnYG76tJT+JwErJSTLsaPx
rY20TXJ2CJGn3WyUEAReHXpvYn5sZYtTtoZu+l/rFxWTdJ4pi3HWciu1kup+B1tm9RGOYg9XRt58
HZXq+icYvCiSQWrlPEPY2Z3RODOHBnWr/p9Fqmm5ED8qrEfJE3NzI9y1vYj2wWqbbc0xAMJhZWBh
sf6Mji1Sy6xejKHqlo1whPyE/dHk9i1H9EAwkRyCEJBuPV4DnANRDzFsXIoQ8u+CMNHBWsUUCCsb
3X1Vz7Yg8XEmoQfC6cUTouzK9uKo0NET3/eWiZ0IS34gCGF02KFnfp3s+xoa7LrIvKl7+rKqvu73
e+CHq3q1cwCWctxSE0qS7NPUHgM6eBBtKCAPKIvPtf1SedKRDrS3hdC/QXvxoRo3dNR3yRlHm2Z6
c63izzLmW1YWK3XC3BqjC8GYs0w6VYVPGw74z52xOypa8lYlFczLkPPad27kSE69y6JQQFZ62bVH
XiiVNXJIQi0lookNtjHIwQlCmxNxKJynjnZT8oYMo8Zymn6jtJH1KE+weYsW0l2+UcvV5e4HlneN
L5NEd7JuOLP2HWnzyIrbM/Bdy1gR2zz6Pc0W615WjXCCWqWxkjVh/yYP786AmqAfaE1u/ot8wPjJ
OuKIUj8g7kGt3n76vkUIgvVNdLd4nirjaM2s8V9mzEUu0V94gTy3ZK1hBl81KMGFlHrCDULPvc9V
2G/1s/pR+a6PQUlB8NDU7zkkjvb7W6uLV9oH2F9Mig95BfIqVhdqel0p5/nPXb/QLdj4tBj122mg
/IupOzMj18I0ci2h1DgvNAaxeqbzALasBztdflG8qa0LmjTUyHTG9DM3po8qTXU2rdwfD8UkyFEg
iJChpdYknyCXbIz7DtslsncugHz1l4rFPHBCrRD8LfSFxBEXvFfFIVPSA6XSFnDjHfGH9Xtbz3c+
8ISEoYikRDtcGJbiBBHA0tzST+Mfnv9/PhF+kuHqrQC65LpkqeXwT/ZRTZzf9LC9DG0cSmUsSUNb
XVumNVkkCkCzY2RmK/HREwhvUpg+YQtAz37HfEad6Sxv6pCYwpLFUwBs1NQ6blO4/wj0dc2ishb5
zbRBKbtz32Wu0YS9GxnaB84LmWL+XvVGf8PVZkJGkV6g6LhCUki5bLLViAAG/2+A1+nC2GeIleUp
LXie3GesSlqJLD6nbQfaPaQ+jtYcEsm3ERlwozuOpojymG6/T78QQ9vw/NhlvmSF0gmztp4+kdTU
Pil8r3+6q9cw9iwe5IVdMi7J0JqW4WwiAKG/V5QTVA56MiROljtJa5XUlAmnVNeQ0tjYYSrGuPQd
1tl6KeNqTRCaD35K0/H3YEXkERczV63b+xJRecLUZr9Ej8uDfSbW8JasezjAdWz+TloICw5ZkVmE
9gLQNjDsUAGJF4q6ONY4VR00cwKmNEt8w1Tlw/FYDdZQfaZEaSIgQoaU1AbCUz8y2GWVjT55DkxQ
DhdDZEuxSEk7LyP+jFZU0IRxtwO2O4gM/KkKsUrMe3c56UliVPOyqYUoQV8gioZrDxlTf+AFZkpN
NJaZNMIgpVfKbP9YKTxFp8laM3GjDFFA6IAWxUBy3POa22dCf1BuDczsnBEDCxwCGKcu2sUvHs6e
i9wtEAA4KSJs1jwy4PTmgGdJOhAYJERBeE3YaLa1HhHKTk00qDMx/geWSH/pYNSm+c1N7kI+qiCh
6gNdqSRoSHDT+n5JP3rMzXDKyvC7W1PPS2H4dMxb5t8askFSAfuPuWT/mbh3eBcuwhbt5Dia8E4u
nO3YJOq1hTXf7qJpl1YiXrOOCRA7IS/jRATp3+gJi1nUXzcG67lxsooeFQrHDTD0RO1/fxnAmJtR
CmI/AU3BY6IOd0kQsKter/RAeYLq7O49N/flGcAX3af+MJK6I21KJkksnFt9YbMkUtmOquB9fAvy
NHtjO1W1U5kIT1lBLmgvhhpgpRvpRrba5rs0QY2vdFdgai3715HEBxeb9VCX2di+xMP5ND7gDaEU
0ieZKqpXMS6NZTG12NoZdWiaLHPtxHt95Bgqgl8ie/2pAFqX4wWivp8xPco3inT8JsmACF+0bsv0
D+I3tVe4ChktlAp50aFZdXvUv0RIkTOa3umi3n4NkCGjwhsCwEsgDRqDOnSsR6Am0v5t8Hj/JfOa
UkHqzL5ESADwpJnbDpBgRA+bFESSBv0GKLH7mSW50AlNajcms/OSHJTCeqrf6gMyQ9C6Xonm1p0z
x4FnKDa/l/yFAgpAgVth+hQbcL3fpIaTruRGcEe6aplYtKQYwQDfYqJqNGUD5d8ZuqQwWCTXJYX9
AkUld7mTzdz6vn6I6RJujUiWNq7OW5q9uG+zFGhjR4lnttv2hxR2/3nnNxHyqGfS19K+a8vQwxfI
GcpGX9i5TR5aI8N+gBSLZq2ZayyduP7lABvsWUEP8L2SLCs8awCBWgohBTG35XIg6Tz4TBJOP89A
3oDFVij7wF/wjjhdRQCyBP9P7EN/uERjftUqfz09J9/NnsO7QfkqE6s7W+xkJEQNZgYTWAa6bwY1
PKkADyG4igXiFw9uc0akrJFXrCGXkQ0fLt4XKrlz7W+k9jxvLAJMqH5CT+wOj6ZtV7JVMxf5S5JH
SLtlpTeGN3o5l2E+ZlePwto4PdtON8V06BRj83sw9g4nyXCOY14/GbkOPxG3X6mv7HyALxfcWLol
53MYhKdfAJws9yEIQDAFsvYF/zHHIgaA6X9Poth2yLZRXQam0BQEcGEt+nH0+deXY1BUveVzi1Wn
xGCPEqv2E+rPj43iWMC6RtMelCCodHO7ONGBU00ac5yyXw5wQCUirOCuqaF8BtwC/iewbvnlYsIC
OS8AfpwRJkYXA7arzpkQ8gO+dz9svmmJRth3hxVAeroZNwlsdok+QNUPATWXnI7rrpfxCbg+15XO
n73+3I/NyMD3AuMQjoNExSMcQxcoeelxtkHAWVChyB4BNL2GGPTsjwRCVRNv5exwoCUmr6phY1ok
JcqVdniav1Zy4oAh6JmnbpHm+NAhB4TZe3ELfo0G3GqKYBl1fLGYtFvf+mopxfChr4xH35uj/AdM
9UIG9XpCX4ORgss6ZMzazRRKPBwMjUiQP9AU655KzQZjRLOSpxWdzBGaxCCTQqT7BTgDpxflpzzP
s/38jy5KCJuP2g5UhERa28t9YIEhv/INysk8TVAj6242WGL3i9RhUYhOjM6DahgmI11SQxIkVAbH
Jfat/X7qzjEsprgJ/rv8DWf2tg8sm+gBCdFeaUHcGUx92F8uTkqkLFeuwZloVemnHXdQ+43aXqkC
PFah3+mREnKWpsugXPsHfUqdlKiYVh+0+WscrQ4oYiRq17xBthnVT0mDo2DcWymYV9FQoxSegnpB
7+QBNPELqR6dlNZWN5dGrZf4cPhSMBe2a3VTnbe8AXl4XQFfl0O99QVtgIy+keIjZqT9H2SPRLbm
2JPjnnub8hvTIFbeDKiclbYlG4gZE+vefcYHcLOMF7h4N0l8i0smvUk3gGL6HEQLaGHWcL+LL6xO
7BHC4msPKmQGTzRnukzqghSd5Uv2DtdGaVHMmeW3+/LnX0JCH0FzAtp7AZqcTMS/iXSz81PxUiyZ
V88hOc5zNPu4dOmjXVr8qHWXGMBASuJ1R5MSD1V++Ob9m2/UVPe3sMRlgMqsUHkYnnV0T5yTGRl/
1/llwnUKArhcj6B2N9ko6G0wivrfo+7xq7y3q0wr59+dqepqSKJ1etY7F+V0NmrxuI2Fij9Aayn0
egL0HVDew1K/CYI1DhDfrldAM0M4HQvoJD6vWk+6zx4M3bwYugFV0TVs+GRDevIjE4f9f7uhcts3
nZmTvVzk54TPFfzDGw9e2l4tb2weL4cqD0x49+F4m3vV0Qu24H75kw92knrQQ071DEcJOW95JaSV
6+KHuXxJAZnDZNbxh9iaVBxY2v8p2bmniqlJy0vyachXR0+E7DNCOSOARhJHTRgTg1gkinHSNjvw
/K0JgXgFc9Vgd4KQyHeP73yywC1c0MZda9NaZZL5Qf97LHvTxqbli6GcNrcKzdMUa41BHMWfM+vc
DWFOriH8B0nhiE1RMKPnFs4TbdEvds8YWt/IjFbAaKlgki50Fpw3ZTfDErr2DIHraMEFJ6OCRYgB
NlLv9MiCzaiUw1mDmk1qkHOY1aoq9vPUSs/vwGQpB8jgMwPGKeEH1angSfuOEhquWnAfrvv/mHP0
rPmll41PRilq4sB9iQD6Wz5cYcSJq24eLYL/8m9vKVtAXrXa8lkT/I8GNFmN8EaXLnd0TE+TsPZj
s5UC5+AHihqtMGVaqSOPeEIGeUwW9g/vDcuGU7l0mJ91tFX+ycW3fmPlFjYi2sO3qmrSRCS8v7o3
DvqTwQfv64UIuWT5Nm6E8+lA9H0rdMcPKLEbEQkpjIBaitCDZWU83g6HKJLnteZNQ0A4jEroMN43
ptTl8e555WKtf/1npRQyXL+8BIaYnIeLkpZy6RF5gmjfpdrZJZT80HPR8E9H+mIU7cOLlr9xr8yu
IVOLC4/HYJIYb40kTXEUIycbm6LQpyxkGxyeSgZevdjQoynxdfC4rcCoOr7nTuPJIklCC6G2VbKd
k9P1rvFSN6N6Isx0T9XGcWYrAq9UKPcyQ+yUZbXkAIrQszSe1eK5/K8IwleLh3lSmPSC+1UNogmo
EPZhQBTc7i6sCE25Nq5K98O6ItydSGr8i7+RRz7UB143oruMfwjHz3Fxk5W64QNho7E+dYyKsViD
BFOLi9O4leqjYbeU19CYFARabivjYhoOHfrCvTUsV7yrygIFybXPFusYXKsUNlDPq48UWIjViS17
OBiMcivYM7O930aMZPYmhHDTV/1dJCfIu+jfDTQGY8m0vysgtsM9mOVZ8VDdCk2YNrxo6OMvpj/D
MbXnyA9MLg0EvLhHYuDKj6/GWBoQHomt0WA9vmUVBfFlVuU7Q0did1tm3gBscHc8bE2jfnpj/HCA
UNNa66v5Aaxz60wTZMGRvAssz7Df9v4/rhYOYiaE3bWdYCcbLNbgVWExEHAQrgNh4AQzfhuwM7Pb
SiPQgZvohstyH1Y/vFFuzKpohAjUa5jY35WRW3rvfBDRO9M9dbUyDrKjkeK0I1mLgG/CxZKlFNRN
ClwM6GVk8K+5pZhgmApc2253S+JMsssSlrzGgXXeiFFjbq1Lfnqw2n2mNxxo+tDe+fSWcjK/RO+b
OQK+nrdQS5Ndaa0jRBvQJh9tyim/vX7BDh3m/GApIw0t6cVLfKdoF2MuvS6E0fY+zJ1HGtyF1n1v
Ei3lkKdttERGIeJl7hhyxzeBvxxTc6RjZCuTwaIhNhTwsYjLAKgzgH+qCemDu/EIQkg/cfkecL/X
U21i1NwAZnoGg//GLM5vqSlG8fDaFzfRbzSrnOVFMtTEcomay6yKWtsmdrJCYSykYM3oY1P18qDL
z678A80EUnWquMQl8sJzFjbN5EGzkhMK/TtmN3HDKLk4xQc4giQ4adS425eXj5lu/cvCyi+Tp9Fv
c1jiyQvKF4QekvSduK9JtOYokNwfIE1I1PZ8LaVaX2W8s9DXly7CdrnVed8JUdzbt4Okh2A5VpEa
LaDt5G9WNBSJDAl//4/2S9PkW8piwb7fjWWEvx95ZROsIp5JKXQ6THgLxlGVA2Ug1SwgPWO2dVBe
l9kYA0U5Lomh80WJORIhTM9dRhH5s/mFFADaGTzfX6kOo6/xFNEs3m2jBQkHbNBz+Qms/tXAVJBC
GN1anYTcsqJX/Ni/RhEZawPNKSYKNa2XJBtf+Y3NCmryMJlT9MeMX3BGXP1c72Ss+NZQEG29L38y
BossTjKB51xTNvOWuXerP8UbMOxU0R5ob2SfN7sa/TBEcBzstPfAQaGMlDQdG2Bb5XIbA/B34/Gu
SwOSCq7QwrMrjzLDt5XgGpBceHA1cMQq8H+MBL8nVoOIqYPt+zqczF6cTnFG/loGuUFkWssqZS+x
OUELzAKQrl+xTEVtr7KASzVIpPttwYyJC53RknI5K3ceRuiZ/EyIgjb+3kfZJ91BvyXAgrUtYmIt
d/p73XIZmPE9Fmv5TBdq0uuLS1QN1rhXFZrDZv+Ad7l20NcUAoBildtT1RrAPtPSr/tIEL4MjpkP
6swdPzrqOlhRfBaR903zAxv63qA5wsRoq1pDcP0OzkH6dTY5P1+T8rUfC8tZRSvKpgHliJsQbOp4
qPI5pqhMWrrL3OzONCO9S329ivqUn0q5MQcnzLRBsdK+VWKxC1ZsemvXv+qjlipY1jllMuM6TAqt
i6OYPmuLNcNemg0eNSV2L5/fIxPWKVJmRSrpFgHhgQ0Z9j9HiMQrCCkC82kAuK9bocjEc1/vM56X
8AO/kX8gqiT5eEMJKttBAvv9G3lGVOpRSyM1jaQ9WiVnKtzVmpqiSvVHEGC3EC5mGzV59qC5vUDH
dqOYN8wdT1lb0ZP/8S4plXqQ6EwrrGwccr2I6sjcmXz6tyRPmVlDKJ1vf9NiPRnDS2tsCz4tAD9m
BsbjKMTAbtJWwtRnfMI8/3R/XxsdKlBPbiUY0CWQaXoPCH1X3lmndKGClFVf6QAGzoWXuM6aNzLV
LAdipYKsxr3DEI2u7NIFQSQLK8KwYHDsOjGhE9+wAkLKBRfXZG4FTtegSM/XGhRK3FE6aWHl5yao
sd0sVl/lbTrmpXE0uEUQszY0OM0k99HoDLwp7U8SDKnV5meXy+URLt2mdvobaOlRRV5YJOO8QuQ2
U4WZdFTBSPs7+h+KPKXvJmBkLHJN2hK4v0YjE8twrwwhfGVf2rUCIN9ZjyZE4ipRRxx8ObT1Dw/M
Nekn1ZtPpbM4eQ27GaSvbCkHAel8ODduSGXcELIJbyFP+xoKyOeyQPDHaaAAC5HDJywRT1MCv5sU
jv5dVHjDrCUtlkQi4YaZcWrwZ0BRWLfeLN54v87RrIEkrpf5G0AqKBH5SE9RdUJw8g0bCyFLQIUy
/KV5l3uLeIWrdLeVO/TyUlEPbTmR40XoIMHWuP8BkTv1XjCcsOZrUQVrB8ls42GkHCpmV+7opOtT
BRu9X0QqzbtRthtBVyHtvLy6Gfn15aEdO8GEnuTlJeIuMsBQztgw0NFCHetx0bpHx8+Ls7R1+h3t
WHW3H3/1F/N6GA0on4zZbvRX/fysTJLiLG+kc9f7je5cYXICwMvFQp2gBEZimEMTNa0969bLKOWb
aX4jfGfoyoisT6I07gOwCRfRvWvkELGvkOYc3mpNyiukAk2MisTi4BTRruLpjQcKWAWncDKBCrdM
eToT5guW5E/mRXKVLPAKcmVGIv9t4GPfqB3MLuRXKpOKWMtL/PHbPr9h7FQo3L1BIcNayNoGskPn
PmrConKnl/Zx5ZVBug6ohN3Y9kd/FId1o/0k4irZzYEn2VOurEd7L26v4llvzmTQM/gis58VLSwc
jOw31ZgG9UxpdsldrzGeGPiCIsdfxOoPBEbOPtbs4pWdhBAIygRra/NE1qogZmaywrWzMKNV1VZq
lAIlf81oxO3vg0WUUq4P8ORlEb7BJRTBpInjOw9RZfyjalcrl1eZ5WWAeXXPlvtKHCD2OxEiA7NJ
bqJj1oT+5PURnH+eYbOnJuCa0xjDrQHnjqO1zTOszpM/b4LFhWEiFvYkac0bkizW29wrFOUnafDg
a0l+B6l7SdKAg8RfRAeRnIpflpP5+3OjfZUxkaZ7vYvlb7ItmByeML9sH+/5mlRabwkrH6T2Yx/Q
cPQ9mzvNdRbx/owoBxzOGN2LuFirrH7pGr5tPNITslVUHps78DyPgsvF5PxKvUeqvzJugA01Aizs
Z2+hz5DL12Iq5gvaZmZBZI3zVW0kjOjuUZ2COD8NwvR2SN/wVc9m2kPfTfIyR0AYSHmCSrhQugjq
vc1K5kChoyNr9uEGgpn+L05sGmbnavGeWOVrNOqncwpvrFL/b1WqjTljdrQK2BkYT/W0g+WHdsas
P8x5F45ZozM7NmE+Zh7TZuo/Vir7nQKPuTrfmmSsbWZD0SJHs3XQhb4Ig4B97XDdGUyrHN3ZguHf
ItnE+jjbYFvGBLgSTyJveXD0no7ycMpZ9ivwpmPpXgjqfOW+q7Itn7i/NaRfN10DF2BVsxgqsAgW
LyO8MW5isXElcxFXLJBn+yoxcUsIVbULJIwHCiVDaLNkMTauvlVF9np+6HpgcHysWtsSgeQnPpXN
/lyqOskqvRAAxINLMkcuTE0GIo1fhnyXBQU5cwoTGHoY/V3LlaW3T8NZUwo7uH4FYYTLvVpbaEfr
PVeE+4JyECZaSXwg9PVjpJDcTG7qnr8p9VcsdM1DQAog/6+1KhDoezwbSX9O0OnMh+3RXakA0uki
vsDnGkLpj2jcAV149WFI6w+4ymLl351HQMtJsxPqrhuxnv1zS0bY/AhWNod2U1jrSZNgrSRNf0yv
fSeJLNANslUuPQ0oLb2RfxoaaOinH7aZOTF6NhD0cVbuVuxaVI/FyLhG6q/jJeNkfFVE1elZrkkY
D5AzkEzydtzOmg09BpJEJITi712u/HQ4WOgbRXMfS8XD2OUBk3JwJ/VVtAaa6TJGzE58NqEQEtac
dLBlipJ+ikKI8VHFunEKFiO3zsdm3nO10Nu8DRh8MZCA8ckmul9XltU1m3Wffu2vm9jQj/1vhc4X
laVhxkGx09+8zDCzc3a05z2Gj9xQ1oPKbc9d7c+F4CrWW97TYVJzAeljCG1xhkeOqOfP49G4vJdo
6xyNmr7hNwH4LaEuhJnBSFLWyUDBCU+UdX3v6HFECUM02wzkBZW92ZzHUgy8Hg1PhzPXyHJzOAzq
aV4gGscNXj9tsuAX9UKX/B+rTX6o3KVyGEJxFztxzECxNwj9gPnaqUBRo+VGy5QMonS0RUoUTRNr
I8xb6Ex0odJa2Sw/oJwInYM7laxxOu0j750QOCKzruZm7vTYYGLktPAtFnSm2Kgw3L4H4H79FlD6
9D47ef3OcJTneOXLi5RA/Bk7eqMZDEOLCDveilQ9M7s0jCvHPI3GxGfSH2Ov1FH5agdQZqN9WCnb
hYv8dybwxznnQ2s5HaspJWjXzqoEvJndOIk0qNHJqoE8BYOOW7Br2T2zuObMtEMev2qahx0RDTz/
R2A3BDv2SkuYBpATUTeooOyv+HeFSk4sIgNWvJnJP4q0jyhm/BQR5RWpznMjzugh197r3P07+Fqk
K1z6rbI8RTmIewZd6wP0JbPU3snfVzdNWNLH/2cqP9WGpj8kez3ra9lqrc50tDg+TvlNFxKsqI+m
4xJJ2CUC7Ti7pnKwJdoVKPEzyXdQNaRFkxerXpt5nSduz9XxzmaS3PQxE99p3MLRe1jthuU2BtUN
WUilX0TFc0dNRYhmETpwMALM7hL9rwjM0y34s2pmvtqbcRpu/nO+/vA3BCOdLLSk4ixzI57i861u
oVFKg3SSVMs+xmhXPp2pL/0qEHDtUZQ8FgGRl68t1iW6YsZowSGpa0hDNIHi/jcGxoZyVI4ePwpd
cUWRfDwFtRyZov+KS7q5PAk0nJx768b/oa4MjpmD8WKNoPLIGu6pFlI6MahDqNupP9jLAs3SQN9F
U7JrrXXu7lPPf8ierMJLsteiJR6xLgqPfj0UVyUYQ8surx5vFkVB3SC1mdMP/xSKn0NaQzsxPz0l
dJOpI5gKu5NQw1l/lgrTaOPv41IQVPLUBZ7fFolID1C+f76JHnsZ0dpRm68xHBH0xypSHYyv2ryd
xFXeDJcibvNPwaKjnJOHiCJ8Qj6m2R7ucjDfWW2+/AMds9/oV/1OuBFDOcdLhqchHbIQ+E4z5D/Z
8oLU0l9y4rSXhceJI+a86aH9eookCg/f/b9GxZcu+Gi9elpeJ+IJvFnxgPd2woaDsyGbsBkN56Kh
SxrKJbFDHaSBO8hav9Vls5luQtlY0rkrQl3icQ8Uc2xAwA+T+c4AGxlZDnEGjq3h90RuQGEFbuWD
gCsf9WEJ4wxhpX1bbDGSdG55upNScHiHbsHlcPg5a14aFLOoI97Jevxg9bXcXfC77UsBIQPPOzse
E8rto4hc/0RgMVOCxXARsEgh02gR6PHV6u+FI63+WeibAj3ZG47y2GecV3FlCVnGEZYvzrkNoxCq
O166RI9KGFusATLPOPAP1bm0uy9MpbBCB5dvAiBYvDteL2MTCRDIXXYm8pp1KCTHrlYggxmQDe4h
2qpAapKEy2jLSn5Rxov1NctC61TwFWer6nT4fJE1Mqu6WGEhEHqVjNlqJv17GSKF84BXbmVzfe2b
IpRute2VLNsOkjqnDmh2+mSKR1moK3rcmANP2VmtcgMR1JGiofw7E/HJTe9pSk7pzgWyCoW+xBc1
mYf2g8vdGK3sQZvIy85iOSvtOH+nb7bz1U1bymLbDravGbzNXmDKyE9Uc8dNMn59W885fqMwu6bj
we7gUU2cD/CTfdjYWG9Blls4aZVvC/Yi1D/ZSiCppztJd8MXwp9ZRaNQvNS5Dug8DNdh1g2cE6oi
pKTPu5+krOic233thsksNkAZIAD6umC9MMmVDPZrcid059SdR4H+BRBTujtDoiSq48DAb8Fn7hXd
rc+hRbN8r4Z/5uLBq/WyacIinoyziafwTuU2M3gheUlvO3fXmeGQ9pfPm1fdLgvMIgx+FxXmw0U4
tdOAfSFZSoW/aDTo5hsfHbftInhx+2OGIa8luJIRfdwq1zkbX7j7LVCbUYeWR86Vr+G70xfvd5tq
DZmRmtq19GqLP0hPbSDRmNMy+96dRh+i05j5wORzUo1Dd55udrXUp8Q5oOSKvqn2DTcmYfSOB2On
xYp8GY7tpjK9evMczj74azmFx+ahaBpZL+XcNwLQB6iCWU9K8xpRfgRLtBcfl2I6DBggZBywazYw
JiIi3Fa/wEMBvy5FuLqpabxNx1vRuWlXvBKNcTJ9tjG/iylxdureuLbJRueiu9jFC3wLZ767IFKE
3ejk2SCazt7TuBRKCsDvZBodUORGUNxJDIfLGqQ9N+GlTdC1LkkYTC2MEHy0ZvKOjSVrDc80lKRh
FunHjeHh2WInd0fcUXkd4moxFnfFToXWlD+7ZoFHAG05FlRiW2/bXJOBy2ExEU7uvMvLH/KpvPUj
AupkGFEaHJ5uaTAsGHEb9PQDTH9/P7dwSwf6R72+ebk2Gy329LYE1o1Gf/xusUXKGIamSDeBxSQs
rraLIxhIeV7XrWcdus8DjiMJzmRkHoGIUMKastrux7m/JKGqcBXevGp/DDcwddCTBSxNh+bqZwye
S8CQfhq6wTL9jry0I2jDo0+RrN+qIkN4ZxIoLuQji1MdLzh0+8lffrfiR38F/TRtGzeLAmBIB6i0
/b7N1jSuhRUNlr/mjkT4Vey1I1aAkMQGkFXUhpMwa5EuIfxGtaKqOf6dnofSI4bU7gvP+KtBLyj5
kXXwVqA/2CgcU6p+OxoEMaKNHopQ0BOsjYWl5B9G658zPJ9CTnGp0ew3Axxrbs1iRwuyHjhHyDuD
CzJLvWYzhh9UGmiMTa46Fg1PEPh3bUgubDpH2FQwZx6CpQS/ZsJvQ4NTC9JAyaskOBAbWf7FcqO9
otbuTkecCGkIQOmDoJC9dS1yMjGpfWU9EyntNcf3qHWU2rVxHNoAUuKFvPG9ThJaZM1lhxyKO8zH
xnixGawls4belDs6Q+UYUa+QOWHNo04MlpYDXhpNEj+9DSV94NeB+vDlAPwEAkTR0A59n5uFCRmU
YSVhYZ0IlZGBvIC3jB6YTN8oz99LppBlPLYEVf966W1bP+uA29YnruHjLatGLT7ynaNvvtqgJ7qU
sNzy/XOxHNFrqet/VT7h3Puqj0PzRj17Iv+spPc9Desp95Ef3TXHhxSYn3v6V9EedyTKmuj1npm4
JqEHGk+CeDg7ee9JpMNhpVRqRks1fYxoHOUNitm7IZanZwhL4kMqTKMNybfhk042+w2sB8LL7PXm
BmzQ7V9hoS1MtMMLZXKreKyNT6nZMB/fUP2EiXwjqNscCkK4p4axjw+x+Fzre0DYrRgB+QtIgsDn
gmrkAeu+hJqnoX+jn19jVDJu8881cVlsZNPm2C2kvNTtecRHX0zSt9E9uErLlyaDVCPZSt6uTUSE
O31XvSUpwEVo9oDWeYDyMRWeFs87iZM2WpzXSci3JgJoM/qsWlSQzH1D0WaWUrMR0HbV2zhfSiZi
skRDfJRsiM6/42prrY8LP3CcVx3IcSqq1mPe9cJhY9jjWIzKI6YYM/QpBmqO1GBWecP4K5zNxYUy
893ESI5vxR+VUDd4JfR5pz/Uz30lOG4BPI3whsYC3o2gwxXaPcyup9UM3GfqsYLdVacjwbLIeQOa
xUHp84FBNup5nWcO8dOGkaVuhCO8pygzDmwH0htz31CrLraC8kyC9znN2ghpgDo2lA8sec1Hdny9
NVMOeKbPvvLLS0W/crrsgiA1UFAO4pjydsvQWLzvWFrmqGWYnaCB6UZEtICdqZ6oOUFaYKtzMzYU
Or4Wmbs7jSjqsN3280heunQZ7CYX5+4kURcWRZiNkOW9g5dThGzuXP4deAdDi3QtX/15g1nnu7fh
fnXpNKKHg1wNzV6ilHSDVIzTDeAPuW35e+eGy+iP5+GH3/zSjt7nB+mVzqywf1Oum/YLvTTB34wG
dKvtbC26N8CXRyoukn5HofYZ6g6I+uOPeue6iUkl4giqw+UN40Jsqz28P/C/eHcTUYb7/7W2e0GO
XHqeSSsm9NkaT25ATLUuN4HG7j8PqMuuq6EIF3u7INjzytaN7yP8jbxo4DkIyd3A2a0stEOBP600
kv3klIsxc2pTtDbT3rGd5p8+CutiEnu8GgLs0SgY/yQXGt1M+5yfrxzrvAEVPqM6nz1xcU3rEbHd
kOjOfEZE8GJ/J5FNJYX7JhvxLhLvLfowhmewmlFGJTX3QizMe8XOjOsMVmWyPC3xOoPzLNFVIWJu
1JRxPf3IhzJxFME0sjqr8DOH9cDFppE9ZiqEBmVn32Y3IzRmyOxUBYHywytrsLeWuHi4/47d8g7j
8XSdsGCDxrgpAAWoOOBI4dz2Aep73AWDvqC3X3bNtlmtyNpAJ4H9c+7nxQBhhu62pDRoqxtuykQY
nMXaolY56cPIejQ8UEIgzBd77KeY//pEoWklJcWanpoU7PVkKHmMs8yYsEaw6GaY28wPGOwi1RmK
GtGYzfeqQGVzv2l6xzE0rwN24or97Nq1a8bws0g0i+SWoR9CEGF4k/3bS8zzoMvHmq3ciKdjuS97
uEfyyBVXmmVH2Y1D5ca1So78wTyWOHeAMR6EecVex/MZ6x6rOCnQhqWSx4kHxi7ZQsOzVN29i/6x
6ZCbmJQNVFz1KT1wtR/ZbpeD169kNN898XhJmhk8r9kZNKkpTOwW8xpSiP8gPADG9JgIPzft8TVM
T9ibHmmwxSmCkXp6yN0m0kzHLXM+v7W7Pf48XmQzFo5NQ4lEhUC/Mp0Z4oaFbdqW5KsZOHsXECeg
mGVQ0I4nErdEmD50TtyloU1lvnrJzaNiJtx2FTnXgFWpWtb1pqYoFVBaXML+x/er/ezbRFFVjxnA
53kallgSWoIOul9EyZD82re6bBo4+EeqTjEEqogPRJH6bvN4uKta7F59yAu60Zke9VreDx0Fwk2R
d2AeBNZW25jcGexcvo7iPdnMdMI8P+xkR+gosVMaliHJbLB8IxxuP7PBOQujk/goddYJpBrp1C5h
LzDdcqvcQnyRsSJFvYM84SajPEbh8c5fpt0ETFD+K9UXroKfp8ZSgvoUXZ8D6cEO40w29EVrZBDv
fmyRvPA7htJRfHEtRMrvw4wuNtoV8989AyXpHzB0mj/c39YNQDSILcI16L9v5awYXz7f5fxsobwc
+XpKKiGSOp1Hl4kII+eq4rDoy7VXHnvmVqICX6vTWo7R8+ushTe08a43gRDMzPpVSc1F+fBxCZlQ
ECXiUn3JF89lgchcVBvGz1SdBSi6oc959Ju/frTTCKfEWnGbiRmO0JmGSQ4fHbWW1PM4X5anJ3uw
oHakxkxAN3gw0MtkRa/2nsdyNEmpuaoBed4LvTznnmfvFcl7bi/dO9kqDvlhF0oAF7KdiOl/fS6s
IOETopLIxXUwBFvnlxvr76kKtZs2RMOimCC+RlS3HZOl30LfbcgOISbBDrdxQcrKt8fVP6z4NePR
Yd/QpVXsJC9tg0P/eBIgkYtPeVnsvpF6h5H+MKe6SZADFI4AEJLzajSU1cD/yMTczmT34Hd2cEZM
DPd7lZgHS14fXD81eZvdW0137H6LEFQiTleyAfe1jdEnY2uW4PexUbWlX8eFUWP6Zw4aRD8noHrq
rKkoCQ7/YwXZx6C+FFcqt3ZPjMlglMbJqS4UYw9VtXmL6hNkE/scd+6Z3Ws2h0E5mwQGmq6PJgfA
2lKv3pNl9howqMj5VrPajl50qONRhzzDxCCL33KUWcDLZ+iyU3GHHpahwWiJWOPJGZ6u+JIWgxXw
7Hew0P+6NchVi715bm6KsRl9N6mWpGXlN3OgXaN3aLBIKuZtykMKhscm49WoMmmo1qV45bNJ4paR
jgU0wPyznRYiVr6hVuuWkEbaL5xyUMluM/DUKFFAgkZlQ9uTCMJHz/9QHmskbnePjCgMhCZfq20E
0DfRzXd4+neXPa3bDn25zRoMRGEQH3/nXU5CsyMy3E7oLp7qIo19OjFS4zTaky4/ArK5mMXBeHIe
O9+5fuOl3xOkiE8gZDcsgf4hFYkiHexMrBSXDG0H9Jf7pm1yCrNwQ7Y5FYxaletOkheqdLkwKL99
odZURwk1/ye9c5wj4ufKFbmJno7eWiIcP9IA029yk3tcLOPtYqOeXTggOENWSp4n3e38k7Qpwbxl
eG5nqpw4O4dq9NygFTR1WBzoL+CksARC24oH3s9K20rF98moHVu4GWdR8EgT1M1ufBrA4r/mqbWS
Xmm0aEbkx8UMmJRO4IrIkrrCHiisRyauUj8M39aGAOt8LqbtZOl2SbtXiVW4vTyn4lU7cnsIMTo4
pk96W3lECyfHswwGhthBdmedsV1Gg8VpoLkZw/Fvz6frAQeS0CkR29lCage3kThV0i6yKX6MQxbS
1jDEbG1n/MM99eKSTFTtYHDFIiw1drfe4QQEzEhh+ZXe8MGwA1Rf+ReOK1E52krJoT4WYx4c6lfG
rgumzLEsZ4HxtLxmybGRWzK0E7T4pe8ZRI8jitCDe9pPqHbKxD+Vtkr+o+J2EVqkGUkBZ0KqcnqQ
/+3pSXFEPk3PtlLEXP7PrX014Cw9f/jbMyVaGwwQIyPcrPhK4wZtmUrNRerdMxWG7lY3qeewo9N1
h34P02YNWb08WlQWeQVqgMsqfMwMCTGn6L0Ve7cupz9TAmM4wC0xAQzkyEy9JQtublWsaLiOmioh
DrK/mQqSvMJFL6TuZzjOmfRWPSZg1F/F9C+Q+2G813ccNtIyTShGc3f+LCMjwjsNCAhY6XwXpLdG
YTQlEHAvkxn1rcHY0CBhlBjH/lIE/yDZkUY9j/FDjeJnaHkfOP0BMRTU8wfl2B0pDSIrhgoRCzj1
PF7y9d0t/SuMPrXRvEMZ3I0uLWS51vBOz/jt7Q3y1hPMajGOlGwf1G30gQ0+4/8PD94lJkDvtog1
wGrIf1KGR4tr2Q84HBgDH3ceJ6mSLu+Uj4jvVGcM9bzGfF/MR/FU/TtpbI0kP78nM7DsTizISahx
K0PdYcIbNKldP6CaVPpmKNvucKoc/uV9R23GoZiifJAMzIdjzFKWMTxHrz37mwpAZjJVbRM5UiMA
pJXAZgPGx8NVCRtk45SRG+NB5I7tUHJ0qPxvx6Fm9TW7EA==
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
