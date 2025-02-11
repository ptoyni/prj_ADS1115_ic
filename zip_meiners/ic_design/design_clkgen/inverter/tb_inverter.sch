v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 -175 220 -175 {lab=Y}
N -135 -175 -135 -100 {lab=A}
N -135 -175 10 -175 {lab=A}
N -135 -40 -135 -25 {lab=#net1}
N -270 -35 -270 -20 {lab=GND}
N -270 -115 -270 -95 {lab=VDD}
C {/foss/designs/testing/inverter/better_inv.sym} 30 -125 0 0 {name=x1}
C {vsource.sym} -135 -70 0 0 {name=V1 value="dc 0 pulse(0, \{vdd\}, 0, 100p, 100p, \{per/2\}, \{per\}) " savecurrent=false}
C {gnd.sym} -135 -20 0 0 {name=l2 lab=GND}
C {vsource.sym} -270 -65 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {gnd.sym} -270 -20 0 0 {name=l3 lab=GND}
C {vdd.sym} -270 -115 0 0 {name=l4 lab=VDD}
C {devices/code_shown.sym} 290 -60 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 290 -340 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2 per=20n cl=25f
.option method=gear

.control
save all 
tran 10p 50n
write /foss/designs/testing/invertertb_inv.raw
.endc
"}
C {lab_pin.sym} 220 -175 2 0 {name=p1 sig_type=std_logic lab=Y}
C {lab_pin.sym} -135 -175 0 0 {name=p2 sig_type=std_logic lab=A}
