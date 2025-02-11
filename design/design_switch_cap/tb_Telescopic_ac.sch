v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 930 -360 930 -340 {
lab=GND}
N 930 -440 930 -420 {
lab=v_ss}
N 930 -440 1030 -440 {
lab=v_ss}
N 780 -380 780 -360 {
lab=GND}
N 780 -820 780 -440 {
lab=v_dd}
N 1030 -670 1030 -580 {
lab=v_in}
N 1030 -520 1030 -440 {lab=v_ss}
N 1300 -820 1300 -800 {
lab=v_dd}
N 1300 -740 1300 -640 {
lab=#net1}
N 1300 -640 1350 -640 {lab=#net1}
N 1480 -820 1480 -690 {lab=v_dd}
N 1300 -820 1480 -820 {lab=v_dd}
N 780 -820 1300 -820 {lab=v_dd}
N 1650 -640 1720 -640 {lab=v_out}
N 1800 -540 1800 -440 {
lab=v_ss}
N 1720 -640 1800 -640 {lab=v_out}
N 1800 -640 1800 -600 {lab=v_out}
N 1720 -640 1720 -530 {
lab=v_out}
N 1480 -440 1800 -440 {lab=v_ss}
N 1270 -530 1720 -530 {lab=v_out}
N 1030 -670 1350 -670 {lab=v_in}
N 1480 -590 1480 -440 {lab=v_ss}
N 1030 -440 1480 -440 {lab=v_ss}
N 1470 -690 1480 -690 {lab=v_dd}
N 1470 -590 1480 -590 {lab=v_ss}
N 1270 -610 1270 -530 {lab=v_out}
N 1270 -610 1350 -610 {lab=v_out}
C {devices/vsource.sym} 930 -390 0 0 {name=Vss value=0}
C {devices/gnd.sym} 930 -340 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 930 -440 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 780 -410 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 780 -360 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 780 -450 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1030 -550 0 0 {name=Vin value="dc 0.7 ac 1"}
C {lab_wire.sym} 1090 -670 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1150 -670 0 0 {name=p5 attrs=""}
C {isource.sym} 1300 -770 0 0 {name=I0 value=0.8u}
C {capa.sym} 1800 -570 0 0 {name=C1
value=0.47p}
C {lab_wire.sym} 1800 -640 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1680 -640 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 70 -90 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 70 -170 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/title.sym} 490 -1030 0 0 {name=l5 author="(c) 2024 Priyanka, @HSB"}
C {devices/code_shown.sym} 60 -900 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write Telescopic_ac.raw
set appendwrite

ac dec 101 1k 0.1G
write Telescopic_ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror





plot 180/pi*ph(v_out) vs frequency

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {Telescopic.sym} 1500 -640 0 0 {name=x1}
