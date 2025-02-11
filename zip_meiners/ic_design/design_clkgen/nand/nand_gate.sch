v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {design by M. Reisch, Elektronische Bauelemente} 90 -380 0 0 0.2 0.2 {}
N 270 -160 280 -160 {lab=#net1}
N 270 -120 280 -120 {lab=#net1}
N 270 -130 270 -120 {lab=#net1}
N 280 -160 280 -120 {lab=#net1}
N 100 -260 110 -260 {lab=VDD}
N 110 -300 110 -260 {lab=VDD}
N 100 -300 110 -300 {lab=VDD}
N 100 -300 100 -290 {lab=VDD}
N 100 -330 100 -300 {lab=VDD}
N 270 -260 280 -260 {lab=VDD}
N 280 -300 280 -260 {lab=VDD}
N 270 -300 280 -300 {lab=VDD}
N 270 -300 270 -290 {lab=VDD}
N 270 -330 270 -300 {lab=VDD}
N 40 -260 60 -260 {lab=A}
N 200 -260 230 -260 {lab=B}
N 270 -70 280 -70 {lab=GND}
N 270 -30 280 -30 {lab=GND}
N 270 -40 270 -30 {lab=GND}
N 280 -70 280 -30 {lab=GND}
N 270 -30 270 -20 {lab=GND}
N 270 -120 270 -100 {lab=#net1}
N 200 -70 230 -70 {lab=B}
N 40 -160 230 -160 {lab=A}
N 40 -260 40 -160 {lab=A}
N 20 -160 40 -160 {lab=A}
N 200 -260 200 -70 {lab=B}
N 20 -70 200 -70 {lab=B}
N 100 -230 100 -210 {lab=xxx}
N 100 -210 270 -210 {lab=xxx}
N 270 -230 270 -210 {lab=xxx}
N 270 -210 270 -190 {lab=xxx}
N 270 -210 350 -210 {lab=xxx}
C {sg13g2_pr/sg13_lv_nmos.sym} 250 -160 2 1 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 -260 0 0 {name=M2
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {vdd.sym} 100 -330 0 0 {name=l6 lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 250 -260 0 0 {name=M3
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {vdd.sym} 270 -330 0 0 {name=l1 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 250 -70 2 1 {name=M4
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 270 -20 0 0 {name=l5 lab=GND}
C {ipin.sym} 20 -160 0 0 {name=p2 lab=A}
C {ipin.sym} 20 -70 0 0 {name=p1 lab=B}
C {opin.sym} 350 -210 0 0 {name=p3 lab=Y}
