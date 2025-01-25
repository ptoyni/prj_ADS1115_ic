v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -310 -320 -310 -100 {lab=vdd}
N 290 -200 340 -200 {lab=v_out}
N -170 -40 -110 -40 {lab=v_in}
N 340 -140 340 -130 {lab=GND}
N -200 -200 -60 -200 {lab=#net1}
N -200 -320 -200 -260 {lab=vdd}
N -310 -320 -200 -320 {lab=vdd}
N 10 -320 10 -280 {lab=vdd}
N -200 -320 10 -320 {lab=vdd}
N -270 80 -270 110 {lab=#net2}
N -170 -40 -170 -10 {lab=v_in}
N -170 50 -170 80 {lab=#net2}
N -270 80 -170 80 {lab=#net2}
N 330 -40 330 0 {lab=v_out}
N 290 -80 330 -80 {lab=v_out}
N 290 -200 290 -80 {lab=v_out}
N -20 -40 330 -40 {lab=v_out}
N 330 -80 330 -40 {lab=v_out}
N -170 80 30 80 {lab=#net2}
N -110 60 30 60 {lab=v_in}
N -110 -40 -110 60 {lab=v_in}
N -20 40 30 40 {lab=v_out}
N -20 -40 -20 40 {lab=v_out}
N -60 20 30 20 {lab=#net1}
N -60 -200 -60 20 {lab=#net1}
N 30 -280 30 -0 {lab=vdd}
N 10 -280 30 -280 {lab=vdd}
N -340 120 -340 140 {
lab=GND}
N -340 -100 -340 60 {lab=vdd}
N -340 -100 -310 -100 {lab=vdd}
C {devices/vsource.sym} -270 140 0 0 {name=Vss value=0}
C {gnd.sym} -270 170 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -170 20 0 0 {name=Vin value="dc 0.7 ac 1"}
C {capa.sym} 340 -170 0 0 {name=C1
value=50p}
C {isource.sym} -200 -230 0 0 {name=I0 value=0.4u}
C {spice_probe.sym} 130 -40 0 0 {name=p1 attrs=""}
C {gnd.sym} 340 -130 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -170 -10 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {lab_wire.sym} 210 -40 0 0 {name=p6 sig_type=std_logic lab=v_out}
C {devices/code_shown.sym} -780 150 0 0 {name=MODEL3 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -780 -500 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write trial_tb-ac.raw
set appendwrite

ac dec 101 1k 1G
write trial_tb-ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/code_shown.sym} -780 70 0 0 {name=MODEL4 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} -340 90 0 0 {name=Vdd value=1.8}
C {devices/gnd.sym} -340 140 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -340 60 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {trail2-ota5.sym} 180 40 0 0 {name=x2}
