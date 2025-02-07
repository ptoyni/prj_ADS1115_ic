v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -20 70 -20 {lab=out1n}
N 0 0 70 0 {lab=out1p}
N -30 -120 0 -120 {lab=VDD}
N -250 -20 -230 -20 {lab=vin_p}
N -250 -0 -230 0 {lab=vin_n}
N 250 -20 310 -20 {lab=out2p}
N 250 -40 260 -40 {lab=out2n}
N 0 -120 -0 -40 {lab=VDD}
N 70 -120 70 -40 {lab=VDD}
N -0 -120 70 -120 {lab=VDD}
N -20 90 0 90 {lab=VSS}
N 0 20 -0 90 {lab=VSS}
N 70 20 70 90 {lab=VSS}
N 0 90 70 90 {lab=VSS}
N 300 20 310 20 {lab=rst}
N 510 -20 520 -20 {lab=d}
N 510 0 520 0 {lab=dd}
N 510 20 520 20 {lab=dout}
N -240 -110 -200 -110 {lab=clk}
N -250 -40 -230 -40 {lab=clk}
N 280 0 310 0 {lab=clk}
C {comp_test.sym} -80 -10 0 0 {name=x1}
C {latch_stage_test.sym} 220 -10 0 0 {name=x2}
C {d_flipflop.sym} 460 0 0 0 {name=x3}
C {lab_wire.sym} 10 -20 0 1 {name=p7 sig_type=std_logic lab=out1n}
C {lab_wire.sym} 10 0 0 1 {name=p8 sig_type=std_logic lab=out1p
}
C {devices/ipin.sym} -240 -110 0 0 {name=p11 lab=clk}
C {devices/iopin.sym} -30 -120 0 1 {name=p13 lab=VDD}
C {devices/ipin.sym} -250 0 2 1 {name=p24 lab=vin_n}
C {devices/ipin.sym} -250 -20 0 0 {name=p29 lab=vin_p}
C {lab_wire.sym} 260 -20 0 1 {name=p9 sig_type=std_logic lab=out2p}
C {lab_wire.sym} 260 -40 0 1 {name=p2 sig_type=std_logic lab=out2n}
C {devices/iopin.sym} -20 90 0 1 {name=p3 lab=VSS}
C {devices/ipin.sym} 300 20 0 0 {name=p4 lab=rst}
C {opin.sym} 520 -20 0 0 {name=p5 lab=d}
C {opin.sym} 520 0 0 0 {name=p6 lab=dd}
C {opin.sym} 520 20 0 0 {name=p10 lab=dout}
C {lab_wire.sym} -220 -110 0 1 {name=p12 sig_type=std_logic lab=clk}
C {lab_wire.sym} -250 -40 0 1 {name=p14 sig_type=std_logic lab=clk}
C {lab_wire.sym} 280 0 0 1 {name=p1 sig_type=std_logic lab=clk}
