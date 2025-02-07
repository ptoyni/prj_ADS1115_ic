v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 50 -760 850 -360 {flags=graph
y1=-0.1
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.9356804e-09
x2=1.1626022e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="7 4 12"
node="p2
p1
p2d"}
N 20 -50 20 -20 {lab=GND}
N 110 -50 110 -20 {lab=GND}
N 20 -140 20 -110 {lab=VDD}
N 110 -230 110 -110 {lab=A}
N 110 -230 220 -230 {lab=A}
N 520 -230 770 -230 {lab=p1e}
N 520 -190 630 -190 {lab=p2}
N 520 -170 570 -170 {lab=p2e}
N 570 -170 570 -100 {lab=p2e}
N 570 -40 570 -20 {lab=GND}
N 630 -40 630 -20 {lab=GND}
N 700 -40 700 -20 {lab=GND}
N 770 -40 770 -20 {lab=GND}
N 630 -190 630 -100 {lab=p2}
N 700 -210 700 -100 {lab=p1}
N 520 -210 700 -210 {lab=p1}
N 770 -230 770 -100 {lab=p1e}
C {vsource.sym} 110 -80 0 0 {name=V1 value="dc 0 pulse(0, \{vdd\}, 5n, 100p, 100p, \{per/2\}, \{per\}) " savecurrent=false}
C {gnd.sym} 110 -20 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 20 -20 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 20 -80 0 0 {name=Vsup value=\{vdd\}
}
C {lab_pin.sym} 110 -170 0 0 {name=p3 sig_type=std_logic lab=A
}
C {vdd.sym} 20 -140 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} 770 -230 2 0 {name=p1 sig_type=std_logic lab=p1e
}
C {lab_pin.sym} 700 -210 2 0 {name=p2 sig_type=std_logic lab=p1}
C {lab_pin.sym} 630 -190 2 0 {name=p4 sig_type=std_logic lab=p2}
C {lab_pin.sym} 570 -170 2 0 {name=p5 sig_type=std_logic lab=p2e}
C {devices/code_shown.sym} 890 -50 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {devices/capa.sym} 570 -70 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 570 -20 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 630 -70 0 0 {name=C2
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 630 -20 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 700 -70 0 0 {name=C3
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 700 -20 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 770 -70 0 0 {name=C4
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 770 -20 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 890 -300 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2 per=20n cl=50f
.option method=gear

.control
save all 
tran 10p 15n
meas tran tp1_p1d TRIG v(p1) VAL=0.6 FALL=1 TARG v(p1d) VAL=0.6 FALL=1
meas tran tp1d_p2d  TRIG v(p1d)  VAL=0.6 FALL=1 TARG v(p2d) VAL=0.6 RISE=1
write /foss/designs/prj_ADS1115_ic/design/data/tb_clkgen.raw
.endc
"}
C {devices/launcher.sym} 320 -320 0 0 {name=h1
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tb_clkgen.raw tran"
}
C {clkgen.sym} 370 -200 0 0 {name=x2}
