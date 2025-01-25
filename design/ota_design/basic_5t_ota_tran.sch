v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1220 -690 -1220 -670 {
lab=GND}
N -1140 -690 -1140 -670 {
lab=GND}
N -460 -900 -460 -880 {
lab=v_out}
N -670 -1050 -620 -1050 {lab=v_out}
N -670 -1050 -670 -900 {lab=v_out}
N -670 -900 -460 -900 {lab=v_out}
N -460 -920 -460 -900 {
lab=v_out}
N -1220 -1150 -930 -1150 {lab=v_dd}
N -930 -1150 -930 -1130 {lab=v_dd}
N -930 -1070 -620 -1070 {lab=#net1}
N -930 -1150 -540 -1150 {lab=v_dd}
N -1140 -1030 -620 -1030 {
lab=v_in}
N -1140 -1030 -1140 -950 {lab=v_in}
N -1220 -1150 -1220 -750 {lab=v_dd}
N -1140 -790 -1140 -750 {lab=v_ss}
N -460 -820 -460 -790 {lab=v_ss}
N -540 -790 -460 -790 {lab=v_ss}
N -1140 -890 -1140 -790 {lab=v_ss}
N -540 -1010 -540 -790 {lab=v_ss}
N -1140 -790 -540 -790 {lab=v_ss}
N -540 -1150 -540 -1080 {lab=v_dd}
N -470 -1050 -430 -1050 {lab=v_out}
N -430 -1050 -430 -920 {lab=v_out}
N -460 -920 -430 -920 {lab=v_out}
C {devices/title.sym} -1540 -150 0 0 {name=l5 author="Priyanka"}
C {devices/launcher.sym} -1200 -280 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} -960 -280 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} -1710 -500 0 0 {name=MODEL3 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -1710 -580 0 0 {name=MODEL4 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} -1710 -1100 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.ic v(v_vout)=0
.control

tran 0.005u 15u uic
plot v_out

let vout_limit=0.8*0.99
meas tran tcross WHEN v(v_out)=vout_limit

let tsettle=tcross-tstart
print tsettle

.endc
"}
C {devices/vsource.sym} -1220 -720 0 0 {name=Vdd value=1.8}
C {devices/gnd.sym} -1220 -670 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -1220 -770 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -1140 -720 0 0 {name=Vss value=0}
C {devices/gnd.sym} -1140 -670 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1140 -770 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} -460 -850 0 0 {name=C1
value=1p}
C {lab_wire.sym} -460 -920 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} -1140 -920 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} -1080 -1030 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} -930 -1100 0 0 {name=I0 value=2.94u pwl(0 0 10u 0 11u 20u)"}
C {spice_probe.sym} -1020 -1030 0 0 {name=p5 attrs=""}
C {spice_probe.sym} -430 -1040 0 0 {name=p6 attrs=""}
C {basic_5t_ota.sym} -480 -1050 0 0 {name=x1}
