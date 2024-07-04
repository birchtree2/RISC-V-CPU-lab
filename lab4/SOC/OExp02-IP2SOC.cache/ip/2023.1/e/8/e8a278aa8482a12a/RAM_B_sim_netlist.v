// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr 18 18:59:49 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [3:0]wea;
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
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
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
ykUEB7aAeFFRx4fjZ1MOC1E46g==
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
