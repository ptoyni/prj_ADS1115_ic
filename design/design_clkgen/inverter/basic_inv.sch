v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {While this works, the output is very bad and even spikes at above VDD
} -570 -180 0 0 0.2 0.2 {}
N -210 120 -210 150 {lab=GND}
N -570 120 -570 150 {lab=GND}
N 50 -60 60 -60 {lab=GND}
N 50 -20 60 -20 {lab=GND}
N 50 -30 50 -20 {lab=GND}
N 60 -60 60 -20 {lab=GND}
N -490 120 -490 150 {lab=GND}
N 50 -110 50 -90 {lab=out}
N -40 -60 10 -60 {lab=A}
N -40 -170 10 -170 {lab=A}
N 50 -110 90 -110 {lab=out}
N 50 -140 50 -110 {lab=out}
N 50 -170 60 -170 {lab=VDD}
N 60 -210 60 -170 {lab=VDD}
N 50 -210 60 -210 {lab=VDD}
N 50 -210 50 -200 {lab=VDD}
N 50 -240 50 -210 {lab=VDD}
N -570 30 -570 60 {lab=VDD}
N -490 0 -490 60 {lab=A}
N -210 -0 -210 60 {lab=B}
N 50 -20 50 10 {lab=GND}
N -40 -170 -40 -60 {lab=A}
N -120 -170 -40 -170 {lab=A}
C {sg13g2_pr/sg13_lv_nmos.sym} 30 -60 2 1 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} -490 90 0 0 {name=V1 value="dc 0 pulse(0, 1, 10n, 100p, 100p, 10n, 20n) " savecurrent=false}
C {gnd.sym} -490 150 0 0 {name=l2 lab=GND}
C {vsource.sym} -210 90 0 0 {name=V2 value="dc 0 pulse(0, 1, 20n, 100p, 100p, 20n, 40n) " savecurrent=false}
C {gnd.sym} -210 150 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -570 150 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} -570 90 0 0 {name=Vsup value=1.8
}
C {lab_pin.sym} -210 0 0 0 {name=p2 sig_type=std_logic lab=B
}
C {lab_pin.sym} -490 0 0 0 {name=p3 sig_type=std_logic lab=A
}
C {code.sym} 160 -250 0 0 {name=STIMULI1 
only_toplevel=false 
value="
.tran 10p 100n
.save all
"
}
C {devices/code_shown.sym} 170 -70 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {sg13g2_pr/sg13_lv_pmos.sym} 30 -170 0 0 {name=M2
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 90 -110 2 0 {name=p1 sig_type=std_logic lab=out
}
C {vdd.sym} -570 30 0 0 {name=l4 lab=VDD}
C {gnd.sym} 50 10 0 0 {name=l5 lab=GND}
C {vdd.sym} 50 -240 0 0 {name=l6 lab=VDD}
C {lab_pin.sym} -120 -170 0 0 {name=p4 sig_type=std_logic lab=A
}
