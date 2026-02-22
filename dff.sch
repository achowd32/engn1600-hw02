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
N 602.5 -148.75 602.5 10 {lab=#net4}
N 513.75 -152.5 602.5 -152.5 {lab=#net4}
N 602.5 -152.5 602.5 -148.75 {lab=#net4}
N 602.5 10 741.25 10 {lab=#net4}
N 696.25 10 696.25 122.5 {lab=#net4}
N 696.25 123.75 740 123.75 {lab=#net4}
N 696.25 122.5 696.25 123.75 {lab=#net4}
N 843.75 123.75 886.25 123.75 {lab=#net5}
N -211.25 193.75 -111.25 193.75 {lab=CLK}
N -6.25 193.75 168.75 193.75 {lab=cbar}
N -7.5 193.75 -6.25 193.75 {lab=cbar}
N 268.75 193.75 328.75 193.75 {lab=c}
N -10 -235 -10 -185 {lab=cbar}
N -10 -130 -10 -92.5 {lab=c}
N 478.75 -211.25 478.75 -182.5 {lab=cbar}
N 480 -112.5 480 -71.25 {lab=c}
N -70 97.5 -70 157.5 {lab=vdd}
N -69.6875 230 -69.6875 300 {lab=vss}
N 210.3125 230 210.3125 300 {lab=vss}
N 101.5625 35.625 101.5625 105.625 {lab=vss}
N 101.25 -95.9375 101.25 -35.9375 {lab=vdd}
N 781.5625 160 781.5625 230 {lab=vss}
N 927.8125 159.375 927.8125 229.375 {lab=vss}
N 781.5625 46.25 781.5625 69.0625 {lab=vss}
N 781.25 74.0625 781.25 87.5 {lab=vdd}
N 210 98.125 210 158.125 {lab=vdd}
N 781.25 -84.6875 781.25 -24.6875 {lab=vdd}
N 927.5 27.8125 927.5 87.8125 {lab=vdd}
N 843.75 10 1018.75 10 {lab=Q}
N 1018.75 10 1088.75 10 {lab=Q}
N 990 123.75 1030 123.75 {lab=Qb}
N 1087.5 10 1195 10 {lab=Q}
N 513.75 -137.5 513.75 -77.5 {lab=vdd}
N 513.75 -190.3125 513.75 -167.5 {lab=vss}
N 545 -89.0625 545 -29.0625 {lab=vdd}
N 545 49.375 545 72.1875 {lab=vss}
N 231.25 -249.375 231.25 -189.375 {lab=vss}
N 231.25 -111.25 231.25 -51.25 {lab=vdd}
N 271.25 -233.4375 271.25 -160.3125 {lab=RSTn}
N 505 20 505 93.125 {lab=RSTn}
N 443.75 -152.5 443.75 -126.875 {lab=#net6}
N 443.75 -128.125 443.75 -0.3125 {lab=#net6}
N 373.75 -63.75 373.75 -35 {lab=cbar}
N 373.75 20 373.75 61.25 {lab=c}
N 271.25 -254.375 271.25 -233.4375 {lab=RSTn}
N 920 -230 1370 -230 {lab=RSTn}
N 1370 -230 1370 390 {lab=RSTn}
N 530 390 1370 390 {lab=RSTn}
N 505 92.5 505 387.5 {lab=RSTn}
N 505 387.5 505 390 {lab=RSTn}
N 505 390 530 390 {lab=RSTn}
N 445 -230 920 -230 {lab=RSTn}
N 271.25 -230 445 -230 {lab=RSTn}
N 443.75 -0.625 443.75 -0 {lab=#net6}
N 271.25 -160.3125 271.25 -160 {lab=RSTn}
N 423.75 -0 443.75 -0 {lab=#net6}
N 443.75 -0 505 0 {lab=#net6}
N 480 -113.125 480 -112.5 {lab=c}
N 1030 123.75 1058.75 123.75 {lab=Qb}
N -25 -239.6875 -25 -179.6875 {lab=vdd}
N -25 -120.625 -25 -50.625 {lab=vss}
N 358.75 29.375 358.75 52.1875 {lab=vss}
N 358.75 -89.6875 358.75 -29.6875 {lab=vdd}
N -237.5 0 -187.5 0 {lab=D}
N -152.5 30 -152.5 80 {lab=cbar}
N -153.75 -78.75 -153.75 -38.75 {lab=c}
N -187.5 15 -187.5 75 {lab=vss}
N -187.5 -75 -187.5 -15 {lab=vdd}
N -117.5 -0 -90 -0 {lab=#net1}
C {tgate.sym} 40 -60 0 0 {name=x1}
C {nand2.sym} 171.25 -190 2 0 {name=x4}
C {inv.sym} 170 20 0 0 {name=x3}
C {tgate.sym} 423.75 90 0 0 {name=x5}
C {nand2.sym} 605 50 0 0 {name=x6}
C {tristate.sym} 413.75 -232.5 2 0 {name=x7}
C {inv.sym} 850 30 0 0 {name=x8}
C {inv.sym} 850 143.75 0 0 {name=x9}
C {inv.sym} 996.25 143.75 0 0 {name=x10}
C {ipin.sym} -211.25 193.75 0 0 {name=p2 lab=CLK}
C {inv.sym} -1.25 213.75 0 0 {name=x11}
C {inv.sym} 278.75 213.75 0 0 {name=x12}
C {lab_wire.sym} 58.75 193.75 0 0 {name=p3 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 318.75 193.75 0 0 {name=p4 sig_type=std_logic lab=c}
C {lab_wire.sym} -10 -225 1 0 {name=p7 sig_type=std_logic lab=cbar}
C {lab_wire.sym} -10 -101.25 0 0 {name=p8 sig_type=std_logic lab=c}
C {lab_wire.sym} 478.75 -205 0 0 {name=p9 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 480 -80 0 0 {name=p10 sig_type=std_logic lab=c}
C {lab_wire.sym} -70 120 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -69.6875 270 0 0 {name=p14 sig_type=std_logic lab=vss}
C {lab_wire.sym} 210.3125 270 0 0 {name=p15 sig_type=std_logic lab=vss}
C {lab_wire.sym} 101.5625 75 0 0 {name=p16 sig_type=std_logic lab=vss}
C {lab_wire.sym} 101.25 -73.4375 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 781.5625 200 0 0 {name=p18 sig_type=std_logic lab=vss}
C {lab_wire.sym} 927.8125 199.375 0 0 {name=p19 sig_type=std_logic lab=vss}
C {lab_wire.sym} 781.5625 60.9375 0 0 {name=p20 sig_type=std_logic lab=vss}
C {lab_wire.sym} 781.25 81.875 0 0 {name=p21 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 210 120.625 0 0 {name=p22 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 781.25 -62.1875 0 0 {name=p23 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 927.5 73.125 0 0 {name=p24 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 513.75 -93.4375 0 0 {name=p27 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 513.75 -187.1875 0 0 {name=p28 sig_type=std_logic lab=vss}
C {lab_wire.sym} 545 -43.125 0 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 545 70 0 0 {name=p30 sig_type=std_logic lab=vss}
C {lab_wire.sym} 231.25 -221.875 0 0 {name=p31 sig_type=std_logic lab=vss}
C {lab_wire.sym} 231.25 -67.8125 0 0 {name=p32 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 373.75 -60.3125 1 0 {name=p37 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 373.75 47.5 0 0 {name=p38 sig_type=std_logic lab=c}
C {ipin.sym} 271.25 -253.75 1 0 {name=p33 lab=RSTn}
C {opin.sym} 1058.75 123.75 0 0 {name=p11 lab=Qb}
C {opin.sym} 1195 10 0 0 {name=p12 lab=Q}
C {lab_wire.sym} -25 -233.4375 3 0 {name=p34 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -25 -80.9375 3 0 {name=p39 sig_type=std_logic lab=vss}
C {lab_wire.sym} 358.75 50 0 0 {name=p40 sig_type=std_logic lab=vss}
C {lab_wire.sym} 358.75 -87.8125 3 0 {name=p41 sig_type=std_logic lab=vdd}
C {tristate.sym} -87.5 80 0 0 {name=x13}
C {ipin.sym} -237.5 0 0 0 {name=p42 lab=D}
C {lab_wire.sym} -152.5 60 2 0 {name=p43 sig_type=std_logic lab=cbar}
C {lab_wire.sym} -153.75 -63.75 0 0 {name=p44 sig_type=std_logic lab=c}
C {lab_wire.sym} -187.5 -50 0 0 {name=p45 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -187.5 48.75 0 0 {name=p46 sig_type=std_logic lab=vss}
C {iopin.sym} -187.5 -75 3 0 {name=p47 lab=vdd}
C {iopin.sym} -187.5 75 1 0 {name=p48 lab=vss}
