v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 -370 -390 -350 {
lab=outp}
N -390 -320 -310 -320 {
lab=VSS}
N -390 -540 -210 -540 {
lab=VDD}
N -210 -540 -210 -450 {
lab=VDD}
N -390 -540 -390 -450 {
lab=VDD}
N -390 -190 -390 -150 {
lab=#net1}
N -140 -450 -140 -220 {
lab=clk}
N -170 -450 -140 -450 {
lab=clk}
N -350 -120 -290 -120 {
lab=vin_n}
N -450 -450 -430 -450 {
lab=outn}
N -450 -320 -430 -320 {
lab=outn}
N -700 -370 -700 -350 {
lab=outn}
N -880 -540 -880 -450 {
lab=VDD}
N -700 -540 -700 -450 {
lab=VDD}
N -700 -220 -630 -220 {
lab=VDD}
N -950 -220 -740 -220 {
lab=clk}
N -950 -450 -950 -220 {
lab=clk}
N -950 -450 -920 -450 {
lab=clk}
N -660 -450 -640 -450 {
lab=outp}
N -660 -320 -640 -320 {
lab=outp}
N -700 -540 -390 -540 {
lab=VDD}
N -880 -540 -700 -540 {
lab=VDD}
N -950 -510 -950 -450 {
lab=clk}
N -140 -510 -140 -450 {
lab=clk}
N -950 -510 -140 -510 {
lab=clk}
N -520 -370 -390 -370 {
lab=outp}
N -570 -410 -520 -370 {
lab=outp}
N -700 -370 -570 -370 {
lab=outn}
N -570 -370 -520 -410 {
lab=outn}
N -520 -410 -450 -410 {
lab=outn}
N -450 -410 -450 -320 {
lab=outn}
N -640 -410 -570 -410 {
lab=outp}
N -640 -410 -640 -320 {
lab=outp}
N -450 -450 -450 -410 {
lab=outn}
N -640 -450 -640 -410 {
lab=outp}
N -390 -390 -390 -370 {
lab=outp}
N -700 -390 -700 -370 {
lab=outn}
N -390 -420 -390 -390 {
lab=outp}
N -210 -420 -210 -390 {
lab=outp}
N -880 -420 -880 -390 {
lab=outn}
N -700 -420 -700 -390 {
lab=outn}
N -700 -50 -390 -50 {
lab=VSS}
N -1030 -510 -950 -510 {
lab=clk}
N -1030 -540 -880 -540 {
lab=VDD}
N -210 -390 -80 -390 {
lab=outp}
N -880 -390 -700 -390 {
lab=outn}
N -700 -120 -700 -50 {
lab=VSS}
N -390 -120 -390 -50 {
lab=VSS}
N -390 -390 -210 -390 {
lab=outp}
N -840 -50 -700 -50 {
lab=VSS}
N -870 -120 -740 -120 {lab=vin_p}
N -990 -390 -880 -390 {lab=outn}
N -790 -320 -700 -320 {lab=VSS}
N -470 -220 -390 -220 {lab=VSS}
N -700 -190 -700 -150 {lab=#net2}
N -700 -290 -700 -250 {lab=#net3}
N -350 -220 -140 -220 {lab=clk}
N -390 -290 -390 -250 {lab=#net4}
C {devices/lab_wire.sym} -460 -220 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -630 -220 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -1030 -510 0 0 {name=p11 lab=clk}
C {devices/iopin.sym} -840 -50 2 0 {name=p8 lab=VSS}
C {devices/iopin.sym} -1030 -540 0 1 {name=p13 lab=VDD}
C {devices/ipin.sym} -290 -120 2 0 {name=p24 lab=vin_n}
C {devices/ipin.sym} -870 -120 0 0 {name=p29 lab=vin_p}
C {opin.sym} -990 -390 0 1 {name=p31 lab=outn
}
C {opin.sym} -80 -390 0 0 {name=p32 lab=outp}
C {sg13g2_pr/sg13_lv_pmos.sym} -900 -450 0 0 {name=M5p
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -410 -450 0 0 {name=M4n
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -680 -450 0 1 {name=M4p
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -190 -450 0 1 {name=M5n
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -680 -320 2 0 {name=M3p
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -410 -320 2 1 {name=M3n
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -370 -120 2 0 {name=M1n
l=Lnmos2
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -720 -120 2 1 {name=M1p
l=Lnmos2
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -310 -320 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -790 -320 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -370 -220 2 0 {name=M1
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -720 -220 2 1 {name=M2
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
