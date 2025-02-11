v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 970 -360 970 -340 {
lab=GND}
N 970 -440 970 -420 {
lab=v_ss}
N 970 -440 1070 -440 {
lab=v_ss}
N 820 -380 820 -360 {
lab=GND}
N 820 -820 820 -440 {
lab=v_dd}
N 1070 -670 1070 -580 {
lab=v_in}
N 1070 -520 1070 -440 {lab=v_ss}
N 1340 -820 1340 -800 {
lab=v_dd}
N 1340 -740 1340 -640 {
lab=#net1}
N 1340 -640 1390 -640 {lab=#net1}
N 1520 -820 1520 -690 {lab=v_dd}
N 1340 -820 1520 -820 {lab=v_dd}
N 820 -820 1340 -820 {lab=v_dd}
N 1690 -640 1760 -640 {lab=v_out}
N 1840 -540 1840 -440 {
lab=v_ss}
N 1760 -640 1840 -640 {lab=v_out}
N 1840 -640 1840 -600 {lab=v_out}
N 1760 -640 1760 -530 {
lab=v_out}
N 1520 -440 1840 -440 {lab=v_ss}
N 1310 -530 1760 -530 {lab=v_out}
N 1070 -670 1390 -670 {lab=v_in}
N 1520 -590 1520 -440 {lab=v_ss}
N 1070 -440 1520 -440 {lab=v_ss}
N 1510 -690 1520 -690 {lab=v_dd}
N 1510 -590 1520 -590 {lab=v_ss}
N 1310 -610 1310 -530 {lab=v_out}
N 1310 -610 1390 -610 {lab=v_out}
C {devices/vsource.sym} 970 -390 0 0 {name=Vss value=0}
C {devices/gnd.sym} 970 -340 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 970 -440 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 820 -410 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 820 -360 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 820 -450 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1070 -550 0 0 {name=Vin value="dc 0.7 ac 1"}
C {lab_wire.sym} 1130 -670 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1190 -670 0 0 {name=p5 attrs=""}
C {isource.sym} 1340 -770 0 0 {name=I0 value=0.8u}
C {capa.sym} 1840 -570 0 0 {name=C1
value=0.47p}
C {lab_wire.sym} 1840 -640 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1720 -640 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 110 -90 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 110 -170 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/title.sym} 530 -1030 0 0 {name=l5 author="(c) 2024 Priyanka, @HSB"}
C {devices/code_shown.sym} 180 -810 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.ic v(v_vout)=0
.control

tran 0.005u 15u uic
plot v_out

let tstart=0
let vout_limit=0.7*0.99
meas tran tcross WHEN v(v_out)=vout_limit

let tsettle=tcross-tstart
print tsettle

.endc
"}
C {Telescopic.sym} 1540 -640 0 0 {name=x1}
