v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {slew until decision & initial spike is proportional to MOSFET length

condition:
0-8 ns: 	  vin_p = vin_n + 1mV
8.1-25ns: 	vin_p = vin_n - 1mV } -880 -500 0 0 0.4 0.4 {}
N -850 -280 -760 -280 {lab=vin_p}
N -850 -110 -850 -100 {lab=GND}
N -460 -240 -440 -240 {lab=VSS}
N -460 -280 -430 -280 {lab=outn}
N -460 -260 -430 -260 {lab=outp}
N -930 -300 -760 -300 {lab=clk}
N -850 -280 -850 -250 {lab=vin_p}
N -760 -260 -760 -180 {lab=vin_n}
N -850 -180 -760 -180 {lab=vin_n}
N -850 -180 -850 -170 {lab=vin_n}
N -850 -190 -850 -180 {lab=vin_n}
N -930 -240 -930 -170 {lab=GND}
N -590 -150 -590 -140 {p1
lab=VDD}
N -670 -150 -670 -140 {p1
lab=VSS}
N -440 -240 -440 -220 {lab=VSS}
N -460 -300 -440 -300 {lab=VDD}
N -440 -320 -440 -300 {lab=VDD}
N -330 -240 -130 -240 {lab=nout2dff}
N -130 -240 -130 -160 {lab=nout2dff}
N -150 -290 -110 -290 {lab=out2dff}
N -190 -160 -130 -160 {lab=nout2dff}
N -330 -310 -310 -310 {lab=nout2dff}
N -150 -290 -150 -210 {lab=out2dff}
N -190 -290 -150 -290 {lab=out2dff}
N -330 -310 -330 -240 {lab=nout2dff}
N -350 -270 -310 -270 {lab=outp}
N -350 -140 -310 -140 {lab=outn}
N -130 -160 -110 -160 {lab=nout2dff}
N -330 -210 -150 -210 {lab=out2dff}
N -330 -210 -330 -180 {lab=out2dff}
N -330 -180 -310 -180 {lab=out2dff}
C {comp_test.sym} -610 -270 0 0 {name=x1 Wnmos=2u Lnmos=0.13u Wpmos=4u Lpmos=0.13u Lnmos2=1u }
C {vsource.sym} -850 -140 0 0 {name=V2 value=\{vdd/2\} savecurrent=false}
C {vsource.sym} -930 -270 0 1 {name=V3 value="dc 0 pulse(0, \{vdd\}, 1n, 50p, 50p, \{per/2-1n\}, \{per\})"
 savecurrent=false}
C {gnd.sym} -850 -100 0 0 {name=l1 lab=GND}
C {gnd.sym} -930 -170 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -430 -280 0 0 {name=p1 sig_type=std_logic lab=outn}
C {lab_wire.sym} -430 -260 0 0 {name=p2 sig_type=std_logic lab=outp}
C {lab_wire.sym} -850 -300 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} -850 -280 0 0 {name=p4 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} -770 -180 0 0 {name=p5 sig_type=std_logic lab=vin_n}
C {devices/code_shown.sym} -880 -600 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice"}
C {devices/code_shown.sym} -1320 -620 0 0 {name=NGSPICE only_toplevel=true 
value=
"
.param temp=27 vdd=1.5 per=10n vdiff=1m 
.param Wnmos=2u Wpmos=4u 
.param Lnmos=.13u Lpmos=.13u Lnmos2=1u
.option method=gear reltol=1e-5
.ic v(outp)=0
		
.control	
save all
tran 10p 25n
write tb_comp_test1.raw
write tb_comp_test.raw
plot clk tran1.outp tran1.outn 
plot tran1.out2dff tran1.nout2dff

.endc"
}
C {vsource.sym} -850 -220 0 1 {name=Vdiff value="pwl 0 \{vdiff\} 8n \{vdiff\} 8.1n \{-vdiff\}"  savecurrent=false}
C {devices/gnd.sym} -590 -80 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -590 -110 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} -590 -150 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} -670 -80 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -670 -110 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} -670 -150 0 0 {name=l11 lab=VSS}
C {devices/vdd.sym} -440 -320 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} -440 -220 2 0 {name=l6 lab=VSS}
C {devices/lab_wire.sym} -350 -270 0 0 {name=p13 sig_type=std_logic lab=outp
}
C {devices/lab_wire.sym} -350 -140 0 0 {name=p14 sig_type=std_logic lab=outn
}
C {opin.sym} -110 -290 0 0 {name=p32 lab=out2dff}
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} -250 -290 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} -250 -160 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {opin.sym} -110 -160 0 0 {name=p6 lab=nout2dff}
