v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Initially (0-8ns): vin_n = vdd/2; vin_p = (vdd/2)+vdiff
Eventually (>8.1n): vin_n = vdd/2; vin_p = (vdd/2)-vdiff} 0 0 0 0 0.4 0.4 {}
N 360 -310 360 -300 {p1
lab=VDD}
N 280 -310 280 -300 {p1
lab=VSS}
N 200 -310 200 -300 {lab=clk}
N -180 -130 -180 -70 {lab=vin_n}
N 210 -150 250 -150 {
lab=d}
N 210 -130 250 -130 {
lab=dd}
N 210 -110 250 -110 {
lab=dout}
N -250 -150 -90 -150 {lab=vin_p}
N -250 -150 -250 -140 {lab=vin_p}
N -250 -80 -250 -70 {lab=vin_n}
N -250 -70 -250 -60 {lab=vin_n}
N 450 -310 450 -300 {lab=rst}
N -250 -70 -180 -70 {lab=vin_n}
N -180 -130 -90 -130 {lab=vin_n}
N -110 -110 -90 -110 {lab=rst}
N -120 -170 -90 -170 {lab=clk}
N 400 -90 400 -80 {lab=GND}
N 470 -90 470 -80 {lab=GND}
N 540 -90 540 -80 {lab=GND}
N 540 -160 540 -150 {lab=dout}
N 470 -160 470 -150 {lab=dd}
N 400 -160 400 -150 {lab=d}
C {devices/gnd.sym} 360 -240 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 360 -270 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} 360 -310 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} 280 -240 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 280 -270 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 280 -310 0 0 {name=l11 lab=VSS}
C {devices/code_shown.sym} -600 -570 0 0 {name=NGSPICE only_toplevel=true 
value=
"
.param temp=27 vdd=3.3 per=15n vdiff=10m 
.param Wnmos=2u Wpmos=4u 
.param Lnmos=.13u Lpmos=.13u Lnmos2=2u
.param Cload=1p
.option method=gear reltol=1e-5
		
.control	
save all
tran 10p 40n
write /foss/designs/prj_ADS1115_ic-1/design/design_comp/comp_data/comp_sys_tb.raw
plot clk vin_p vin_n
plot clk x4.out1p x4.out1n
plot x4.out2p x4.out2n
plot d dd dout

.endc"
 }
C {devices/code_shown.sym} -90 -540 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice"}
C {vsource.sym} -250 -110 0 1 {name=Vdiff value="pwl 0 \{vdiff\} 8n \{vdiff\} 8.1n \{-vdiff\}"  savecurrent=false}
C {vsource.sym} -250 -30 0 0 {name=Vmid value=\{vdd/2\} savecurrent=false}
C {vsource.sym} 200 -270 0 1 {name=Vclk value="dc 0 pulse(0, \{vdd\}, 1n, 50p, 50p, \{per/2-1n\}, \{per\})"
 savecurrent=false}
C {gnd.sym} -250 0 0 0 {name=l2 lab=GND}
C {gnd.sym} 200 -240 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -120 -170 0 0 {name=p1 sig_type=std_logic lab=clk}
C {lab_wire.sym} -180 -150 0 0 {name=p2 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} -180 -130 0 0 {name=p6 sig_type=std_logic lab=vin_n}
C {devices/gnd.sym} 450 -240 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 450 -270 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/4\}, \{vdd\}, \{per/4+50p\}, 0)"}
C {devices/lab_wire.sym} 240 -150 0 1 {name=p4 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 240 -130 0 1 {name=p3 sig_type=std_logic lab=dd}
C {devices/lab_wire.sym} 240 -110 0 1 {name=p5 sig_type=std_logic lab=dout}
C {devices/vdd.sym} 200 -310 0 0 {name=l12 lab=clk}
C {comp_sys.sym} 60 -130 0 0 {name=x4}
C {devices/vdd.sym} 450 -310 0 0 {name=l13 lab=rst}
C {devices/vdd.sym} 140 -60 2 0 {name=l1 lab=VSS}
C {devices/vdd.sym} 140 -200 0 0 {name=l4 lab=VDD}
C {lab_wire.sym} -110 -110 0 0 {name=p7 sig_type=std_logic lab=rst}
C {capa.sym} 400 -120 0 0 {name=C1
value=\{Cload\}}
C {gnd.sym} 400 -80 0 0 {name=l5 lab=GND}
C {capa.sym} 470 -120 0 0 {name=C2
value=\{Cload\}}
C {gnd.sym} 470 -80 0 0 {name=l6 lab=GND}
C {capa.sym} 540 -120 0 0 {name=C3
value=Cload}
C {gnd.sym} 540 -80 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 400 -160 0 1 {name=p8 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 470 -160 0 1 {name=p9 sig_type=std_logic lab=dd}
C {devices/lab_wire.sym} 540 -160 0 1 {name=p10 sig_type=std_logic lab=dout}
