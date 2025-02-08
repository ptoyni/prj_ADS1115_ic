v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -0 40 0 {lab=#net1}
N 200 -0 310 -0 {lab=#net2}
N -0 -0 0 380 {lab=#net1}
N -30 0 -0 -0 {lab=#net1}
N 0 380 310 380 {lab=#net1}
N 680 30 750 30 {lab=#net3}
N 1110 30 1180 30 {lab=#net4}
N 680 350 750 350 {lab=#net5}
N 1110 350 1180 350 {lab=#net6}
N 460 350 520 350 {lab=#net7}
N 460 30 520 30 {lab=#net8}
N 910 350 950 350 {lab=#net9}
N 910 30 950 30 {lab=#net10}
N 1570 30 1610 30 {lab=p1}
N 1360 30 1380 30 {lab=#net11}
N 1570 350 1610 350 {lab=p2}
N 1360 350 1380 350 {lab=#net12}
N 1810 30 1810 140 {lab=#net13}
N 1770 30 1810 30 {lab=#net13}
N 1100 140 1810 140 {lab=#net13}
N 260 220 960 220 {lab=#net13}
N 260 220 260 320 {lab=#net13}
N 260 320 310 320 {lab=#net13}
N 260 60 310 60 {lab=#net14}
N 260 60 260 140 {lab=#net14}
N 260 140 960 140 {lab=#net14}
N 960 140 1100 220 {lab=#net14}
N 1100 220 1810 220 {lab=#net14}
N 1810 220 1810 350 {lab=#net14}
N 1770 350 1810 350 {lab=#net14}
N 960 220 1100 140 {lab=#net13}
N 1810 350 1900 350 {lab=#net14}
N 1810 30 1900 30 {lab=#net13}
N 1340 30 1360 30 {lab=#net11}
N 1360 -60 1360 30 {lab=#net11}
N 1810 -60 1810 -30 {lab=#net11}
N 1340 350 1360 350 {lab=#net12}
N 1810 410 1900 410 {lab=#net12}
N 1360 350 1360 440 {lab=#net12}
N 1810 410 1810 440 {lab=#net12}
N 2270 380 2340 380 {lab=#net15}
N 2260 0 2330 0 {lab=#net16}
N 2050 0 2100 0 {lab=#net17}
N 2050 380 2110 380 {lab=#net18}
N 2490 -0 2560 -0 {lab=p1d}
N 2500 380 2560 380 {lab=p2d}
N -240 -0 -190 -0 {lab=clk}
N 1540 30 1570 30 {lab=p1}
N 1570 -140 1570 30 {lab=p1}
N 1570 -140 2560 -140 {lab=p1}
N 1570 350 1570 520 {lab=p2}
N 1540 350 1570 350 {lab=p2}
N 1570 520 2560 520 {lab=p2}
N 1360 -60 1810 -60 {lab=#net11}
N 1810 -30 1900 -30 {lab=#net11}
N 1360 440 1810 440 {lab=#net12}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 970 400 0 0 {name=x11}
C {ipin.sym} -240 0 0 0 {name=p1 lab=clk}
C {opin.sym} 2560 -140 0 0 {name=p2 lab=p1}
C {opin.sym} 2560 0 0 0 {name=p4 lab=p1d
}
C {opin.sym} 2560 380 0 0 {name=p5 lab=p2d}
C {opin.sym} 2560 520 0 0 {name=p6 lab=p2}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} -170 50 0 0 {name=x23}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/nand/nand_gate.sym} 330 30 0 0 {name=x24}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/nand/nand_gate.sym} 330 350 0 0 {name=x1}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/nand/nand_gate.sym} 1920 380 0 0 {name=x4}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/nand/nand_gate.sym} 1920 0 0 0 {name=x17}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 60 50 0 0 {name=x2}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 540 80 0 0 {name=x3}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 770 80 0 0 {name=x5}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 970 80 0 0 {name=x6}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 1200 80 0 0 {name=x7}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 1400 80 0 0 {name=x8}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 1630 80 0 0 {name=x9}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 2120 50 0 0 {name=x10}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 2350 50 0 0 {name=x12}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 2360 430 0 0 {name=x13}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 2130 430 0 0 {name=x14}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 1630 400 0 0 {name=x15}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 1400 400 0 0 {name=x16}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 1200 400 0 0 {name=x18}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 770 400 0 0 {name=x19}
C {/foss/designs/prj_ADS1115_ic/design/design_clkgen/inverter/better_inv.sym} 540 400 0 0 {name=x20}
