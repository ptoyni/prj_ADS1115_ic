v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 50 -120 50 {lab=GND}
N -130 90 -120 90 {lab=GND}
N -130 80 -130 90 {lab=GND}
N -120 50 -120 90 {lab=GND}
N -130 0 -130 20 {lab=#net1}
N -220 50 -170 50 {lab=A}
N -130 -30 -130 0 {lab=#net1}
N -130 -60 -120 -60 {lab=VDD}
N -120 -100 -120 -60 {lab=VDD}
N -130 -100 -120 -100 {lab=VDD}
N -130 -100 -130 -90 {lab=VDD}
N -130 -130 -130 -100 {lab=VDD}
N -130 90 -130 120 {lab=GND}
N -210 -60 -170 -60 {lab=GND}
N -210 -60 -210 -30 {lab=GND}
N 110 50 120 50 {lab=GND}
N 110 90 120 90 {lab=GND}
N 110 80 110 90 {lab=GND}
N 120 50 120 90 {lab=GND}
N 110 -60 120 -60 {lab=VDD}
N 120 -100 120 -60 {lab=VDD}
N 110 -100 120 -100 {lab=VDD}
N 110 -100 110 -90 {lab=VDD}
N 110 90 110 120 {lab=GND}
N 30 -60 70 -60 {lab=GND}
N 30 -60 30 -30 {lab=GND}
N 110 -130 110 -100 {lab=VDD}
N -20 0 -20 50 {lab=#net1}
N -20 50 70 50 {lab=#net1}
N -130 0 -20 0 {lab=#net1}
N 110 0 110 20 {lab=Y}
N 110 0 150 0 {lab=Y}
N 110 -30 110 0 {lab=Y}
C {sg13g2_pr/sg13_lv_nmos.sym} -150 50 2 1 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -150 -60 0 0 {name=M2
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} -130 120 0 0 {name=l5 lab=GND}
C {vdd.sym} -130 -130 0 0 {name=l6 lab=VDD}
C {gnd.sym} -210 -30 0 0 {name=l1 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 90 50 2 1 {name=M3
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 -60 0 0 {name=M4
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} 110 120 0 0 {name=l3 lab=GND}
C {gnd.sym} 30 -30 0 0 {name=l7 lab=GND}
C {vdd.sym} 110 -130 0 0 {name=l8 lab=VDD}
C {ipin.sym} -220 50 0 0 {name=p1 lab=A}
C {opin.sym} 150 0 0 0 {name=p2 lab=Y}
