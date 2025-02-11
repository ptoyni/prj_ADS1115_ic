v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -250 -130 -150 {lab=#net1}
N 110 -220 110 -160 {lab=vout}
N -130 -90 -130 -40 {lab=#net2}
N -0 -40 110 -40 {lab=#net2}
N 110 -100 110 -40 {lab=#net2}
N -0 -40 0 -0 {lab=#net2}
N -130 -40 -0 -40 {lab=#net2}
N 0 200 280 200 {lab=vss}
N 280 30 280 200 {lab=vss}
N -0 30 280 30 {lab=vss}
N 280 -130 280 30 {lab=vss}
N 110 -130 280 -130 {lab=vss}
N -190 -120 -130 -120 {lab=vss}
N -190 100 -190 200 {lab=vss}
N -290 200 -190 200 {lab=vss}
N 0 60 0 200 {lab=vss}
N -190 200 0 200 {lab=vss}
N -350 100 -330 100 {lab=#net3}
N -290 130 -290 200 {lab=vss}
N -480 200 -290 200 {lab=vss}
N -350 30 -40 30 {lab=#net3}
N -350 30 -350 100 {lab=#net3}
N -420 100 -350 100 {lab=#net3}
N -480 20 -480 70 {lab=#net3}
N -290 -60 -290 70 {lab=#net4}
N -480 130 -480 200 {lab=vss}
N -590 200 -480 200 {lab=vss}
N -290 100 -190 100 {lab=vss}
N -190 -120 -190 100 {lab=vss}
N -590 100 -480 100 {lab=vss}
N -590 100 -590 200 {lab=vss}
N -760 200 -590 200 {lab=vss}
N -480 20 -420 20 {lab=#net3}
N -420 20 -420 100 {lab=#net3}
N -440 100 -420 100 {lab=#net3}
N -130 -400 110 -400 {lab=vdd}
N 110 -400 110 -340 {lab=vdd}
N -130 -400 -130 -340 {lab=vdd}
N -230 -400 -130 -400 {lab=vdd}
N -290 -400 -290 -120 {lab=vdd}
N -550 -400 -290 -400 {lab=vdd}
N -620 -210 -480 -210 {lab=ibias}
N -480 -170 -480 -120 {lab=ibias}
N -480 -60 -480 20 {lab=#net3}
N -410 -90 -330 -90 {lab=ibias}
N -480 -170 -410 -170 {lab=ibias}
N -480 -210 -480 -170 {lab=ibias}
N -410 -170 -410 -90 {lab=ibias}
N -440 -90 -410 -90 {lab=ibias}
N -40 -310 70 -310 {lab=#net1}
N -130 -250 -40 -250 {lab=#net1}
N -130 -280 -130 -250 {lab=#net1}
N -40 -310 -40 -250 {lab=#net1}
N -90 -310 -40 -310 {lab=#net1}
N 110 -220 300 -220 {lab=vout}
N 110 -280 110 -220 {lab=vout}
N -550 -90 -480 -90 {lab=vdd}
N -550 -400 -550 -90 {lab=vdd}
N -660 -400 -550 -400 {lab=vdd}
N -290 -90 -230 -90 {lab=vdd}
N -230 -310 -230 -90 {lab=vdd}
N -290 -400 -230 -400 {lab=vdd}
N -230 -310 -130 -310 {lab=vdd}
N -230 -400 -230 -310 {lab=vdd}
N 110 -310 170 -310 {lab=vdd}
N 170 -400 170 -310 {lab=vdd}
N 110 -400 170 -400 {lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 -310 0 0 {name=M1
l=0.3u
w=0.22u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 90 -130 0 0 {name=M2
l=0.3u
w=0.45u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -110 -310 0 1 {name=M3
l=0.3u
w=0.22u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 -120 0 1 {name=M4
l=0.3u
w=0.45u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 30 0 0 {name=M5
l=0.3u
w=0.9u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -310 100 0 0 {name=M6
l=0.3u
w=0.9u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -460 100 0 1 {name=M7
l=0.3u
w=0.9u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -460 -90 0 1 {name=M8
l=0.3u
w=0.44u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -310 -90 0 0 {name=M9
l=0.3u
w=0.44u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -760 200 0 0 {name=p1 lab=vss}
C {ipin.sym} -660 -400 0 0 {name=p2 lab=vdd}
C {ipin.sym} -620 -210 0 0 {name=p3 lab=ibias}
C {ipin.sym} 70 -130 0 0 {name=p4 lab=vinm}
C {ipin.sym} -90 -120 0 1 {name=p5 lab=vinp}
C {opin.sym} 300 -220 0 0 {name=p6 lab=vout}
