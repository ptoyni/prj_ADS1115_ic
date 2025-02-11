v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -740 80 -720 {
lab=GND}
N 80 -840 80 -800 {p1
lab=Vcm}
N 200 -740 200 -720 {
lab=GND}
N 200 -840 200 -800 {p1
lab=Vin}
N 130 -340 130 -320 {
lab=#net1}
N 60 -400 90 -400 {
lab=GND}
N 60 -400 60 -370 {
lab=GND}
N 60 -420 90 -420 {
lab=p1}
N 360 -340 360 -320 {
lab=#net2}
N 290 -400 320 -400 {
lab=GND}
N 290 -400 290 -370 {
lab=GND}
N 290 -420 320 -420 {
lab=p2}
N 130 -260 130 -110 {
lab=#net3}
N 60 -270 90 -270 {
lab=GND}
N 60 -270 60 -240 {
lab=GND}
N 60 -290 90 -290 {
lab=p2}
N 360 -260 360 -240 {
lab=Vcm}
N 290 -270 320 -270 {
lab=GND}
N 290 -270 290 -240 {
lab=GND}
N 290 -290 320 -290 {
lab=p1}
N 360 -500 360 -450 {lab=#net4}
N 130 -340 190 -340 {lab=#net1}
N 130 -390 130 -340 {
lab=#net1}
N 250 -340 360 -340 {lab=#net2}
N 360 -390 360 -340 {
lab=#net2}
N 500 -570 520 -570 {lab=#net4}
N 500 -570 500 -500 {lab=#net4}
N 770 -340 770 -320 {
lab=#net5}
N 700 -400 730 -400 {
lab=GND}
N 700 -400 700 -370 {
lab=GND}
N 700 -420 730 -420 {
lab=p1}
N 1000 -340 1000 -320 {
lab=#net6}
N 930 -400 960 -400 {
lab=GND}
N 930 -400 930 -370 {
lab=GND}
N 930 -420 960 -420 {
lab=p2}
N 770 -260 770 -110 {
lab=#net3}
N 700 -270 730 -270 {
lab=GND}
N 700 -270 700 -240 {
lab=GND}
N 700 -290 730 -290 {
lab=p2}
N 1000 -260 1000 -240 {
lab=Vcm}
N 930 -270 960 -270 {
lab=GND}
N 930 -270 930 -240 {
lab=GND}
N 930 -290 960 -290 {
lab=p1}
N 1120 -350 1220 -350 {lab=Vcm}
N 1000 -500 1000 -450 {lab=#net7}
N 1140 -500 1220 -500 {lab=#net7}
N 770 -340 830 -340 {lab=#net5}
N 770 -390 770 -340 {
lab=#net5}
N 890 -340 1000 -340 {lab=#net6}
N 1000 -390 1000 -340 {
lab=#net6}
N 1140 -570 1160 -570 {lab=#net7}
N 1140 -570 1140 -500 {lab=#net7}
N 1000 -500 1140 -500 {lab=#net7}
N 770 -470 770 -450 {lab=vo1}
N 130 -110 770 -110 {lab=#net3}
N 770 -110 1210 -110 {lab=#net3}
N 830 -480 830 -470 {lab=vo1}
N 770 -470 830 -470 {lab=vo1}
N -120 -740 -120 -720 {
lab=GND}
N -120 -840 -120 -800 {p1
lab=VDD}
N -200 -740 -200 -720 {
lab=GND}
N -200 -840 -200 -800 {p1
lab=VSS}
N 1290 -110 2150 -110 {lab=vcmp}
N 1470 -510 1510 -510 {
lab=p1}
N 2150 -510 2150 -110 {lab=vcmp}
N 700 -570 700 -470 {lab=vo1}
N 580 -570 700 -570 {lab=vo1}
N 1220 -570 1330 -570 {lab=vo2}
N 360 -740 360 -720 {
lab=GND}
N 360 -840 360 -800 {p1
lab=p1}
N 720 -740 720 -720 {
lab=GND}
N 720 -840 720 -800 {p1
lab=p2}
N 1330 -570 1330 -470 {lab=vo2}
N 1810 -490 1910 -490 {lab=GND}
N 1810 -510 2150 -510 {lab=vcmp}
N 2150 -520 2150 -510 {lab=vcmp}
N 360 -500 500 -500 {lab=#net4}
N 700 -470 770 -470 {lab=vo1}
N 520 -460 550 -460 {lab=Vcm}
N 520 -460 520 -430 {lab=Vcm}
N 500 -500 500 -480 {lab=#net4}
N 500 -480 550 -480 {lab=#net4}
N 660 -470 700 -470 {lab=vo1}
N 1220 -500 1220 -480 {lab=#net7}
N 1220 -460 1220 -350 {lab=Vcm}
N 1390 -490 1510 -490 {lab=vo2}
N 1390 -490 1390 -470 {lab=vo2}
N 1330 -470 1390 -470 {lab=vo2}
N 1410 -470 1510 -470 {lab=GND}
N 1410 -470 1410 -440 {lab=GND}
C {devices/gnd.sym} 80 -720 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 80 -770 0 0 {name=Vcm value="dc \{vdd/2\}"}
C {devices/gnd.sym} 200 -720 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 200 -770 0 0 {name=Vin value="SIN(0 0.7 80 0 0 0)"}
C {devices/switch_ngspice.sym} 130 -420 0 0 {name=S1 model=mysw}
C {devices/gnd.sym} 60 -370 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 60 -420 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 360 -420 0 0 {name=S2 model=mysw}
C {devices/gnd.sym} 290 -370 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 290 -420 0 0 {name=p3 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 130 -290 0 0 {name=S3 model=mysw}
C {devices/gnd.sym} 60 -240 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 60 -290 0 0 {name=p4 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 360 -290 0 0 {name=S4 model=mysw}
C {devices/gnd.sym} 290 -240 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 290 -290 0 0 {name=p5 sig_type=std_logic lab=p1}
C {devices/capa.sym} 220 -340 3 0 {name=C7
m=1
value=0.3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 360 -240 0 0 {name=p8 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 550 -570 3 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} 770 -420 0 0 {name=S5 model=mysw}
C {devices/gnd.sym} 700 -370 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 700 -420 0 0 {name=p9 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 1000 -420 0 0 {name=S6 model=mysw}
C {devices/gnd.sym} 930 -370 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 930 -420 0 0 {name=p10 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 770 -290 0 0 {name=S7 model=mysw}
C {devices/gnd.sym} 700 -240 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 700 -290 0 0 {name=p11 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 1000 -290 0 0 {name=S8 model=mysw}
C {devices/gnd.sym} 930 -240 0 0 {name=l18 lab=GND}
C {devices/lab_wire.sym} 930 -290 0 0 {name=p12 sig_type=std_logic lab=p1}
C {devices/capa.sym} 860 -340 3 0 {name=C2
m=1
value=0.2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1000 -240 0 0 {name=p14 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 1190 -570 3 0 {name=C3
m=1
value=0.7p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 200 -840 0 0 {name=p15 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 130 -450 0 0 {name=p16 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 80 -840 0 0 {name=p17 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 2150 -520 0 0 {name=p19 sig_type=std_logic lab=vcmp}
C {devices/lab_wire.sym} 830 -480 0 0 {name=p23 sig_type=std_logic lab=vo1}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1250 -110 0 1 {name=x2 VDD=Vdd VSS=Vss prefix=sg13g2_ }
C {devices/code_shown.sym} 2380 -210 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/gnd.sym} -120 -720 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -120 -770 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} -120 -840 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} -200 -720 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} -200 -770 0 0 {name=Vss value= dc 0}
C {devices/vdd.sym} -200 -840 0 0 {name=l20 lab=VSS}
C {devices/title.sym} 180 110 0 0 {name=l21 author="(c) Priyanka, @HSB"}
C {devices/code_shown.sym} 2380 -630 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.param temp=27 vdd = 1.5
.param Wnmos=2u Wpmos=4u 
.param Lnmos=.13u Lpmos=.13u Lnmos2=1u
.model mysw SW vt=\{vdd/2\} ron=0.1
.option method=gear reltol=1e-4

.control
save all
run
tran 10u 40m
plot Vin

set wr_singlescale
set wr_vecnames

.endc
"}
C {devices/gnd.sym} 1410 -440 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1910 -490 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 1470 -510 0 0 {name=p18 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 360 -720 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 360 -770 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100n, 100n, 2u, 4.5u) "}
C {devices/lab_wire.sym} 360 -840 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 720 -720 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 720 -770 0 0 {name=Vp2 value="dc 0 pulse(0, \{vdd\}, 2.25u, 100n, 100n, 2u, 4.5u)"}
C {devices/lab_wire.sym} 720 -840 0 0 {name=p1 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 1370 -470 0 0 {name=p20 sig_type=std_logic lab=vo2}
C {SC_ota_VCCS.sym} 700 -470 0 0 {name=x3}
C {SC_ota_VCCS.sym} 1370 -470 0 0 {name=x4}
C {/foss/designs/analog-circuit-design/priyanka/comp/final_working_comp.sym} 1660 -490 0 0 {name=x1}
C {devices/lab_wire.sym} 520 -430 0 0 {name=p6 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 1120 -350 0 0 {name=p13 sig_type=std_logic lab=Vcm}
