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
8.1-25ns: 	vin_p = vin_n - 1mV } -250 -240 0 0 0.4 0.4 {}
N -220 -20 -130 -20 {lab=vin_p}
N -220 150 -220 160 {lab=GND}
N 100 20 120 20 {lab=VSS}
N 100 -20 200 -20 {lab=outn}
N 100 0 200 0 {lab=outp}
N -300 -40 -130 -40 {lab=clk}
N -220 -20 -220 10 {lab=vin_p}
N -130 0 -130 80 {lab=vin_n}
N -220 80 -130 80 {lab=vin_n}
N -220 80 -220 90 {lab=vin_n}
N -220 70 -220 80 {lab=vin_n}
N -300 20 -300 90 {lab=GND}
N 40 110 40 120 {p1
lab=VDD}
N -40 110 -40 120 {p1
lab=VSS}
N 120 20 120 40 {lab=VSS}
N 100 -40 120 -40 {lab=VDD}
N 120 -60 120 -40 {lab=VDD}
N 300 20 500 20 {lab=nout2dff}
N 500 20 500 100 {lab=nout2dff}
N 480 -30 520 -30 {lab=out2dff}
N 440 100 500 100 {lab=nout2dff}
N 300 -50 320 -50 {lab=nout2dff}
N 480 -30 480 50 {lab=out2dff}
N 440 -30 480 -30 {lab=out2dff}
N 300 -50 300 20 {lab=nout2dff}
N 280 -10 320 -10 {lab=outp}
N 280 120 320 120 {lab=outn}
N 500 100 520 100 {lab=nout2dff}
N 300 50 480 50 {lab=out2dff}
N 300 50 300 80 {lab=out2dff}
N 300 80 320 80 {lab=out2dff}
C {comp_test.sym} 20 -10 0 0 {name=x1 Wnmos=2u Lnmos=0.13u Wpmos=4u Lpmos=0.13u Lnmos2=1u }
C {vsource.sym} -220 120 0 0 {name=V2 value=\{vdd/2\} savecurrent=false}
C {vsource.sym} -300 -10 0 1 {name=V3 value="dc 0 pulse(0, \{vdd\}, 1n, 50p, 50p, \{per/2-1n\}, \{per\})"
 savecurrent=false}
C {gnd.sym} -220 160 0 0 {name=l1 lab=GND}
C {gnd.sym} -300 90 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 200 -20 0 0 {name=p1 sig_type=std_logic lab=outn}
C {lab_wire.sym} 200 0 0 0 {name=p2 sig_type=std_logic lab=outp}
C {lab_wire.sym} -220 -40 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} -220 -20 0 0 {name=p4 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} -140 80 0 0 {name=p5 sig_type=std_logic lab=vin_n}
C {devices/code_shown.sym} -250 -340 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice"}
C {devices/code_shown.sym} -690 -360 0 0 {name=NGSPICE only_toplevel=true 
value=
"
.param temp=27 vdd=3.3 per=10n vdiff=1m 
.param Wnmos=1u Wpmos=2u 
.param Lnmos=.3u Lpmos=.3u Lnmos2=2u
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
C {vsource.sym} -220 40 0 1 {name=Vdiff value="pwl 0 \{vdiff\} 8n \{vdiff\} 8.1n \{-vdiff\}"  savecurrent=false}
C {devices/gnd.sym} 40 180 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 40 150 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} 40 110 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} -40 180 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -40 150 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} -40 110 0 0 {name=l11 lab=VSS}
C {devices/vdd.sym} 120 -60 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 120 40 2 0 {name=l6 lab=VSS}
C {devices/lab_wire.sym} 280 -10 0 0 {name=p13 sig_type=std_logic lab=outp
}
C {devices/lab_wire.sym} 280 120 0 0 {name=p14 sig_type=std_logic lab=outn
}
C {opin.sym} 520 -30 0 0 {name=p32 lab=out2dff}
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 380 -30 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 380 100 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {opin.sym} 520 100 0 0 {name=p6 lab=nout2dff}
