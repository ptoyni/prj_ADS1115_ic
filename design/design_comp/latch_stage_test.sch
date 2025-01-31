v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -260 140 -240 {
lab=dint}
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
N 180 -110 390 -110 {
lab=in-}
N 390 -340 390 -110 {
lab=in-}
N 360 -340 390 -340 {
lab=in-}
N 80 -340 100 -340 {
lab=#net2}
N 80 -210 100 -210 {
lab=#net2}
N -170 -260 -170 -240 {
lab=#net2}
N -270 -210 -170 -210 {
lab=VSS}
N -350 -430 -350 -340 {
lab=VDD}
N -170 -430 -170 -340 {
lab=VDD}
N -170 -180 -170 -140 {
lab=#net3}
N -420 -110 -210 -110 {
lab=in+}
N -130 -340 -110 -340 {
lab=dint}
N -130 -210 -110 -210 {
lab=dint}
N -10 -430 140 -430 {
lab=VDD}
N -350 -430 -170 -430 {
lab=VDD}
N -170 60 140 60 {
lab=VSS}
N 10 -260 140 -260 {
lab=dint}
N -40 -300 10 -260 {
lab=dint}
N -170 -260 -40 -260 {
lab=#net2}
N -40 -260 10 -300 {
lab=#net2}
N 10 -300 80 -300 {
lab=#net2}
N 80 -300 80 -210 {
lab=#net2}
N -110 -300 -40 -300 {
lab=dint}
N -110 -300 -110 -210 {
lab=dint}
N 80 -340 80 -300 {
lab=#net2}
N -110 -340 -110 -300 {
lab=dint}
N 140 -280 140 -260 {
lab=dint}
N -170 -280 -170 -260 {
lab=#net2}
N 140 -310 140 -280 {
lab=dint}
N 320 -310 320 -280 {
lab=dint}
N -350 -310 -350 -280 {
lab=#net2}
N -170 -310 -170 -280 {
lab=#net2}
N -350 -280 -170 -280 {
lab=#net2}
N -420 -340 -420 -110 {
lab=in+}
N -170 -110 -170 60 {
lab=VSS}
N 140 -110 140 60 {
lab=VSS}
N 510 -30 520 -30 {
lab=clk}
N 490 10 520 10 {
lab=#net4}
N 730 -30 810 -30 {
lab=dd}
N 440 -280 440 -10 {
lab=dint}
N 140 -280 320 -280 {
lab=dint}
N 440 -280 480 -280 {
lab=dint}
N 560 -280 820 -280 {
lab=d}
N 340 50 370 50 {
lab=res}
N 450 50 490 50 {
lab=#net4}
N 490 10 490 50 {
lab=#net4}
N 730 40 770 40 {
lab=dd}
N 730 -30 730 40 {
lab=dd}
N 700 -30 730 -30 {
lab=dd}
N 850 40 890 40 {
lab=dout}
N -420 -340 -390 -340 {lab=in+}
N -450 -340 -420 -340 {lab=in+}
N 390 -340 420 -340 {lab=in-}
N 320 -280 440 -280 {
lab=dint}
N 440 -10 520 -10 {lab=dint}
N -10 -450 -10 -430 {lab=VDD}
N -170 -430 -10 -430 {
lab=VDD}
C {devices/opin.sym} 820 -280 0 0 {name=p9 lab=d}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -210 2 1 {name=M32m
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -340 0 0 {name=M2
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} 240 -210 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 340 -340 0 1 {name=M3
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -110 2 0 {name=M21m
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -150 -210 2 0 {name=M32p
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -150 -340 0 1 {name=M42p
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -270 -210 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} -370 -340 0 0 {name=M8
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -190 -110 2 1 {name=M21p
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_dfrbp_2.sym} 610 -10 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} 340 50 0 0 {name=p7 lab=res}
C {devices/opin.sym} 810 -30 0 0 {name=p10 lab=dd}
C {sg13g2_stdcells/sg13g2_buf_2.sym} 520 -280 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 410 50 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 440 -70 0 0 {name=p4 sig_type=std_logic lab=dint}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 810 40 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 890 40 0 0 {name=p30 lab=dout}
C {devices/noconn.sym} 700 -10 0 1 {name=l4}
C {ipin.sym} -450 -340 0 0 {name=p1 lab=in+}
C {ipin.sym} 420 -340 0 1 {name=p2 lab=in-}
C {ipin.sym} -10 -450 1 0 {name=p3 lab=VDD}
C {ipin.sym} -10 60 3 0 {name=p5 lab=VSS}
C {devices/ipin.sym} 510 -30 0 0 {name=p6 lab=clk}
