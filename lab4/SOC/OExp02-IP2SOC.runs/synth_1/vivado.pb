
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:012default:default2
00:00:052default:default2
456.1252default:default2
159.8052default:defaultZ17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
m
 Loaded user IP repository '%s'.
1135*coregen2&
d:/IPcore/Seg7_Dev2default:defaultZ19-1700h px� 
h
 Loaded user IP repository '%s'.
1135*coregen2!
d:/IPcore/VGA2default:defaultZ19-1700h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
E:/Xilinx/Vivado/2023.1/data/ip2default:defaultZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental D:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/utils_1/imports/synth_1/CSSTE.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2j
VD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/utils_1/imports/synth_1/CSSTE.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
s
Command: %s
53*	vivadotcl2B
.synth_design -top CSSTE -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
382362default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
SEG_PEN2default:default2
wire2default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
962default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
seg_clk2default:default2
wire2default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
1032default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
seg_clrn2default:default2
wire2default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
1042default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
seg_sout2default:default2
wire2default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
1052default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1301.012 ; gain = 412.812
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
CSSTE2default:default2
 2default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
SCPU2default:default2
 2default:default2f
PD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SCPU.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	SCPU_ctrl2default:default2
 2default:default2k
UD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SCPU_ctrl.v2default:default2
172default:default8@Z8-6157h px� 
�
default block is never used226*oasys2k
UD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SCPU_ctrl.v2default:default2
662default:default8@Z8-226h px� 
�
default block is never used226*oasys2k
UD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SCPU_ctrl.v2default:default2
842default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	SCPU_ctrl2default:default2
 2default:default2
02default:default2
12default:default2k
UD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SCPU_ctrl.v2default:default2
172default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DataPath2default:default2
 2default:default2j
TD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/DataPath.v2default:default2
172default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
ImmGen2default:default2
 2default:default2h
RD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/ImmGen.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ImmGen2default:default2
 2default:default2
02default:default2
12default:default2h
RD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/ImmGen.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Reg322default:default2
 2default:default2g
QD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/Reg32.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Reg322default:default2
 2default:default2
02default:default2
12default:default2g
QD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/Reg32.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Regfile2default:default2
 2default:default2i
SD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/Regfile.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Regfile2default:default2
 2default:default2
02default:default2
12default:default2i
SD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/Regfile.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2e
OD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/ALU.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
02default:default2
12default:default2e
OD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/ALU.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DataPath2default:default2
 2default:default2
02default:default2
12default:default2j
TD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/DataPath.v2default:default2
172default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SCPU2default:default2
 2default:default2
02default:default2
12default:default2f
PD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SCPU.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ROM2default:default2
 2default:default2�
rD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.runs/synth_1/.Xil/Vivado-39232-LAPTOP-24U2CQ3S/realtime/ROM_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ROM2default:default2
 2default:default2
02default:default2
12default:default2�
rD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.runs/synth_1/.Xil/Vivado-39232-LAPTOP-24U2CQ3S/realtime/ROM_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
RAM_B2default:default2
 2default:default2�
tD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.runs/synth_1/.Xil/Vivado-39232-LAPTOP-24U2CQ3S/realtime/RAM_B_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RAM_B2default:default2
 2default:default2
02default:default2
12default:default2�
tD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.runs/synth_1/.Xil/Vivado-39232-LAPTOP-24U2CQ3S/realtime/RAM_B_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MIO_BUS2default:default2
 2default:default2i
SD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/MIO_BUS.v2default:default2
152default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Multi_8CH322default:default2
 2default:default2m
WD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/Multi_8CH32.v2default:default2
152default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Seg7_Dev2default:default2
 2default:default2�
}D:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IPcore/Seg7_Dev/Seg7_Dev.srcs/sources_1/new/Seg7_Dev.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
dispsync2default:default2
 2default:default2�
�D:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IPcore/Seg7_Dev/Seg7_Dev.srcs/sources_1/new/DisplaySync.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dispsync2default:default2
 2default:default2
02default:default2
12default:default2�
�D:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IPcore/Seg7_Dev/Seg7_Dev.srcs/sources_1/new/DisplaySync.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MC_144952default:default2
 2default:default2�
}D:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IPcore/Seg7_Dev/Seg7_Dev.srcs/sources_1/new/MC_14495.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
INV2default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
762562default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
INV2default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
762562default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AND42default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
5692default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND42default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
5692default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OR42default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
950902default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR42default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
950902default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AND32default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
5212default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND32default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
5212default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OR32default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
950422default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR32default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
950422default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AND22default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
4732default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND22default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
4732default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OR22default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
949962default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR22default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
949962default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MC_144952default:default2
 2default:default2
