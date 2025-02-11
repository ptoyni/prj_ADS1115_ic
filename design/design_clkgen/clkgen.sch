v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 590 20 630 20 {lab=#net1}
N 710 20 820 20 {lab=#net2}
N 560 20 590 20 {lab=#net1}
N 590 360 820 360 {lab=#net1}
N 1080 40 1150 40 {lab=#net3}
N 1350 40 1420 40 {lab=#net4}
N 1080 340 1150 340 {lab=#net5}
N 1350 340 1420 340 {lab=#net6}
N 940 340 1000 340 {lab=#net7}
N 940 40 1000 40 {lab=#net8}
N 1230 340 1270 340 {lab=#net9}
N 1230 40 1270 40 {lab=#net10}
N 1520 40 1540 40 {lab=#net11}
N 1650 340 1690 340 {lab=p2}
N 1520 340 1540 340 {lab=#net12}
N 1810 40 1810 140 {lab=#net13}
N 1770 40 1810 40 {lab=#net13}
N 770 220 770 320 {lab=#net14}
N 770 320 820 320 {lab=#net14}
N 770 60 820 60 {lab=#net15}
N 1770 340 1810 340 {lab=#net16}
N 1810 340 1900 340 {lab=#net16}
N 1810 40 1900 40 {lab=#net13}
N 1500 40 1520 40 {lab=#net11}
N 1520 0 1520 40 {lab=#net11}
N 1500 340 1520 340 {lab=#net12}
N 2160 360 2230 360 {lab=#net17}
N 2150 20 2220 20 {lab=#net18}
N 2020 20 2070 20 {lab=#net19}
N 2020 360 2080 360 {lab=#net20}
N 2300 20 2370 20 {lab=p1d}
N 2310 360 2370 360 {lab=p2d}
N 430 20 480 20 {lab=clk}
N 1650 40 1690 40 {lab=p1}
N 1650 -80 1650 40 {lab=p1}
N 1650 -80 2370 -80 {lab=p1}
N 1650 340 1650 440 {lab=p2}
N 1620 340 1650 340 {lab=p2}
N 1650 440 2370 440 {lab=p2}
N 1520 0 1900 0 {lab=#net11}
N 1520 380 1900 380 {lab=#net12}
N 1520 340 1520 380 {lab=#net12}
N 1360 140 1810 220 {lab=#net16}
N 1360 220 1810 140 {lab=#net13}
N 770 140 1280 140 {lab=#net15}
N 770 220 1280 220 {lab=#net14}
N 590 20 590 360 {lab=#net1}
N 1810 220 1810 340 {lab=#net16}
N 770 60 770 140 {lab=#net15}
N 1620 40 1650 40 {lab=p1}
C {ipin.sym} 430 20 0 0 {name=p1 lab=clk}
C {opin.sym} 2370 -80 0 0 {name=p2 lab=p1}
C {opin.sym} 2370 20 0 0 {name=p4 lab=p1d
}
C {opin.sym} 2370 360 0 0 {name=p5 lab=p2d}
C {opin.sym} 2370 440 0 0 {name=p6 lab=p2}
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 880 40 0 0 {name=x21 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 520 20 0 0 {name=x22 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 670 20 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1040 40 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1190 40 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1040 340 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1190 340 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1310 340 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1460 340 0 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1310 40 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1460 40 0 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1580 40 0 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1730 40 0 0 {name=x13 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1580 340 0 0 {name=x14 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1730 340 0 0 {name=x15 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2120 360 0 0 {name=x16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2270 360 0 0 {name=x18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2110 20 0 0 {name=x19 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2260 20 0 0 {name=x20 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1320 140 2 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1320 220 2 0 {name=x17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 880 340 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 1960 360 0 0 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 1960 20 0 0 {name=x24 VDD=VDD VSS=VSS prefix=sg13g2_ }
