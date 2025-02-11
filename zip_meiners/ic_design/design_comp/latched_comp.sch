v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 590 210 790 210 {lab=nout2dff}
N 790 210 790 290 {lab=nout2dff}
N 770 160 810 160 {lab=out2dff}
N 730 290 790 290 {lab=nout2dff}
N 590 140 610 140 {lab=nout2dff}
N 770 160 770 240 {lab=out2dff}
N 730 160 770 160 {lab=out2dff}
N 590 140 590 210 {lab=nout2dff}
N 570 180 610 180 {lab=outp}
N 570 310 610 310 {lab=outn}
N 790 290 810 290 {lab=nout2dff}
N 590 240 770 240 {lab=out2dff}
N 590 240 590 270 {lab=out2dff}
N 590 270 610 270 {lab=out2dff}
N 210 -30 210 -10 {
lab=outp}
N 210 20 290 20 {
lab=VSS}
N 210 -200 390 -200 {
lab=VDD}
N 390 -200 390 -110 {
lab=VDD}
N 210 -200 210 -110 {
lab=VDD}
N 210 150 210 190 {
lab=#net1}
N 460 -110 460 120 {
lab=clk}
N 430 -110 460 -110 {
lab=clk}
N 250 220 310 220 {
lab=vin_n}
N 150 -110 170 -110 {
lab=outn}
N 150 20 170 20 {
lab=outn}
N -100 -30 -100 -10 {
lab=outn}
N -280 -200 -280 -110 {
lab=VDD}
N -100 -200 -100 -110 {
lab=VDD}
N -100 120 -30 120 {
lab=VDD}
N -350 120 -140 120 {
lab=clk}
N -350 -110 -350 120 {
lab=clk}
N -350 -110 -320 -110 {
lab=clk}
N -60 -110 -40 -110 {
lab=outp}
N -60 20 -40 20 {
lab=outp}
N -100 -200 210 -200 {
lab=VDD}
N -280 -200 -100 -200 {
lab=VDD}
N -350 -170 -350 -110 {
lab=clk}
N 460 -170 460 -110 {
lab=clk}
N -350 -170 460 -170 {
lab=clk}
N 80 -30 210 -30 {
lab=outp}
N 30 -70 80 -30 {
lab=outp}
N -100 -30 30 -30 {
lab=outn}
N 30 -30 80 -70 {
lab=outn}
N 80 -70 150 -70 {
lab=outn}
N 150 -70 150 20 {
lab=outn}
N -40 -70 30 -70 {
lab=outp}
N -40 -70 -40 20 {
lab=outp}
N 150 -110 150 -70 {
lab=outn}
N -40 -110 -40 -70 {
lab=outp}
N 210 -50 210 -30 {
lab=outp}
N -100 -50 -100 -30 {
lab=outn}
N 210 -80 210 -50 {
lab=outp}
N 390 -80 390 -50 {
lab=outp}
N -280 -80 -280 -50 {
lab=outn}
N -100 -80 -100 -50 {
lab=outn}
N -100 290 210 290 {
lab=VSS}
N -430 -170 -350 -170 {
lab=clk}
N -430 -200 -280 -200 {
lab=VDD}
N 390 -50 520 -50 {
lab=outp}
N -280 -50 -100 -50 {
lab=outn}
N -100 220 -100 290 {
lab=VSS}
N 210 220 210 290 {
lab=VSS}
N 210 -50 390 -50 {
lab=outp}
N -240 290 -100 290 {
lab=VSS}
N -270 220 -140 220 {lab=vin_p}
N -390 -50 -280 -50 {lab=outn}
N -190 20 -100 20 {lab=VSS}
N 130 120 210 120 {lab=VSS}
N -100 150 -100 190 {lab=#net2}
N -100 50 -100 90 {lab=#net3}
N 250 120 460 120 {lab=clk}
N 210 50 210 90 {lab=#net4}
C {devices/lab_wire.sym} 570 180 0 0 {name=p13 sig_type=std_logic lab=outp
}
C {devices/lab_wire.sym} 570 310 0 0 {name=p14 sig_type=std_logic lab=outn
}
C {opin.sym} 810 160 0 0 {name=p32 lab=out2dff}
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 670 160 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 670 290 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {opin.sym} 810 290 0 0 {name=p6 lab=nout2dff}
C {devices/lab_wire.sym} 140 120 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -30 120 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -430 -170 0 0 {name=p11 lab=clk}
C {devices/iopin.sym} -240 290 2 0 {name=p9 lab=VSS}
C {devices/iopin.sym} -430 -200 0 1 {name=p10 lab=VDD}
C {devices/ipin.sym} 310 220 2 0 {name=p24 lab=vin_n}
C {devices/ipin.sym} -270 220 0 0 {name=p29 lab=vin_p}
C {opin.sym} -390 -50 0 1 {name=p31 lab=outn
}
C {opin.sym} 520 -50 0 0 {name=p12 lab=outp}
C {sg13g2_pr/sg13_lv_pmos.sym} -300 -110 0 0 {name=M5p
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 190 -110 0 0 {name=M4n
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -80 -110 0 1 {name=M4p
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 410 -110 0 1 {name=M5n
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -80 20 2 0 {name=M3p
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 190 20 2 1 {name=M3n
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 230 220 2 0 {name=M1n
l=Lnmos2
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -120 220 2 1 {name=M1p
l=Lnmos2
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 290 20 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -190 20 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 230 120 2 0 {name=M1
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -120 120 2 1 {name=M2
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
