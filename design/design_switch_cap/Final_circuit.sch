v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 510 -710 510 -690 {
lab=GND}
N 510 -810 510 -770 {p1
lab=Vcm}
N 630 -710 630 -690 {
lab=GND}
N 630 -810 630 -770 {p1
lab=Vin}
N 410 -220 410 -200 {
lab=#net1}
N 340 -280 370 -280 {
lab=GND}
N 340 -280 340 -250 {
lab=GND}
N 340 -300 370 -300 {
lab=p1}
N 640 -220 640 -200 {
lab=#net2}
N 570 -280 600 -280 {
lab=GND}
N 570 -280 570 -250 {
lab=GND}
N 570 -300 600 -300 {
lab=p2}
N 340 -150 370 -150 {
lab=GND}
N 340 -150 340 -120 {
lab=GND}
N 340 -170 370 -170 {
lab=p2}
N 640 -140 640 -120 {
lab=Vcm}
N 570 -150 600 -150 {
lab=GND}
N 570 -150 570 -120 {
lab=GND}
N 570 -170 600 -170 {
lab=p1}
N 800 -340 850 -340 {lab=Vcm}
N 640 -380 640 -330 {lab=#net3}
N 780 -380 850 -380 {lab=#net3}
N 410 -220 470 -220 {lab=#net1}
N 410 -270 410 -220 {
lab=#net1}
N 530 -220 640 -220 {lab=#net2}
N 640 -270 640 -220 {
lab=#net2}
N 860 -450 1000 -450 {lab=vo1}
N 780 -450 800 -450 {lab=#net3}
N 780 -450 780 -380 {lab=#net3}
N 640 -380 780 -380 {lab=#net3}
N 310 -710 310 -690 {
lab=GND}
N 310 -810 310 -770 {p1
lab=VDD}
N 400 -710 400 -690 {
lab=GND}
N 400 -810 400 -770 {p1
lab=VSS}
N 1170 -220 1170 -200 {
lab=#net4}
N 1100 -280 1130 -280 {
lab=GND}
N 1100 -280 1100 -250 {
lab=GND}
N 1100 -300 1130 -300 {
lab=p2}
N 1400 -220 1400 -200 {
lab=#net5}
N 1330 -280 1360 -280 {
lab=GND}
N 1330 -280 1330 -250 {
lab=GND}
N 1330 -300 1360 -300 {
lab=p1}
N 1100 -150 1130 -150 {
lab=GND}
N 1100 -150 1100 -120 {
lab=GND}
N 1100 -170 1130 -170 {
lab=p1}
N 1400 -140 1400 -120 {
lab=Vcm}
N 1330 -150 1360 -150 {
lab=GND}
N 1330 -150 1330 -120 {
lab=GND}
N 1330 -170 1360 -170 {
lab=p2}
N 1560 -340 1600 -340 {lab=Vcm}
N 1400 -380 1400 -330 {lab=#net6}
N 1540 -380 1600 -380 {lab=#net6}
N 1170 -220 1230 -220 {lab=#net4}
N 1170 -270 1170 -220 {
lab=#net4}
N 1290 -220 1400 -220 {lab=#net5}
N 1400 -270 1400 -220 {
lab=#net5}
N 1620 -450 1740 -450 {lab=vo2}
N 1540 -450 1560 -450 {lab=#net6}
N 1540 -450 1540 -380 {lab=#net6}
N 1400 -380 1540 -380 {lab=#net6}
N 1600 -350 1600 -340 {lab=Vcm}
N 1600 -380 1600 -370 {lab=#net6}
N 850 -380 850 -370 {lab=#net3}
N 850 -350 850 -340 {lab=Vcm}
N 1740 -450 1740 -360 {lab=vo2}
N 1740 -360 1790 -360 {lab=vo2}
N 1000 -360 1030 -360 {lab=vo1}
N 790 -720 790 -700 {
lab=GND}
N 790 -820 790 -780 {p1
lab=p1}
N 1150 -720 1150 -700 {
lab=GND}
N 1150 -820 1150 -780 {p1
lab=p2}
N 1000 -450 1000 -360 {lab=vo1}
N 960 -360 1000 -360 {lab=vo1}
N 1710 -360 1740 -360 {lab=vo2}
C {devices/gnd.sym} 510 -690 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 510 -740 0 0 {name=Vcm value="dc \{vdd/2\}"}
C {devices/gnd.sym} 630 -690 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 630 -740 0 0 {name=Vin value= "SIN(0 0.7 80 0 0 0)"}
C {devices/switch_ngspice.sym} 410 -300 0 0 {name=S1 model=mysw}
C {devices/gnd.sym} 340 -250 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 340 -300 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 640 -300 0 0 {name=S2 model=mysw}
C {devices/gnd.sym} 570 -250 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 570 -300 0 0 {name=p3 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 410 -170 0 0 {name=S3 model=mysw}
C {devices/gnd.sym} 340 -120 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 340 -170 0 0 {name=p4 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 640 -170 0 0 {name=S4 model=mysw}
C {devices/gnd.sym} 570 -120 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 570 -170 0 0 {name=p5 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 800 -340 0 0 {name=p6 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 500 -220 3 0 {name=C7
m=1
value=0.3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 640 -120 0 0 {name=p8 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 830 -450 3 0 {name=C1
m=1
value=2.06p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 630 -810 0 0 {name=p15 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 410 -330 0 0 {name=p16 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 510 -810 0 0 {name=p17 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 1030 -360 0 1 {name=p23 sig_type=std_logic lab=vo1}
C {devices/code_shown.sym} 1840 -270 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 1840 -640 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd = 1.5
.model mysw SW vt=\{vdd/2\} ron=0.1
.option method=gear reltol=1e-4

.control
save all

run
tran 10n 240u
plot Vin

set wr_singlescale
set wr_vecnames
wrdata Final_circuit.txt vo1 vo2 p1 p2
.endc
"}
C {devices/gnd.sym} 310 -690 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 310 -740 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} 310 -810 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 400 -690 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} 400 -740 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 400 -810 0 0 {name=l20 lab=VSS}
C {devices/title.sym} 400 100 0 0 {name=l21 author="(c) Priyanka, @HSB"}
C {devices/gnd.sym} 410 -140 0 0 {name=l1 lab=GND}
C {devices/switch_ngspice.sym} 1170 -300 0 0 {name=S5 model=mysw}
C {devices/gnd.sym} 1100 -250 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1100 -300 0 0 {name=p9 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 1400 -300 0 0 {name=S6 model=mysw}
C {devices/gnd.sym} 1330 -250 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 1330 -300 0 0 {name=p10 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 1170 -170 0 0 {name=S7 model=mysw}
C {devices/gnd.sym} 1100 -120 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 1100 -170 0 0 {name=p11 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 1400 -170 0 0 {name=S8 model=mysw}
C {devices/gnd.sym} 1330 -120 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 1330 -170 0 0 {name=p12 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 1560 -340 0 0 {name=p13 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 1260 -220 3 0 {name=C2
m=1
value=0.2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1400 -120 0 0 {name=p14 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 1590 -450 3 0 {name=C3
m=1
value=0.7p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1170 -330 0 0 {name=p18 sig_type=std_logic lab=vo1}
C {devices/lab_wire.sym} 1790 -360 0 1 {name=p19 sig_type=std_logic lab=vo2}
C {devices/gnd.sym} 1170 -140 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 790 -700 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 790 -750 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100n, 100n, 2u, 4.5u) "}
C {devices/lab_wire.sym} 790 -820 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 1150 -700 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 1150 -750 0 0 {name=Vp2 value="dc 0 pulse(0, \{vdd\}, 2.25u, 100n, 100n, 2u, 4.5u)"}
C {devices/lab_wire.sym} 1150 -820 0 0 {name=p1 sig_type=std_logic lab=p2}
C {SC_ota_VCCS.sym} 1000 -360 0 0 {name=x1}
C {SC_ota_VCCS.sym} 1750 -360 0 0 {name=x2}
