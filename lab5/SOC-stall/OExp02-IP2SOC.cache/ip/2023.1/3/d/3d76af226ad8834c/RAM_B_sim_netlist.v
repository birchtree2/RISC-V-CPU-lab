// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr 18 19:16:02 2024
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
j/xKB/Nj5mC74X6iFggpmK20wg==
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
