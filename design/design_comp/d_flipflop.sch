v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 0 -30 0 {
lab=clk}
N -60 40 -30 40 {
lab=#net1}
N 180 0 260 0 {
lab=dd}
N 10 -150 270 -150 {
lab=d}
N 180 70 220 70 {
lab=dd}
N 180 0 180 70 {
lab=dd}
N 150 0 180 0 {
lab=dd}
N -110 -150 -70 -150 {
lab=latch+}
N -110 20 -30 20 {lab=latch+}
N -110 -150 -110 20 {lab=latch+}
N -230 -150 -110 -150 {
lab=latch+}
N -200 60 -160 60 {lab=res}
N -60 40 -60 60 {lab=#net1}
N -80 60 -60 60 {lab=#net1}
N 300 70 360 70 {lab=dout}
C {devices/opin.sym} 270 -150 0 0 {name=p9 lab=d}
C {sg13g2_stdcells/sg13g2_dfrbp_2.sym} 60 20 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} -200 60 0 0 {name=p7 lab=res}
C {devices/opin.sym} 260 0 0 0 {name=p10 lab=dd}
C {sg13g2_stdcells/sg13g2_buf_2.sym} -30 -150 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 360 70 0 0 {name=p30 lab=dout}
C {devices/noconn.sym} 150 20 0 1 {name=l4}
C {devices/ipin.sym} -40 0 0 0 {name=p6 lab=clk}
C {ipin.sym} -230 -150 0 0 {name=p1 lab=latch+}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 260 70 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} -120 60 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
