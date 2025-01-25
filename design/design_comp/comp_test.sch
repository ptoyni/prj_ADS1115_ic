v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 -240 -230 -220 {
lab=outp}
N -230 -190 -150 -190 {
lab=VSS}
N -230 -410 -50 -410 {
lab=VDD}
N -50 -410 -50 -320 {
lab=VDD}
N -230 -410 -230 -320 {
lab=VDD}
N -230 -160 -230 -120 {
lab=d2m}
N -230 -60 -230 -20 {
lab=d1m}
N -190 -90 20 -90 {
lab=clk}
N 20 -320 20 -90 {
lab=clk}
N -10 -320 20 -320 {
lab=clk}
N -190 10 -130 10 {
lab=vin_n}
N -290 -320 -270 -320 {
lab=outn}
N -290 -190 -270 -190 {
lab=outn}
N -540 -240 -540 -220 {
lab=outn}
N -720 -410 -720 -320 {
lab=VDD}
N -540 -410 -540 -320 {
lab=VDD}
N -540 -90 -470 -90 {
lab=VSS}
N -540 -160 -540 -120 {
lab=d2p}
N -540 -60 -540 -20 {
lab=d1p}
N -790 -90 -580 -90 {
lab=clk}
N -790 -320 -790 -90 {
lab=clk}
N -790 -320 -760 -320 {
lab=clk}
N -500 -320 -480 -320 {
lab=outp}
N -500 -190 -480 -190 {
lab=outp}
N -540 -410 -230 -410 {
lab=VDD}
N -720 -410 -540 -410 {
lab=VDD}
N -790 -380 -790 -320 {
lab=clk}
N 20 -380 20 -320 {
lab=clk}
N -790 -380 20 -380 {
lab=clk}
N -360 -240 -230 -240 {
lab=outp}
N -410 -280 -360 -240 {
lab=outp}
N -540 -240 -410 -240 {
lab=outn}
N -410 -240 -360 -280 {
lab=outn}
N -360 -280 -290 -280 {
lab=outn}
N -290 -280 -290 -190 {
lab=outn}
N -480 -280 -410 -280 {
lab=outp}
N -480 -280 -480 -190 {
lab=outp}
N -290 -320 -290 -280 {
lab=outn}
N -480 -320 -480 -280 {
lab=outp}
N -230 -260 -230 -240 {
lab=outp}
N -540 -260 -540 -240 {
lab=outn}
N -230 -290 -230 -260 {
lab=outp}
N -50 -290 -50 -260 {
lab=outp}
N -720 -290 -720 -260 {
lab=outn}
N -540 -290 -540 -260 {
lab=outn}
N -540 80 -230 80 {
lab=VSS}
N -870 -380 -790 -380 {
lab=clk}
N -870 -410 -720 -410 {
lab=VDD}
N -50 -260 80 -260 {
lab=outp}
N -720 -260 -540 -260 {
lab=outn}
N -540 10 -540 80 {
lab=VSS}
N -230 10 -230 80 {
lab=VSS}
N -230 -260 -50 -260 {
lab=outp}
N -680 80 -540 80 {
lab=VSS}
N -710 10 -580 10 {lab=vin_p}
N -830 -260 -720 -260 {lab=outn}
N -630 -190 -540 -190 {lab=VSS}
N -310 -90 -230 -90 {lab=VSS}
C {devices/lab_wire.sym} -310 -90 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -470 -90 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -870 -380 0 0 {name=p11 lab=clk}
C {devices/iopin.sym} -680 80 2 0 {name=p8 lab=VSS}
C {devices/iopin.sym} -870 -410 0 1 {name=p13 lab=VDD}
C {devices/lab_pin.sym} -540 -40 0 0 {name=p14 sig_type=std_logic lab=d1p}
C {devices/lab_pin.sym} -230 -40 0 0 {name=p15 sig_type=std_logic lab=d1m}
C {devices/lab_pin.sym} -540 -140 0 0 {name=p16 sig_type=std_logic lab=d2p}
C {devices/lab_pin.sym} -230 -140 0 0 {name=p17 sig_type=std_logic lab=d2m}
C {devices/ipin.sym} -130 10 2 0 {name=p24 lab=vin_n}
C {devices/ipin.sym} -710 10 0 0 {name=p29 lab=vin_p}
C {opin.sym} -830 -260 0 1 {name=p31 lab=outn
}
C {opin.sym} 80 -260 0 0 {name=p32 lab=outp}
C {sg13g2_pr/sg13_lv_pmos.sym} -740 -320 0 0 {name=M5p
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -250 -320 0 0 {name=M4n
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -520 -320 0 1 {name=M4p
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -30 -320 0 1 {name=M5n
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -520 -190 2 0 {name=M3p
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -250 -190 2 1 {name=M3n
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -210 -90 2 0 {name=M2n
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -560 -90 2 1 {name=M2p
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -210 10 2 0 {name=M1n
l=Lnmos2
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -560 10 2 1 {name=M1p
l=Lnmos2
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -150 -190 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -630 -190 0 0 {name=p3 sig_type=std_logic lab=VSS}