02default:default2
12default:default2�
}D:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IPcore/Seg7_Dev/Seg7_Dev.srcs/sources_1/new/MC_14495.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Seg7_Dev2default:default2
 2default:default2
02default:default2
12default:default2�
}D:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IPcore/Seg7_Dev/Seg7_Dev.srcs/sources_1/new/Seg7_Dev.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
SPIO2default:default2
 2default:default2f
PD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SPIO.v2default:default2
152default:default8@Z8-6157h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
GPIOf02default:default2
SPIO2default:default2
U72default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
1942default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
U72default:default2
SPIO2default:default2
122default:default2
112default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
1942default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
clk_div2default:default2
 2default:default2i
SD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/clk_div.v2default:default2
152default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
SAnti_jitter2default:default2
 2default:default2n
XD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SAnti_jitter.v2default:default2
152default:default8@Z8-6157h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
Key_x2default:default2 
SAnti_jitter2default:default2
U92default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
2142default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
Key_out2default:default2 
SAnti_jitter2default:default2
U92default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
2142default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	Key_ready2default:default2 
SAnti_jitter2default:default2
U92default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
2142default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	pulse_out2default:default2 
SAnti_jitter2default:default2
U92default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
2142default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CR2default:default2 
SAnti_jitter2default:default2
U92default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
2142default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
U92default:default2 
SAnti_jitter2default:default2
132default:default2
82default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
2142default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
	Counter_x2default:default2
 2default:default2k
UD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/Counter_x.v2default:default2
152default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
VGA2default:default2
 2default:default2f
PD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/VGA.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2!
VgaController2default:default2
 2default:default2p
ZD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/VgaController.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
VgaController2default:default2
 2default:default2
02default:default2
12default:default2p
ZD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/VgaController.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

VgaDisplay2default:default2
 2default:default2m
