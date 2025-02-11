v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1480 -630 -1480 -610 {
lab=GND}
N -1400 -630 -1400 -610 {
lab=GND}
N -1480 -1090 -1190 -1090 {lab=v_dd}
N -1190 -1090 -1190 -1070 {lab=v_dd}
N -1480 -1090 -1480 -690 {lab=v_dd}
N -1400 -730 -1400 -690 {lab=v_ss}
N -1190 -1010 -930 -1010 {lab=#net1}
N -1000 -950 -930 -950 {lab=v_ss}
N -1000 -950 -1000 -730 {lab=v_ss}
N -1400 -730 -1000 -730 {lab=v_ss}
N -1190 -1090 -930 -1090 {lab=v_dd}
N -930 -1090 -930 -1030 {lab=v_dd}
C {devices/gnd.sym} -1480 -610 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -1480 -710 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -1400 -660 0 0 {name=Vss value=0}
C {devices/gnd.sym} -1400 -610 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1400 -710 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {isource.sym} -1190 -1040 0 0 {name=I0 value=0.8u}
C {devices/vsource.sym} -1480 -660 0 0 {name=Vdd value=1.5}
C {ipin.sym} -930 -990 0 0 {name=p3 lab=vinm}
C {ipin.sym} -930 -970 0 0 {name=p4 lab=vinp}
C {opin.sym} -630 -1030 0 0 {name=p5 lab=vout}
C {/foss/designs/analog-circuit-design/priyanka/basic_5t_ota_switchcap.sym} -780 -990 0 0 {name=x1}
