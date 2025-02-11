v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1760 -750 -1760 -730 {
lab=GND}
N -1680 -750 -1680 -730 {
lab=GND}
N -1760 -1210 -1470 -1210 {lab=v_dd}
N -1470 -1210 -1470 -1190 {lab=v_dd}
N -1760 -1210 -1760 -810 {lab=v_dd}
N -1680 -850 -1680 -810 {lab=v_ss}
N -1470 -1100 -1210 -1100 {lab=#net1}
N -1680 -850 -1090 -850 {lab=v_ss}
N -1470 -1210 -1090 -1210 {lab=v_dd}
N -1090 -1050 -1090 -850 {lab=v_ss}
N -1090 -1210 -1090 -1150 {lab=v_dd}
N -1470 -1130 -1470 -1100 {lab=#net1}
C {devices/gnd.sym} -1760 -730 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -1760 -830 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -1680 -780 0 0 {name=Vss value=0}
C {devices/gnd.sym} -1680 -730 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1680 -830 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {isource.sym} -1470 -1160 0 0 {name=I0 value=0.8u}
C {devices/vsource.sym} -1760 -780 0 0 {name=Vdd value=1.5}
C {ipin.sym} -1210 -1070 0 0 {name=p3 lab=vinm}
C {ipin.sym} -1210 -1130 0 0 {name=p4 lab=vinp}
C {opin.sym} -910 -1100 0 0 {name=p5 lab=vout}
C {Telescopic.sym} -1060 -1100 0 0 {name=x1}
