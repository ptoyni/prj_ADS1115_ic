v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1480 -630 -1480 -610 {
lab=GND}
N -1400 -630 -1400 -610 {
lab=GND}
N -1480 -1090 -1190 -1090 {lab=v_dd}
N -1190 -1090 -1190 -1070 {lab=v_dd}
N -1400 -970 -1400 -890 {lab=v_in}
N -1480 -1090 -1480 -690 {lab=v_dd}
N -1400 -730 -1400 -690 {lab=v_ss}
N -1400 -830 -1400 -730 {lab=v_ss}
N -1020 -730 -580 -730 {lab=v_ss}
N -690 -990 -580 -990 {lab=v_out}
N -580 -990 -580 -950 {lab=v_out}
N -690 -990 -690 -840 {lab=v_out}
N -580 -890 -580 -730 {lab=v_ss}
N -1080 -950 -990 -950 {lab=v_out}
N -1080 -950 -1080 -840 {lab=v_out}
N -1080 -840 -690 -840 {lab=v_out}
N -1020 -910 -990 -910 {lab=v_ss}
N -1020 -910 -1020 -730 {lab=v_ss}
N -1400 -730 -1020 -730 {lab=v_ss}
N -1400 -970 -1140 -970 {lab=v_in}
N -1140 -970 -1140 -930 {lab=v_in}
N -1140 -930 -990 -930 {lab=v_in}
N -1190 -1010 -1190 -980 {lab=#net1}
N -1190 -980 -1020 -980 {lab=#net1}
N -1020 -980 -1020 -970 {lab=#net1}
N -1020 -970 -990 -970 {lab=#net1}
N -990 -1090 -990 -990 {lab=v_dd}
N -1190 -1090 -990 -1090 {lab=v_dd}
C {devices/title.sym} -1750 -340 0 0 {name=l5 author="Priyanka"}
C {devices/launcher.sym} -1410 -470 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} -1170 -470 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} -1940 -440 0 0 {name=MODEL3 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -1940 -520 0 0 {name=MODEL4 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} -1970 -1070 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.ic v(v_vout)=0
.control

tran 0.005u 15u uic
plot v_out

let tstart=0
let vout_limit=0.5*0.99
meas tran tcross WHEN v(v_out)=vout_limit

let tsettle=tcross-tstart
print tsettle

.endc
"}
C {devices/vsource.sym} -1480 -660 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} -1480 -610 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -1480 -710 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -1400 -660 0 0 {name=Vss value=0}
C {devices/gnd.sym} -1400 -610 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1400 -710 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} -580 -920 0 0 {name=C1
value=0.47p}
C {lab_wire.sym} -580 -990 0 1 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} -1400 -860 0 0 {name=Vin value="dc 0.5 ac 1"}
C {lab_wire.sym} -1340 -970 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} -1190 -1040 0 0 {name=I0 value=0.8u}
C {spice_probe.sym} -1280 -970 0 0 {name=p5 attrs=""}
C {spice_probe.sym} -670 -990 0 0 {name=p6 attrs=""}
C {basic_5t_ota_switchcap.sym} -840 -950 0 0 {name=x1}
