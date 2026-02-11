v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -0 60 0 {lab=#net1}
N -80 -150 -60 -150 {lab=#net1}
N -80 -150 -80 -0 {lab=#net1}
N 40 -150 173.75 -150 {lab=#net2}
N 163.75 -0 271.25 -0 {lab=#net3}
N 271.25 -140 271.25 -0 {lab=#net3}
N 271.25 -0 323.75 0 {lab=#net3}
N 422.5 -0 505 -0 {lab=#net4}
N 602.5 -148.75 602.5 10 {lab=#net5}
N 513.75 -152.5 602.5 -152.5 {lab=#net5}
N 602.5 -152.5 602.5 -148.75 {lab=#net5}
N 602.5 10 741.25 10 {lab=#net5}
N 696.25 10 696.25 122.5 {lab=#net5}
N 696.25 123.75 740 123.75 {lab=#net5}
N 696.25 122.5 696.25 123.75 {lab=#net5}
N 843.75 123.75 886.25 123.75 {lab=#net6}
N 443.75 -153.75 443.75 -0 {lab=#net4}
N -210 -0 -160 -0 {lab=D}
N -211.25 193.75 -111.25 193.75 {lab=CLK}
N -6.25 193.75 168.75 193.75 {lab=cbar}
N -7.5 193.75 -6.25 193.75 {lab=cbar}
N 268.75 193.75 328.75 193.75 {lab=c}
N -125 30 -125 80 {lab=cbar}
N -126.25 -78.75 -126.25 -38.75 {lab=c}
N -10 -235 -10 -185 {lab=cbar}
N -10 -130 -10 -92.5 {lab=c}
N 478.75 -211.25 478.75 -182.5 {lab=cbar}
N 480 -112.5 480 -71.25 {lab=c}
N -490 180 -490 240 {lab=GND}
N -390 180 -390 240 {lab=GND}
N -490 70 -490 120 {lab=vdd}
N -390 70 -390 120 {lab=vss}
N -70 97.5 -70 157.5 {lab=vdd}
N -70 230 -70 300 {lab=vss}
N 210 230 210 300 {lab=vss}
N 101.5625 35 101.5625 105 {lab=vss}
N 101.25 -95.9375 101.25 -35.9375 {lab=vdd}
N 781.5625 160 781.5625 230 {lab=vss}
N 927.8125 159.375 927.8125 229.375 {lab=vss}
N 781.5625 46.25 781.5625 69.0625 {lab=vss}
N 781.25 74.0625 781.25 87.5 {lab=vdd}
N 210 98.125 210 158.125 {lab=vdd}
N 781.25 -84.6875 781.25 -24.6875 {lab=vdd}
N 927.5 27.8125 927.5 87.8125 {lab=vdd}
N 842.5 10 1017.5 10 {lab=Qb}
N 1017.5 10 1087.5 10 {lab=Qb}
N 990 123.75 1030 123.75 {lab=Qb}
N 1030 123.75 1030 192.5 {lab=Qb}
N 1030 251.25 1030 288.75 {lab=GND}
N 1087.5 10 1195 10 {lab=Qb}
N 1195 10 1195 145 {lab=Qb}
N 1195 205 1195 267.5 {lab=GND}
C {tgate.sym} 40 -130 0 0 {name=x1}
C {tristate.sym} -60 80 0 0 {name=x2}
C {nand2.sym} 171.25 -190 2 0 {name=x4}
C {inv.sym} 170 20 0 0 {name=x3}
C {tgate.sym} 423.75 20 0 0 {name=x5}
C {nand2.sym} 605 50 0 0 {name=x6}
C {tristate.sym} 413.75 -232.5 2 0 {name=x7}
C {inv.sym} 850 30 0 0 {name=x8}
C {inv.sym} 850 143.75 0 0 {name=x9}
C {inv.sym} 996.25 143.75 0 0 {name=x10}
C {ipin.sym} -210 0 0 0 {name=p1 lab=D}
C {ipin.sym} -211.25 193.75 0 0 {name=p2 lab=CLK}
C {inv.sym} -1.25 213.75 0 0 {name=x11}
C {inv.sym} 278.75 213.75 0 0 {name=x12}
C {lab_wire.sym} 58.75 193.75 0 0 {name=p3 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 318.75 193.75 0 0 {name=p4 sig_type=std_logic lab=c}
C {lab_wire.sym} -125 60 0 0 {name=p5 sig_type=std_logic lab=cbar}
C {lab_wire.sym} -126.25 -63.75 0 0 {name=p6 sig_type=std_logic lab=c}
C {lab_wire.sym} -10 -228.75 0 0 {name=p7 sig_type=std_logic lab=cbar}
C {lab_wire.sym} -10 -101.25 0 0 {name=p8 sig_type=std_logic lab=c}
C {lab_wire.sym} 478.75 -205 0 0 {name=p9 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 480 -80 0 0 {name=p10 sig_type=std_logic lab=c}
C {vsource.sym} -490 150 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -390 150 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -490 240 0 0 {name=l1 lab=GND}
C {gnd.sym} -390 240 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -390 80 0 0 {name=p11 sig_type=std_logic lab=vss}
C {lab_wire.sym} -490 80 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -70 120 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -70 270 0 0 {name=p14 sig_type=std_logic lab=vss}
C {lab_wire.sym} 210 270 0 0 {name=p15 sig_type=std_logic lab=vss}
C {lab_wire.sym} 101.5625 75 0 0 {name=p16 sig_type=std_logic lab=vss}
C {lab_wire.sym} 101.25 -73.4375 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 781.5625 200 0 0 {name=p18 sig_type=std_logic lab=vss}
C {lab_wire.sym} 927.8125 199.375 0 0 {name=p19 sig_type=std_logic lab=vss}
C {lab_wire.sym} 781.5625 60.9375 0 0 {name=p20 sig_type=std_logic lab=vss}
C {lab_wire.sym} 781.25 81.875 0 0 {name=p21 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 210 120.625 0 0 {name=p22 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 781.25 -62.1875 0 0 {name=p23 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 927.5 73.125 0 0 {name=p24 sig_type=std_logic lab=vdd}
C {capa.sym} 1030 222.5 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1030 287.5 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 1026.25 123.75 0 0 {name=p25 sig_type=std_logic lab=Qb}
C {capa.sym} 1195 175 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1195 267.5 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 1183.75 10 0 0 {name=p26 sig_type=std_logic lab=Q}
