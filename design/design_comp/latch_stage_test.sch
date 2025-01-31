v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -260 140 -240 {
lab=latch+}
N 140 -210 240 -210 {
lab=VSS}
N 140 -430 320 -430 {
lab=VDD}
N 320 -430 320 -340 {
lab=VDD}
N 140 -430 140 -340 {
lab=VDD}
N 140 -180 140 -140 {
lab=#net1}
N 410 -340 410 -110 {
lab=in-}
N 410 -340 420 -340 {
lab=in-}
N 80 -340 100 -340 {
lab=latch-}
N 80 -210 100 -210 {
lab=latch-}
N -170 -260 -170 -240 {
lab=latch-}
N -270 -210 -170 -210 {
lab=VSS}
N -350 -430 -350 -340 {
lab=VDD}
N -170 -430 -170 -340 {
lab=VDD}
N -170 -180 -170 -140 {
lab=#net2}
N -130 -340 -110 -340 {
lab=latch+}
N -130 -210 -110 -210 {
lab=latch+}
N -10 -430 140 -430 {
lab=VDD}
N -350 -430 -170 -430 {
lab=VDD}
N -170 -10 140 -10 {
lab=VSS}
N 10 -260 140 -260 {
lab=latch+}
N -40 -300 10 -260 {
lab=latch+}
N -170 -260 -40 -260 {
lab=latch-}
N -40 -260 10 -300 {
lab=latch-}
N 10 -300 80 -300 {
lab=latch-}
N 80 -300 80 -210 {
lab=latch-}
N -110 -300 -40 -300 {
lab=latch+}
N -110 -300 -110 -210 {
lab=latch+}
N 80 -340 80 -300 {
lab=latch-}
N -110 -340 -110 -300 {
lab=latch+}
N 140 -310 140 -260 {
lab=latch+}
N 320 -310 320 -260 {
lab=latch+}
N -350 -310 -350 -260 {
lab=latch-}
N -170 -310 -170 -260 {
lab=latch-}
N -350 -260 -170 -260 {
lab=latch-}
N -440 -340 -440 -110 {
lab=in+}
N 140 -260 320 -260 {
lab=latch+}
N -440 -340 -390 -340 {lab=in+}
N -10 -450 -10 -430 {lab=VDD}
N -170 -430 -10 -430 {
lab=VDD}
N 360 -340 410 -340 {
lab=in-}
N 170 -110 410 -110 {
lab=in-}
N -450 -340 -440 -340 {lab=in+}
N -440 -110 -210 -110 {lab=in+}
N -170 -110 -170 -10 {
lab=VSS}
N 140 -110 140 -10 {
lab=VSS}
C {devices/lab_wire.sym} 240 -210 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -270 -210 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {ipin.sym} -450 -340 0 0 {name=p1 lab=in+}
C {ipin.sym} 420 -340 0 1 {name=p2 lab=in-}
C {ipin.sym} -10 -450 1 0 {name=p3 lab=VDD}
C {ipin.sym} -10 -10 3 0 {name=p5 lab=VSS}
C {devices/opin.sym} 320 -260 0 0 {name=p12 lab=latch+}
C {devices/opin.sym} -350 -260 0 1 {name=p8 lab=latch-}
C {sg13g2_pr/sg13_lv_pmos.sym} -370 -340 0 0 {name=M8
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -340 0 0 {name=M1
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -150 -340 0 1 {name=M2
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 340 -340 0 1 {name=M3
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -150 -210 2 0 {name=M3p
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -190 -110 2 1 {name=M2p
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -210 2 1 {name=M4
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -110 2 0 {name=M5
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
