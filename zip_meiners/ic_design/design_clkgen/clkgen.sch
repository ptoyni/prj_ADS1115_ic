v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 820 20 860 20 {lab=#net1}
N 940 20 1050 20 {lab=#net2}
N 790 20 820 20 {lab=#net1}
N 820 360 1050 360 {lab=#net1}
N 1350 40 1420 40 {lab=#net3}
N 1350 340 1420 340 {lab=#net4}
N 1170 340 1270 340 {lab=#net5}
N 1170 40 1270 40 {lab=#net6}
N 1520 40 1540 40 {lab=#net7}
N 1650 340 1730 340 {lab=p2}
N 1520 340 1540 340 {lab=#net8}
N 1890 40 1890 140 {lab=#net9}
N 1000 220 1000 320 {lab=#net10}
N 1000 320 1050 320 {lab=#net10}
N 1000 60 1050 60 {lab=#net11}
N 1890 340 1980 340 {lab=#net12}
N 1890 40 1980 40 {lab=#net9}
N 1500 40 1520 40 {lab=#net7}
N 1520 0 1520 40 {lab=#net7}
N 1500 340 1520 340 {lab=#net8}
N 2240 360 2310 360 {lab=#net13}
N 2230 20 2300 20 {lab=#net14}
N 2100 20 2150 20 {lab=#net15}
N 2100 360 2160 360 {lab=#net16}
N 2380 20 2450 20 {lab=p1d}
N 660 20 710 20 {lab=clk}
N 1650 40 1730 40 {lab=p1}
N 1650 -80 1650 40 {lab=p1}
N 1650 340 1650 440 {lab=p2}
N 1620 340 1650 340 {lab=p2}
N 1520 340 1520 380 {lab=#net8}
N 1360 140 1810 220 {lab=#net12}
N 1360 220 1810 140 {lab=#net9}
N 820 20 820 360 {lab=#net1}
N 1890 220 1890 340 {lab=#net12}
N 1000 60 1000 140 {lab=#net11}
N 1620 40 1650 40 {lab=p1}
N 1810 40 1890 40 {lab=#net9}
N 1810 340 1890 340 {lab=#net12}
N 2390 360 2450 360 {lab=p2d}
N 1810 140 1890 140 {lab=#net9}
N 1810 220 1890 220 {lab=#net12}
N 1650 440 2450 440 {lab=p2}
N 1000 140 1280 140 {lab=#net11}
N 1000 220 1280 220 {lab=#net10}
N 1650 -80 2450 -80 {lab=p1}
N 1520 -0 1980 0 {lab=#net7}
N 1520 380 1980 380 {lab=#net8}
C {ipin.sym} 660 20 0 0 {name=p1 lab=clk}
C {opin.sym} 2450 -80 0 0 {name=p2 lab=p1}
C {opin.sym} 2450 20 0 0 {name=p4 lab=p1d
}
C {opin.sym} 2450 360 0 0 {name=p5 lab=p2d}
C {opin.sym} 2450 440 0 0 {name=p6 lab=p2}
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 1110 40 0 0 {name=x21 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 750 20 0 0 {name=x22 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 900 20 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1310 340 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1460 340 0 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1310 40 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1460 40 0 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1580 40 0 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1580 340 0 0 {name=x14 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2200 360 0 0 {name=x16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2350 360 0 0 {name=x18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2190 20 0 0 {name=x19 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2340 20 0 0 {name=x20 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1320 140 2 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1320 220 2 0 {name=x17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 1110 340 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 2040 360 0 0 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 2040 20 0 0 {name=x24 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1770 40 0 0 {name=x29 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1770 340 0 0 {name=x30 VDD=VDD VSS=VSS prefix=sg13g2_ }
