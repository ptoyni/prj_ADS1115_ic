v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -60 120 -60 {lab=comp_outp}
N -40 -40 120 -40 {lab=comp_outn}
N -60 100 -60 120 {p1
lab=VDD}
N -150 100 -150 120 {p1
lab=VSS}
N -410 -60 -320 -60 {lab=vin_p}
N -460 30 -460 40 {lab=GND}
N -460 -80 -320 -80 {lab=clk}
N -410 -60 -410 -30 {lab=vin_p}
N -410 40 -410 50 {lab=vin_n}
N -460 -80 -460 -30 {lab=clk}
N -330 -40 -330 40 {lab=vin_n}
N -10 -100 -10 -80 {lab=VDD}
N -20 -80 -10 -80 {lab=VDD}
N 110 -80 120 -80 {lab=VDD}
N 110 20 120 20 {lab=VSS}
N 110 20 110 40 {lab=VSS}
N -20 -20 -10 -20 {lab=VSS}
N -10 -20 -10 -0 {lab=VSS}
N 110 -100 110 -80 {lab=VDD}
N -410 40 -330 40 {lab=vin_n}
N -410 30 -410 40 {lab=vin_n}
N -330 -40 -320 -40 {lab=vin_n}
N 70 0 120 0 {lab=#net1}
N 70 0 70 120 {lab=#net1}
N 420 -80 460 -80 {
lab=d}
N 420 -60 460 -60 {
lab=dd}
N 420 -40 460 -40 {
lab=dout}
N 100 -20 120 -20 {lab=clk}
N -410 110 -410 120 {lab=GND}
C {comp_test.sym} -170 -50 0 0 {name=x2}
C {latch_stage_test.sym} 270 -30 0 0 {name=x1}
C {devices/gnd.sym} -60 180 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -60 150 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} -60 100 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} -150 180 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -150 150 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} -150 100 0 0 {name=l11 lab=VSS}
C {devices/code_shown.sym} -720 -430 0 0 {name=NGSPICE only_toplevel=true 
value=
"
.param temp=27 vdd=1.5 per=1u vdiff=1m 
.param Wnmos=1u Wpmos=2u 
.param Lnmos=.2u Lpmos=.2u Lnmos2=1u
.option method=gear reltol=1e-5
		
.control	
save all
tran 10p 4n
write comp_latch_tb1.raw
plot clk tran1.comp_outp tran1.comp_outn

plot clk tran2.d tran2.dout

.endc"
 }
C {devices/code_shown.sym} -250 -430 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice"}
C {vsource.sym} -410 0 0 0 {name=V4 value=\{vdiff\} savecurrent=false}
C {vsource.sym} -410 80 0 0 {name=V5 value=\{vdd/2\} savecurrent=false}
C {vsource.sym} -460 0 0 1 {name=V6 value="dc 0 pulse(0, \{vdd\}, 1n, 50p, 50p, \{per/2-1n\}, \{per\})"
 savecurrent=false}
C {gnd.sym} -410 120 0 0 {name=l2 lab=GND}
C {gnd.sym} -460 40 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -360 -80 0 0 {name=p1 sig_type=std_logic lab=clk}
C {lab_wire.sym} -360 -60 0 0 {name=p2 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} -330 -20 0 0 {name=p6 sig_type=std_logic lab=vin_n}
C {devices/vdd.sym} -10 -100 0 0 {name=l1 lab=VDD}
C {devices/vdd.sym} 110 40 2 0 {name=l4 lab=VSS}
C {devices/vdd.sym} -10 0 2 0 {name=l5 lab=VSS}
C {devices/vdd.sym} 110 -100 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 70 180 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 70 150 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/4\}, \{vdd\}, \{per/4+50p\}, 0)"}
C {devices/lab_wire.sym} 450 -80 0 1 {name=p4 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 450 -60 0 1 {name=p3 sig_type=std_logic lab=dd}
C {devices/lab_wire.sym} 450 -40 0 1 {name=p5 sig_type=std_logic lab=dout}
C {lab_wire.sym} 100 -20 0 0 {name=p7 sig_type=std_logic lab=clk}
C {lab_wire.sym} 80 -60 0 0 {name=p8 sig_type=std_logic lab=comp_outp}
C {lab_wire.sym} 80 -40 0 0 {name=p9 sig_type=std_logic lab=comp_outn}
