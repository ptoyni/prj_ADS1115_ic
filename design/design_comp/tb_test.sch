v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -380 -220 -380 -180 {p1
lab=vssa}
N -290 70 -290 110 {p1
lab=VDD}
N -380 70 -380 110 {p1
lab=VSS}
N -290 -220 -290 -180 {p1
lab=vdda}
N 430 -290 450 -290 {
lab=d}
N 240 30 280 30 {
lab=ps}
N 240 70 300 70 {
lab=pc}
N -100 30 -60 30 {
lab=clkin}
N -100 30 -100 110 {
lab=clkin}
N -180 -40 260 -40 {
lab=res}
N -170 -180 -70 -180 {
lab=#net1}
N 430 -270 450 -270 {
lab=dd}
N 430 -250 450 -250 {
lab=dout}
N 300 -200 300 70 {
lab=pc}
N 280 -200 280 30 {
lab=ps}
N -170 -280 -170 -240 {
lab=vinm}
N -170 -280 130 -280 {
lab=vinm}
N -70 -260 130 -260 {
lab=vinp}
N -70 -260 -70 -240 {
lab=vinp}
N 260 -370 260 -340 {
lab=vssa}
N 280 -390 280 -340 {
lab=vdda}
N -180 -40 -180 170 {
lab=res}
N 260 -200 260 -40 {
lab=res}
C {devices/vsource.sym} -120 -150 0 0 {name=Vic value="dc \{vic\}"}
C {devices/gnd.sym} -380 -120 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} -380 -150 0 0 {name=Vssa value="dc 0"}
C {devices/lab_wire.sym} -380 -220 0 0 {name=p12 sig_type=std_logic lab=vssa}
C {devices/gnd.sym} -180 230 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -180 200 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/4\}, \{vdd\}, \{per/4+50p\}, 0)"}
C {devices/gnd.sym} -100 170 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -100 140 0 0 {name=Vclk value="pulse(\{vdd\}, \{0\}, \{per/2\}, 100p, 100p, \{per/2\}, \{per\}) "}
C {devices/gnd.sym} -290 170 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -290 140 0 0 {name=Vddd value="dc \{vdd\}"}
C {devices/vdd.sym} -290 70 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} -380 170 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -380 140 0 0 {name=Vssd value="dc 0"}
C {devices/vdd.sym} -380 70 0 0 {name=l11 lab=VSS}
C {devices/gnd.sym} -290 -120 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -290 -150 0 0 {name=Vdda value="dc \{vdd\}"}
C {devices/lab_wire.sym} -290 -220 0 0 {name=p7 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} -120 -120 0 0 {name=l15 lab=GND}
C {devices/code_shown.sym} 370 -80 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 per=20n vdd=1.2 vic=0.6 vid=100m 
.option method=gear reltol=1e-4

.control 
tran 100p 20n
alterparam vid=-100m
reset
tran 100p 20n
plot pc tran1.x1.out1m tran1.x1.out1p
plot pc tran2.x1.out1m tran2.x1.out1p
.endc
"}
C {devices/lab_wire.sym} 450 -290 0 1 {name=p4 sig_type=std_logic lab=d}
C {devices/code_shown.sym} -330 310 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {template_comp.sym} 280 -270 0 0 {name=x1}
C {devices/lab_wire.sym} -100 30 0 0 {name=p1 sig_type=std_logic lab=clkin}
C {template_clkgen.sym} 90 60 0 0 {name=x2}
C {devices/vsource.sym} -170 -210 0 0 {name=Vm value="dc \{-vid/2\}"}
C {devices/vsource.sym} -70 -210 0 0 {name=Vp value="dc \{+vid/2\}"}
C {devices/lab_wire.sym} 450 -270 0 1 {name=p2 sig_type=std_logic lab=dd}
C {devices/lab_wire.sym} 450 -250 0 1 {name=p3 sig_type=std_logic lab=dout}
C {devices/lab_wire.sym} 50 -280 0 0 {name=p5 sig_type=std_logic lab=vinm}
C {devices/lab_wire.sym} 50 -260 0 0 {name=p6 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 260 -370 0 0 {name=p8 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 280 -390 0 0 {name=p9 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 260 -150 3 0 {name=p10 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 280 -150 3 0 {name=p11 sig_type=std_logic lab=ps}
C {devices/lab_wire.sym} 300 -150 3 0 {name=p13 sig_type=std_logic lab=pc}
