v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 110 60 110 {lab=vin_p}
N 360 150 380 150 {lab=VSS}
N 360 110 390 110 {lab=outn}
N 360 130 390 130 {lab=outp}
N 60 130 60 210 {lab=vin_n}
N 230 240 230 250 {p1
lab=VDD}
N 150 240 150 250 {p1
lab=VSS}
N 380 150 380 170 {lab=VSS}
N 360 90 380 90 {lab=VDD}
N 380 70 380 90 {lab=VDD}
N 490 150 690 150 {lab=nout2dff}
N 690 150 690 230 {lab=nout2dff}
N 670 100 710 100 {lab=out2dff}
N 630 230 690 230 {lab=nout2dff}
N 490 80 510 80 {lab=nout2dff}
N 670 100 670 180 {lab=out2dff}
N 630 100 670 100 {lab=out2dff}
N 490 80 490 150 {lab=nout2dff}
N 470 120 510 120 {lab=outp}
N 470 250 510 250 {lab=outn}
N 690 230 710 230 {lab=nout2dff}
N 490 180 670 180 {lab=out2dff}
N 490 180 490 210 {lab=out2dff}
N 490 210 510 210 {lab=out2dff}
N -30 90 60 90 {lab=clk}
C {lab_wire.sym} 390 110 0 0 {name=p1 sig_type=std_logic lab=outn}
C {lab_wire.sym} 390 130 0 0 {name=p2 sig_type=std_logic lab=outp}
C {lab_wire.sym} 0 90 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} 20 110 0 0 {name=p4 sig_type=std_logic lab=vin_p}
C {devices/gnd.sym} 230 310 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 230 280 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} 230 240 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} 150 310 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 150 280 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 150 240 0 0 {name=l11 lab=VSS}
C {devices/vdd.sym} 380 70 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 380 170 2 0 {name=l6 lab=VSS}
C {devices/lab_wire.sym} 470 120 0 0 {name=p13 sig_type=std_logic lab=outp
}
C {devices/lab_wire.sym} 470 250 0 0 {name=p14 sig_type=std_logic lab=outn
}
C {opin.sym} 710 100 0 0 {name=p32 lab=out2dff}
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 570 100 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 570 230 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {opin.sym} 710 230 0 0 {name=p6 lab=nout2dff}
C {/foss/designs/analog-circuit-design/priyanka/comp/comp_test.sym} 210 120 0 0 {name=x1}
C {lab_wire.sym} 60 210 0 0 {name=p5 sig_type=std_logic lab=vin_n}
C {devices/ipin.sym} -30 90 0 0 {name=p11 lab=clk}
C {devices/ipin.sym} -30 110 0 0 {name=p29 lab=vin_p}
C {devices/ipin.sym} 60 210 2 0 {name=p24 lab=vin_n}
