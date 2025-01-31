v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {slew until decision & initial spike is proportional to MOSFET length} -250 -240 0 0 0.4 0.4 {}
N -220 -20 -130 -20 {lab=vin_p}
N -220 150 -220 160 {lab=GND}
N -300 70 -300 90 {lab=GND}
N 100 20 110 20 {lab=GND}
N 270 80 270 90 {lab=GND}
N 100 -40 270 -40 {lab=VDD}
N 100 -20 200 -20 {lab=outn}
N 100 0 200 0 {lab=outp}
N -300 -40 -130 -40 {lab=clk}
N 110 20 110 70 {lab=GND}
N 270 -40 270 20 {lab=VDD}
N -220 -20 -220 10 {lab=vin_p}
N -130 0 -130 80 {lab=vin_n}
N -220 80 -130 80 {lab=vin_n}
N -220 80 -220 90 {lab=vin_n}
N -220 70 -220 80 {lab=vin_n}
N -300 -40 -300 10 {lab=clk}
C {comp_test.sym} 20 -10 0 0 {name=x1 Wnmos=2u Lnmos=0.13u Wpmos=4u Lpmos=0.13u Lnmos2=1u }
C {vsource.sym} -220 40 0 0 {name=V1 value=\{vdiff\} savecurrent=false}
C {vsource.sym} -220 120 0 0 {name=V2 value=\{vdd/2\} savecurrent=false}
C {vsource.sym} -300 40 0 1 {name=V3 value="dc 0 pulse(0, \{vdd\}, 1n, 50p, 50p, \{per/2-1n\}, \{per\})"
 savecurrent=false}
C {gnd.sym} -220 160 0 0 {name=l1 lab=GND}
C {gnd.sym} 110 70 0 0 {name=l2 lab=GND}
C {gnd.sym} 270 90 0 0 {name=l3 lab=GND}
C {gnd.sym} -300 90 0 0 {name=l4 lab=GND}
C {vsource.sym} 270 50 0 0 {name=V4 value=\{vdd\} savecurrent=false}
C {lab_wire.sym} 200 -20 0 0 {name=p1 sig_type=std_logic lab=outn}
C {lab_wire.sym} 200 0 0 0 {name=p2 sig_type=std_logic lab=outp}
C {lab_wire.sym} -220 -40 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} -220 -20 0 0 {name=p4 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} -140 80 0 0 {name=p5 sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 260 -40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -250 -340 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt"}
C {devices/code_shown.sym} -930 -360 0 0 {name=NGSPICE only_toplevel=true 
value=
"
.param temp=27 vdd=1.5 per=1u vdiff=1m 
.param Wnmos=1u Wpmos=2u 
.param Lnmos=.3u Lpmos=.3u Lnmos2=1u
.option method=gear reltol=1e-5
		
.control	
save all
tran 10p 4n
write tb_comp_test1.raw

alterparam vdiff=1u
;alterparam Wnmos=1u Wpmos=2u

reset
tran 10p 4n
write tb_comp_test2.raw
plot clk tran1.outp tran1.outn tran2.outp tran2.outn
.endc"
}
