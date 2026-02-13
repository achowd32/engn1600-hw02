v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 40 30 70 {lab=GND}
N 30 -66.25 30 -17.5 {lab=vdd}
N 30 -80 30 -70 {lab=vdd}
N 392.5 -129.375 392.5 -56.875 {lab=cbar}
N 130 35 130 65 {lab=GND}
N 130 -77.5 130 -25 {lab=vss}
N 130 -85 130 -75 {lab=vss}
N 392.5 -1.875 392.5 36.875 {lab=c}
N 320 -20 320 15 {lab=IN}
N 320 -21.875 340 -21.875 {lab=IN}
N 320 75 320 110 {lab=GND}
N 490 -21.875 490 30 {lab=OUT}
N 490 90 490 120 {lab=GND}
N 442.5 -21.875 490 -21.875 {lab=OUT}
N 30 -70 30 -66.25 {lab=vdd}
N 320 -21.25 320 -20 {lab=IN}
N -229.375 328.4375 -129.375 328.4375 {lab=#net1}
N -24.375 328.4375 150.625 328.4375 {lab=cbar}
N -25.625 328.4375 -24.375 328.4375 {lab=cbar}
N 250.625 328.4375 310.625 328.4375 {lab=c}
N -88.125 232.1875 -88.125 292.1875 {lab=vdd}
N -87.8125 364.6875 -87.8125 434.6875 {lab=vss}
N 192.1875 364.6875 192.1875 434.6875 {lab=vss}
N 191.875 232.8125 191.875 292.8125 {lab=vdd}
N -229.375 388.125 -229.375 405.3125 {lab=GND}
N -229.375 405.3125 -229.375 405.625 {lab=GND}
N 340 -21.875 342.5 -21.875 {lab=IN}
N 320 -21.875 320 -21.25 {lab=IN}
N 377.5 7.5 377.5 77.5 {lab=vss}
N 377.5 -86.875 377.5 -64.375 {lab=vdd}
N 377.5 -64.375 377.5 -50 {lab=vdd}
C {vsource.sym} 30 10 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 30 70 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 30 -80 3 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 392.5 -100.625 1 0 {name=p2 sig_type=std_logic lab=cbar}
C {vsource.sym} 130 5 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 130 65 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 130 -85 3 0 {name=p3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 392.5 36.5625 3 0 {name=p4 sig_type=std_logic lab=c}
C {vsource.sym} 320 45 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 320 110 0 0 {name=l4 lab=GND}
C {capa.sym} 490 60 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 490 120 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 360 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 630 -170 0 0 {name=s1 only_toplevel=false value="
.control
save all

** Define input signals
let fsig = 1e3
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper - 2*tfr

let tper2 = 2*tper
let tfr2  = 2*tfr
let ton2 = 2*ton

** Define transient params
let tstop = 2*tper
let tstep = 0.001 * tper

** Set source
alter @v3[DC] = 0.0
alter @v3[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 0 ]

alter @v4[DC] = 0.0
alter @v4[PULSE] = [ 0 3.3 0 $&tfr2 $&tfr2 $&ton2 $&tper2 0 ]

** Simulations
op
dc v4 0 3.3 0.01
tran $&tstep $&tstop

** Save waveform
write inv_tb.raw
.endc
"}
C {lab_wire.sym} 329.375 -21.875 0 0 {name=p5 sig_type=std_logic lab=IN}
C {lab_wire.sym} 490 15 0 0 {name=p6 sig_type=std_logic lab=OUT}
C {tgate.sym} 442.5 68.125 0 0 {name=x1}
C {inv.sym} -19.375 348.4375 0 0 {name=x11}
C {inv.sym} 260.625 348.4375 0 0 {name=x12}
C {lab_wire.sym} 40.625 328.4375 0 0 {name=p8 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 300.625 328.4375 0 0 {name=p9 sig_type=std_logic lab=c}
C {lab_wire.sym} -88.125 254.6875 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -87.8125 404.6875 0 0 {name=p14 sig_type=std_logic lab=vss}
C {lab_wire.sym} 192.1875 404.6875 0 0 {name=p15 sig_type=std_logic lab=vss}
C {lab_wire.sym} 191.875 255.3125 0 0 {name=p22 sig_type=std_logic lab=vdd}
C {vsource.sym} -229.375 358.4375 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -229.375 405.625 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 377.5 73.4375 3 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_wire.sym} 377.5 -86.875 0 0 {name=p10 sig_type=std_logic lab=vdd}
