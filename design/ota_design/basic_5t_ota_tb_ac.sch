v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1150 -430 -1150 -410 {
lab=GND}
N -1070 -430 -1070 -410 {
lab=GND}
N -390 -640 -390 -620 {
lab=v_out}
N -600 -790 -550 -790 {lab=v_out}
N -600 -790 -600 -640 {lab=v_out}
N -600 -640 -390 -640 {lab=v_out}
N -390 -660 -390 -640 {
lab=v_out}
N -1150 -890 -860 -890 {lab=v_dd}
N -860 -890 -860 -870 {lab=v_dd}
N -860 -810 -550 -810 {lab=#net1}
N -860 -890 -470 -890 {lab=v_dd}
N -1070 -770 -550 -770 {
lab=v_in}
N -1070 -770 -1070 -690 {lab=v_in}
N -1150 -890 -1150 -490 {lab=v_dd}
N -1070 -530 -1070 -490 {lab=v_ss}
N -390 -560 -390 -530 {lab=v_ss}
N -470 -530 -390 -530 {lab=v_ss}
N -1070 -630 -1070 -530 {lab=v_ss}
N -470 -750 -470 -530 {lab=v_ss}
N -1070 -530 -470 -530 {lab=v_ss}
N -470 -890 -470 -820 {lab=v_dd}
N -400 -790 -360 -790 {lab=v_out}
N -360 -790 -360 -660 {lab=v_out}
N -390 -660 -360 -660 {lab=v_out}
C {devices/code_shown.sym} -1700 -840 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write basic_5t_ota_tb-ac.raw
set appendwrite

ac dec 101 1k 100MEG
write basic_5t_ota_tb-ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror

plot 180/pi*phase(v_out) vs frequency

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/title.sym} -1540 -120 0 0 {name=l5 author="Priyanka"}
C {devices/launcher.sym} -1200 -250 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} -960 -250 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} -1730 -220 0 0 {name=MODEL3 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -1730 -300 0 0 {name=MODEL4 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} -1150 -460 0 0 {name=Vdd value=1.8}
C {devices/gnd.sym} -1150 -410 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -1150 -510 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -1070 -460 0 0 {name=Vss value=0}
C {devices/gnd.sym} -1070 -410 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1070 -510 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} -390 -590 0 0 {name=C1
value=1p}
C {lab_wire.sym} -390 -660 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} -1070 -660 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} -1010 -770 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} -860 -840 0 0 {name=I0 value=2.94u pwl(0 0 10u 0 11u 20u)"}
C {spice_probe.sym} -950 -770 0 0 {name=p5 attrs=""}
C {spice_probe.sym} -360 -780 0 0 {name=p6 attrs=""}
C {basic_5t_ota.sym} -410 -790 0 0 {name=x1}
