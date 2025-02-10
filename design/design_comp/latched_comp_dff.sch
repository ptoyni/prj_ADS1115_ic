v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 30 150 30 {
lab=clk}
N 120 70 150 70 {
lab=#net1}
N 360 30 440 30 {
lab=dd}
N 190 -120 450 -120 {
lab=d}
N 360 100 400 100 {
lab=dd}
N 360 30 360 100 {
lab=dd}
N 330 30 360 30 {
lab=dd}
N 70 -120 110 -120 {
lab=latch+}
N 70 50 150 50 {lab=latch+}
N 70 -120 70 50 {lab=latch+}
N -50 -120 70 -120 {
lab=latch+}
N -20 90 20 90 {lab=res}
N 120 70 120 90 {lab=#net1}
N 100 90 120 90 {lab=#net1}
N 480 100 540 100 {lab=dout}
N 300 -360 500 -360 {lab=#net2}
N 500 -360 500 -280 {lab=#net2}
N 480 -410 520 -410 {lab=out2dff}
N 440 -280 500 -280 {lab=#net2}
N 300 -430 320 -430 {lab=#net2}
N 480 -410 480 -330 {lab=out2dff}
N 440 -410 480 -410 {lab=out2dff}
N 300 -430 300 -360 {lab=#net2}
N 280 -390 320 -390 {lab=outp}
N 280 -260 320 -260 {lab=outn}
N 300 -330 480 -330 {lab=out2dff}
N 300 -330 300 -300 {lab=out2dff}
N 300 -300 320 -300 {lab=out2dff}
N -80 -600 -80 -580 {
lab=outp}
N -80 -550 0 -550 {
lab=VSS}
N -80 -770 100 -770 {
lab=VDD}
N 100 -770 100 -680 {
lab=VDD}
N -80 -770 -80 -680 {
lab=VDD}
N -80 -420 -80 -380 {
lab=#net3}
N 170 -680 170 -450 {
lab=clk}
N 140 -680 170 -680 {
lab=clk}
N -40 -350 20 -350 {
lab=vin_n}
N -140 -680 -120 -680 {
lab=outn}
N -140 -550 -120 -550 {
lab=outn}
N -390 -600 -390 -580 {
lab=outn}
N -570 -770 -570 -680 {
lab=VDD}
N -390 -770 -390 -680 {
lab=VDD}
N -390 -450 -320 -450 {
lab=VSS}
N -640 -450 -430 -450 {
lab=clk}
N -640 -680 -640 -450 {
lab=clk}
N -640 -680 -610 -680 {
lab=clk}
N -350 -680 -330 -680 {
lab=outp}
N -350 -550 -330 -550 {
lab=outp}
N -390 -770 -80 -770 {
lab=VDD}
N -570 -770 -390 -770 {
lab=VDD}
N -640 -740 -640 -680 {
lab=clk}
N 170 -740 170 -680 {
lab=clk}
N -640 -740 170 -740 {
lab=clk}
N -210 -600 -80 -600 {
lab=outp}
N -260 -640 -210 -600 {
lab=outp}
N -390 -600 -260 -600 {
lab=outn}
N -260 -600 -210 -640 {
lab=outn}
N -210 -640 -140 -640 {
lab=outn}
N -140 -640 -140 -550 {
lab=outn}
N -330 -640 -260 -640 {
lab=outp}
N -330 -640 -330 -550 {
lab=outp}
N -140 -680 -140 -640 {
lab=outn}
N -330 -680 -330 -640 {
lab=outp}
N -80 -620 -80 -600 {
lab=outp}
N -390 -620 -390 -600 {
lab=outn}
N -80 -650 -80 -620 {
lab=outp}
N 100 -650 100 -620 {
lab=outp}
N -570 -650 -570 -620 {
lab=outn}
N -390 -650 -390 -620 {
lab=outn}
N -390 -280 -80 -280 {
lab=VSS}
N -720 -740 -640 -740 {
lab=clk}
N -720 -770 -570 -770 {
lab=VDD}
N 100 -620 230 -620 {
lab=outp}
N -570 -620 -390 -620 {
lab=outn}
N -390 -350 -390 -280 {
lab=VSS}
N -80 -350 -80 -280 {
lab=VSS}
N -80 -620 100 -620 {
lab=outp}
N -530 -280 -390 -280 {
lab=VSS}
N -560 -350 -430 -350 {lab=vin_p}
N -680 -620 -570 -620 {lab=outn}
N -480 -550 -390 -550 {lab=VSS}
N -160 -450 -80 -450 {lab=VSS}
N -390 -420 -390 -380 {lab=#net4}
N -390 -520 -390 -480 {lab=#net5}
N -40 -450 170 -450 {lab=clk}
N -80 -520 -80 -480 {lab=#net6}
C {devices/opin.sym} 450 -120 0 0 {name=p9 lab=d}
C {sg13g2_stdcells/sg13g2_dfrbp_2.sym} 240 50 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} -20 90 0 0 {name=p7 lab=res}
C {devices/opin.sym} 440 30 0 0 {name=p10 lab=dd}
C {sg13g2_stdcells/sg13g2_buf_2.sym} 150 -120 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 540 100 0 0 {name=p30 lab=dout}
C {devices/noconn.sym} 330 50 0 1 {name=l4}
C {devices/ipin.sym} 140 30 0 0 {name=p6 lab=clk}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 440 100 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 60 90 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 280 -390 0 0 {name=p13 sig_type=std_logic lab=outp
}
C {devices/lab_wire.sym} 280 -260 0 0 {name=p14 sig_type=std_logic lab=outn
}
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 380 -410 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 380 -280 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} -150 -450 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -320 -450 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -720 -740 0 0 {name=p11 lab=clk}
C {devices/iopin.sym} -530 -280 2 0 {name=p4 lab=VSS}
C {devices/iopin.sym} -720 -770 0 1 {name=p5 lab=VDD}
C {devices/ipin.sym} 20 -350 2 0 {name=p24 lab=vin_n}
C {devices/ipin.sym} -560 -350 0 0 {name=p29 lab=vin_p}
C {opin.sym} -680 -620 0 1 {name=p31 lab=outn
}
C {opin.sym} 230 -620 0 0 {name=p12 lab=outp}
C {sg13g2_pr/sg13_lv_pmos.sym} -590 -680 0 0 {name=M5p
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -100 -680 0 0 {name=M4n
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -370 -680 0 1 {name=M4p
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -680 0 1 {name=M5n
l=Lpmos
w=Wpmos
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -370 -550 2 0 {name=M3p
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -100 -550 2 1 {name=M3n
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -60 -350 2 0 {name=M1n
l=Lnmos2
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -410 -350 2 1 {name=M1p
l=Lnmos2
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 0 -550 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -480 -550 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -60 -450 2 0 {name=M1
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -410 -450 2 1 {name=M2
l=Lnmos
w=Wnmos
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 510 -410 0 1 {name=p2 sig_type=std_logic lab=out2dff
}
C {devices/lab_wire.sym} -50 -120 0 1 {name=p1 sig_type=std_logic lab=out2dff
}
