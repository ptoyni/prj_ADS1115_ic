v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -20 170 -10 {p1
lab=VDD}
N 90 -20 90 -10 {p1
lab=VSS}
N 10 -20 10 -10 {lab=clk}
N 20 140 60 140 {
lab=d}
N 20 160 60 160 {
lab=dd}
N 20 180 60 180 {
lab=dout}
N -440 140 -280 140 {lab=vin_p}
N -440 140 -440 160 {lab=vin_p}
N -440 220 -440 240 {lab=GND}
N 260 -20 260 -10 {lab=rst}
N -300 180 -280 180 {lab=rst}
N -310 120 -280 120 {lab=clk}
N 210 200 210 210 {lab=GND}
N 280 200 280 210 {lab=GND}
N 350 200 350 210 {lab=GND}
N 350 130 350 140 {lab=dout}
N 280 130 280 140 {lab=dd}
N 210 130 210 140 {lab=d}
N -310 160 -280 160 {}
C {devices/gnd.sym} 170 50 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 170 20 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} 170 -20 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} 90 50 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 90 20 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 90 -20 0 0 {name=l11 lab=VSS}
C {devices/code_shown.sym} -1240 -320 0 0 {name=NGSPICE only_toplevel=true 
value=
"
.param temp=27 vdd=1.5 per=10n vdiff=10m 
.param Wnmos=1u Wpmos=2u 
.param Lnmos=.2u Lpmos=.2u Lnmos2=1u
.param Cload=1p
.option method=gear reltol=1e-5
		
.control	
save all
ac dec 101 1k 100MEG
write /foss/designs/prj_ADS1115_ic-1/design/design_comp/comp_data/comp_sys_tb_ac.raw
plot 20*log10(d)

meas ac dcgain MAX vmag(d) FROM=10 To=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(d)=f3db FALL=1
let gain_err=(dcgain-1)/1
print dcgain
print fbw
print gain_err

plot 180/pi*phase(d) vs frequency

noise v(d) Vin dec 101 1k 100MEG
print onoise_total

.endc"
 }
C {devices/code_shown.sym} -280 -210 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice"}
C {vsource.sym} -440 190 0 1 {name=Vin value="dc 0.8 ac 1"  savecurrent=false}
C {vsource.sym} 10 20 0 1 {name=Vclk value="dc 0 pulse(0, \{vdd\}, 1n, 50p, 50p, \{per/2-1n\}, \{per\})"
 savecurrent=false}
C {gnd.sym} 10 50 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -310 120 0 0 {name=p1 sig_type=std_logic lab=clk}
C {lab_wire.sym} -370 140 0 0 {name=p2 sig_type=std_logic lab=vin_p}
C {devices/gnd.sym} 260 50 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 260 20 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/4\}, \{vdd\}, \{per/4+50p\}, 0)"}
C {devices/lab_wire.sym} 50 140 0 1 {name=p4 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 50 160 0 1 {name=p3 sig_type=std_logic lab=dd}
C {devices/lab_wire.sym} 50 180 0 1 {name=p5 sig_type=std_logic lab=dout}
C {devices/vdd.sym} 10 -20 0 0 {name=l12 lab=clk}
C {comp_sys.sym} -130 160 0 0 {name=x4}
C {devices/vdd.sym} 260 -20 0 0 {name=l13 lab=rst}
C {devices/vdd.sym} -50 230 2 0 {name=l1 lab=VSS}
C {devices/vdd.sym} -50 90 0 0 {name=l4 lab=VDD}
C {lab_wire.sym} -300 180 0 0 {name=p7 sig_type=std_logic lab=rst}
C {capa.sym} 210 170 0 0 {name=C1
value=\{Cload\}}
C {gnd.sym} 210 210 0 0 {name=l5 lab=GND}
C {capa.sym} 280 170 0 0 {name=C2
value=\{Cload\}}
C {gnd.sym} 280 210 0 0 {name=l6 lab=GND}
C {capa.sym} 350 170 0 0 {name=C3
value=Cload}
C {gnd.sym} 350 210 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 210 130 0 1 {name=p8 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 280 130 0 1 {name=p9 sig_type=std_logic lab=dd}
C {devices/lab_wire.sym} 350 130 0 1 {name=p10 sig_type=std_logic lab=dout}
C {devices/gnd.sym} -440 240 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -310 160 0 1 {name=p6 sig_type=std_logic lab=d}
