v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 -20 -130 -20 {lab=vin_p}
N -300 80 -130 80 {lab=vin_n}
N -300 80 -300 90 {lab=vin_n}
N -380 -40 -380 -20 {lab=clk}
N -300 150 -300 160 {lab=GND}
N -380 40 -380 60 {lab=GND}
N 170 20 180 20 {lab=GND}
N 340 80 340 90 {lab=GND}
N 170 -40 340 -40 {lab=VDD}
N 170 -20 270 -20 {lab=outn}
N 170 0 270 0 {lab=outp}
N -380 -40 -130 -40 {lab=clk}
N 180 20 180 70 {lab=GND}
N 340 -40 340 20 {lab=VDD}
N -300 -20 -300 10 {lab=vin_p}
N -130 0 -130 80 {lab=vin_n}
N -300 70 -300 80 {lab=vin_n}
C {comp_test.sym} 20 -10 0 0 {name=x1 Wnmos=2u Lnmos=0.13u Wpmos=4u Lpmos=0.13u Lnmos2=1u }
C {vsource.sym} -300 40 0 0 {name=V1 value=\{vdiff\} savecurrent=false}
C {vsource.sym} -300 120 0 0 {name=V2 value=\{vdd/2\} savecurrent=false}
C {vsource.sym} -380 10 0 1 {name=V3 value="dc 0 pulse(0, \{vdd\}, 1n, 50p, 50p, \{per/2-1n\}, \{per\})"
 savecurrent=false}
C {gnd.sym} -300 160 0 0 {name=l1 lab=GND}
C {gnd.sym} 180 70 0 0 {name=l2 lab=GND}
C {gnd.sym} 340 90 0 0 {name=l3 lab=GND}
C {gnd.sym} -380 60 0 0 {name=l4 lab=GND}
C {vsource.sym} 340 50 0 0 {name=V4 value=\{vdd\} savecurrent=false}
C {lab_wire.sym} 270 -20 0 0 {name=p1 sig_type=std_logic lab=outn}
C {lab_wire.sym} 270 0 0 0 {name=p2 sig_type=std_logic lab=outp}
C {lab_wire.sym} -270 -40 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} -270 -20 0 0 {name=p4 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} -160 80 0 0 {name=p5 sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 330 -40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 80 -400 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt"}
C {devices/code_shown.sym} -540 -400 0 0 {name=NGSPICE only_toplevel=true 
value=
"
.param temp=27 vdd=1.2 per=1u vdiff=1m 
.param Wnmos=2u Lnmos=0.13u Wpmos=4u Lpmos=0.13u Lnmos2=1u
.option method=gear reltol=1e-5
		
.control	
save all
tran 10p 4n
write tb_comp_test1.raw

alterparam vdiff=1u
reset
tran 10p 4n
write tb_comp_test2.raw
plot clk tran1.outp tran1.outn tran2.outp tran2.outn
.endc"
}