WD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/VgaDisplay.v2default:default2
232default:default8@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2(
D://vga_debugger.mem2default:default2m
WD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/VgaDisplay.v2default:default2
372default:default8@Z8-3876h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2%
D://font_8x16.mem2default:default2m
WD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/VgaDisplay.v2default:default2
472default:default8@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

VgaDisplay2default:default2
 2default:default2
02default:default2
12default:default2m
WD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/VgaDisplay.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
VgaDebugger2default:default2
 2default:default2n
XD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/VgaDebugger.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	Hex2Ascii2default:default2
 2default:default2l
VD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/Hex2Ascii.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Hex2Ascii2default:default2
 2default:default2
02default:default2
12default:default2l
VD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/Hex2Ascii.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VgaDebugger2default:default2
 2default:default2
02default:default2
12default:default2n
XD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/VgaDebugger.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VGA2default:default2
 2default:default2
02default:default2
12default:default2f
PD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/new/VGA.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CSSTE2default:default2
 2default:default2
02default:default2
12default:default2`
JD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2default:default2
22default:default8@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[6]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[5]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[4]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[3]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[2]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[1]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[0]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	MIO_ready2default:default2
	SCPU_ctrl2default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:06 . Memory (MB): peak = 1409.703 ; gain = 521.504
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:01 ; elapsed = 00:00:06 . Memory (MB): peak = 1409.703 ; gain = 521.504
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:01 ; elapsed = 00:00:06 . Memory (MB): peak = 1409.703 ; gain = 521.504
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0392default:default2
1409.7032default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
402default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2q
[d:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.gen/sources_1/ip/ROM/ROM/ROM_in_context.xdc2default:default2
U2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2q
[d:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.gen/sources_1/ip/ROM/ROM/ROM_in_context.xdc2default:default2
U2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2w
ad:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.gen/sources_1/ip/RAM_B/RAM_B/RAM_B_in_context.xdc2default:default2
U3	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2w
ad:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.gen/sources_1/ip/RAM_B/RAM_B/RAM_B_in_context.xdc2default:default2
U3	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2q
[D:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/constrs_1/imports/OExp02-IP2SOC/A7.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2q
[D:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/constrs_1/imports/OExp02-IP2SOC/A7.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2o
[D:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/constrs_1/imports/OExp02-IP2SOC/A7.xdc2default:default2+
.Xil/CSSTE_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1496.4532default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 40 instances were transformed.
  AND2 => LUT2: 1 instance 
  AND3 => LUT3: 11 instances
  AND4 => LUT4: 9 instances
  INV => LUT1: 5 instances
  OR2 => LUT2: 7 instances
  OR3 => LUT3: 3 instances
  OR4 => LUT4: 4 instances
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1496.4532default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:03 ; elapsed = 00:00:11 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:03 ; elapsed = 00:00:11 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:03 ; elapsed = 00:00:12 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
!inferring latch for variable '%s'327*oasys2
	PC_in_reg2default:default2j
TD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/DataPath.v2default:default2
532default:default8@Z8-327h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:17 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 32    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  14 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	 449 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input    2 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 31    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	 449 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[6]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[5]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[4]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[3]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[2]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[1]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
inst_field[0]2default:default2
ImmGen2default:defaultZ8-7129h px� 
�
UInfeasible attribute ram_style = "%s" set for RAM %s,trying to implement using LUTRAM4701*oasys2
block2default:default2<
("CSSTE/U11/vga_display/display_data_reg"2default:defaultZ8-6849h px� 
�
UInfeasible attribute ram_style = "%s" set for RAM %s,trying to implement using LUTRAM4701*oasys2
block2default:default2<
("CSSTE/U11/vga_display/display_data_reg"2default:defaultZ8-6849h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:01:39 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px� 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px� 
j
%s*synth2R
>|Module Name | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px� 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px� 
j
%s*synth2R
>|VgaDisplay  | fonts_data | 4096x8        | LUT            | 
2default:defaulth px� 
j
%s*synth2R
>|CSSTE       | p_0_out    | 4096x8        | LUT            | 
2default:defaulth px� 
j
%s*synth2R
>+------------+------------+---------------+----------------+

2default:defaulth px� 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2y
e+------------+----------------------------------+-----------+----------------------+---------------+
2default:defaulth px� 
�
%s*synth2z
f|Module Name | RTL Object                       | Inference | Size (Depth x Width) | Primitives    | 
2default:defaulth px� 
�
%s*synth2y
e+------------+----------------------------------+-----------+----------------------+---------------+
2default:defaulth px� 
�
%s*synth2z
f|CSSTE       | U11/vga_display/display_data_reg | Implied   | 4 K x 7              | RAM64M x 192  | 
2default:defaulth px� 
�
%s*synth2z
f+------------+----------------------------------+-----------+----------------------+---------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:01:43 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:01:47 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2y
e+------------+----------------------------------+-----------+----------------------+---------------+
2default:defaulth p
x
� 
�
%s
*synth2z
f|Module Name | RTL Object                       | Inference | Size (Depth x Width) | Primitives    | 
2default:defaulth p
x
� 
�
%s
*synth2y
e+------------+----------------------------------+-----------+----------------------+---------------+
2default:defaulth p
x
� 
�
%s
*synth2z
f|CSSTE       | U11/vga_display/display_data_reg | Implied   | 4 K x 7              | RAM64M x 192  | 
2default:defaulth p
x
� 
�
%s
*synth2z
f+------------+----------------------------------+-----------+----------------------+---------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[31]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[30]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[29]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[28]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[27]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[26]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[25]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[24]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[23]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[22]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[21]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[20]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[19]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[18]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[17]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[16]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[15]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[14]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[13]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[12]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[11]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
U1/U2/PC_in_reg[10]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
U1/U2/PC_in_reg[9]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
U1/U2/PC_in_reg[8]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
U1/U2/PC_in_reg[7]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
U1/U2/PC_in_reg[6]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
U1/U2/PC_in_reg[5]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
U1/U2/PC_in_reg[4]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
U1/U2/PC_in_reg[3]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
U1/U2/PC_in_reg[2]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
U1/U2/PC_in_reg[1]2default:default2
CSSTE2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
U1/U2/PC_in_reg[0]2default:default2
CSSTE2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:01:49 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:22 ; elapsed = 00:01:53 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:22 ; elapsed = 00:01:53 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:22 ; elapsed = 00:01:53 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:22 ; elapsed = 00:01:53 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:22 ; elapsed = 00:01:53 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:22 ; elapsed = 00:01:53 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |ROM           |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#|2     |RAM_B         |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#|3     |MIO_BUS       |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#|4     |Multi_8CH32   |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#|5     |SPIO          |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#|6     |clk_div       |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#|7     |SAnti_jitter  |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#|8     |Counter_x     |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
O
%s*synth27
#+------+------------------+------+
2default:defaulth px� 
O
%s*synth27
#|      |Cell              |Count |
2default:defaulth px� 
O
%s*synth27
#+------+------------------+------+
2default:defaulth px� 
O
%s*synth27
#|1     |Counter_x_bbox    |     1|
2default:defaulth px� 
O
%s*synth27
#|2     |MIO_BUS_bbox      |     1|
2default:defaulth px� 
O
%s*synth27
#|3     |Multi_8CH32_bbox  |     1|
2default:defaulth px� 
O
%s*synth27
#|4     |RAM_B             |     1|
2default:defaulth px� 
O
%s*synth27
#|5     |ROM               |     1|
2default:defaulth px� 
O
%s*synth27
#|6     |SAnti_jitter_bbox |     1|
2default:defaulth px� 
O
%s*synth27
#|7     |SPIO_bbox         |     1|
2default:defaulth px� 
O
%s*synth27
#|8     |clk_div_bbox      |     1|
2default:defaulth px� 
O
%s*synth27
#|9     |AND2              |     1|
2default:defaulth px� 
O
%s*synth27
#|10    |AND3              |    11|
2default:defaulth px� 
O
%s*synth27
#|11    |AND4              |     9|
2default:defaulth px� 
O
%s*synth27
#|12    |BUFG              |     1|
2default:defaulth px� 
O
%s*synth27
#|13    |CARRY4            |    54|
2default:defaulth px� 
O
%s*synth27
#|14    |INV               |     5|
2default:defaulth px� 
O
%s*synth27
#|15    |LUT1              |    35|
2default:defaulth px� 
O
%s*synth27
#|16    |LUT2              |   159|
2default:defaulth px� 
O
%s*synth27
#|17    |LUT3              |   139|
2default:defaulth px� 
O
%s*synth27
#|18    |LUT4              |   270|
2default:defaulth px� 
O
%s*synth27
#|19    |LUT5              |   389|
2default:defaulth px� 
O
%s*synth27
#|20    |LUT6              |  2285|
2default:defaulth px� 
O
%s*synth27
#|21    |MUXF7             |   445|
2default:defaulth px� 
O
%s*synth27
#|22    |MUXF8             |    89|
2default:defaulth px� 
O
%s*synth27
#|23    |OR2               |     7|
2default:defaulth px� 
O
%s*synth27
#|24    |OR3               |     3|
2default:defaulth px� 
O
%s*synth27
#|25    |OR4               |     4|
2default:defaulth px� 
O
%s*synth27
#|26    |RAM64M            |   128|
2default:defaulth px� 
O
%s*synth27
#|27    |RAM64X1D          |    62|
2default:defaulth px� 
O
%s*synth27
#|28    |FDCE              |  1024|
2default:defaulth px� 
O
%s*synth27
#|29    |FDRE              |    37|
2default:defaulth px� 
O
%s*synth27
#|30    |FDSE              |     2|
2default:defaulth px� 
O
%s*synth27
#|31    |IBUF              |    22|
2default:defaulth px� 
O
%s*synth27
#|32    |OBUF              |    50|
2default:defaulth px� 
O
%s*synth27
#+------+------------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:22 ; elapsed = 00:01:53 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 43 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:01:52 . Memory (MB): peak = 1496.453 ; gain = 521.504
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:22 ; elapsed = 00:01:53 . Memory (MB): peak = 1496.453 ; gain = 608.254
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
Parsing EDIF File [%s]
106*designutils2i
UD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/MIO_BUS.edf2default:defaultZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2i
UD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/MIO_BUS.edf2default:defaultZ20-97h px� 
�
Parsing EDIF File [%s]
106*designutils2m
YD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/Multi_8CH32.edf2default:defaultZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2m
YD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/Multi_8CH32.edf2default:defaultZ20-97h px� 
�
Parsing EDIF File [%s]
106*designutils2f
RD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SPIO.edf2default:defaultZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2f
RD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SPIO.edf2default:defaultZ20-97h px� 
�
Parsing EDIF File [%s]
106*designutils2i
UD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/clk_div.edf2default:defaultZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2i
UD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/clk_div.edf2default:defaultZ20-97h px� 
�
Parsing EDIF File [%s]
106*designutils2n
ZD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SAnti_jitter.edf2default:defaultZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2n
ZD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/SAnti_jitter.edf2default:defaultZ20-97h px� 
�
Parsing EDIF File [%s]
106*designutils2k
WD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/Counter_x.edf2default:defaultZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2k
WD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.srcs/sources_1/imports/IP/Counter_x.edf2default:defaultZ20-97h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0772default:default2
1512.7702default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
9162default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2017.42default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1521.0122default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 230 instances were transformed.
  AND2 => LUT2: 1 instance 
  AND3 => LUT3: 11 instances
  AND4 => LUT4: 9 instances
  INV => LUT1: 5 instances
  OR2 => LUT2: 7 instances
  OR3 => LUT3: 3 instances
  OR4 => LUT4: 4 instances
  RAM64M => RAM64M (RAMD64E(x4)): 128 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 62 instances
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
b60338df2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
922default:default2
592default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:242default:default2
00:01:582default:default2
1521.0122default:default2
1031.2192default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2Z
FD:/ZJUlesson/24Spring/CO/lab4/SOC/OExp02-IP2SOC.runs/synth_1/CSSTE.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2t
`Executing : report_utilization -file CSSTE_utilization_synth.rpt -pb CSSTE_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Apr 26 12:32:25 20242default:defaultZ17-206h px� 


End Record