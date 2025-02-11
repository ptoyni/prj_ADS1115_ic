v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -90 50 -90 {lab=GND}
N 40 -50 50 -50 {lab=GND}
N 40 -60 40 -50 {lab=GND}
N 50 -90 50 -50 {lab=GND}
N 40 -140 40 -120 {lab=#net1}
N -50 -90 0 -90 {lab=A}
N 40 -170 40 -140 {lab=#net1}
N 40 -200 50 -200 {lab=VDD}
N 50 -240 50 -200 {lab=VDD}
N 40 -240 50 -240 {lab=VDD}
N 40 -240 40 -230 {lab=VDD}
N 40 -270 40 -240 {lab=VDD}
N 40 -50 40 -20 {lab=GND}
N -40 -200 0 -200 {lab=GND}
N -40 -200 -40 -170 {lab=GND}
N 280 -90 290 -90 {lab=GND}
N 280 -50 290 -50 {lab=GND}
N 280 -60 280 -50 {lab=GND}
N 290 -90 290 -50 {lab=GND}
N 280 -200 290 -200 {lab=VDD}
N 290 -240 290 -200 {lab=VDD}
N 280 -240 290 -240 {lab=VDD}
N 280 -240 280 -230 {lab=VDD}
N 280 -50 280 -20 {lab=GND}
N 200 -200 240 -200 {lab=GND}
N 200 -200 200 -170 {lab=GND}
N 280 -270 280 -240 {lab=VDD}
N 150 -140 150 -90 {lab=#net1}
N 150 -90 240 -90 {lab=#net1}
N 40 -140 150 -140 {lab=#net1}
N 280 -140 280 -120 {lab=Y}
N 280 -140 320 -140 {lab=Y}
N 280 -170 280 -140 {lab=Y}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 -90 2 1 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -200 0 0 {name=M2
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} 40 -20 0 0 {name=l5 lab=GND}
C {vdd.sym} 40 -270 0 0 {name=l6 lab=VDD}
C {gnd.sym} -40 -170 0 0 {name=l1 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 260 -90 2 1 {name=M3
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 260 -200 0 0 {name=M4
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} 280 -20 0 0 {name=l3 lab=GND}
C {gnd.sym} 200 -170 0 0 {name=l7 lab=GND}
C {vdd.sym} 280 -270 0 0 {name=l8 lab=VDD}
C {ipin.sym} -50 -90 0 0 {name=p1 lab=A}
C {opin.sym} 320 -140 0 0 {name=p2 lab=Y}
