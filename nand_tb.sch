v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 40 30 70 {lab=GND}
N 30 -70 30 -20 {lab=vdd}
N 30 -80 30 -70 {lab=vdd}
N 373.125 -110 373.125 -40 {lab=vdd}
N 130 35 130 65 {lab=GND}
N 130 -75 130 -25 {lab=vss}
N 130 -85 130 -75 {lab=vss}
N 373.125 39.375 373.125 74.375 {lab=vss}
N 310.625 11.25 310.625 46.25 {lab=IN1}
N 310.625 10 330.625 10 {lab=IN1}
N 255.625 -10 255.625 -6.25 {lab=IN0}
N 255.625 -10 330.625 -10 {lab=IN0}
N 255.625 53.75 255.625 153.75 {lab=GND}
N 310.625 106.25 310.625 141.25 {lab=GND}
N 476.25 1.25 476.25 51.25 {lab=OUT}
N 476.25 111.25 476.25 141.25 {lab=GND}
N 431.25 0 476.25 0 {lab=OUT}
N 310.625 46.25 310.625 48.75 {lab=IN1}
N 310.625 10 310.625 11.25 {lab=IN1}
N 330.625 10 333.125 10 {lab=IN1}
N 330.625 -10 333.125 -10 {lab=IN0}
N 476.25 0 476.25 1.25 {lab=OUT}
N 430.625 0 431.25 0 {lab=OUT}
C {vsource.sym} 30 10 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 30 70 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 30 -80 3 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 373.125 -103.75 3 0 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} 130 5 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 130 65 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 130 -85 3 0 {name=p3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 373.125 61.25 3 0 {name=p4 sig_type=std_logic lab=vss}
C {vsource.sym} 310.625 76.25 0 0 {name=V3 value=3.3 savecurrent=false}
C {vsource.sym} 255.625 23.75 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 255.625 153.75 0 0 {name=l3 lab=GND}
C {gnd.sym} 310.625 141.25 0 0 {name=l4 lab=GND}
C {capa.sym} 476.25 81.25 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 476.25 141.25 0 0 {name=l5 lab=GND}
C {NAND2.sym} 433.125 40 0 0 {name=x1}
C {devices/code_shown.sym} 380 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 640 -100 0 0 {name=s1 only_toplevel=false value="
.control
save all

** Define input signals
let fsig = 1e3
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper - 2*tfr

** Define transient params
let tstop = 2*tper
let tstep = 0.001 * tper

** Set source for v3
alter @v3[DC] = 0.0
alter @v3[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 0 ]

** Set variables and source for v4
let tper2 = 2*tper
let tfr2  = 2*tfr
let ton2  = 2*ton

alter @v4[DC] = 0.0
alter @v4[PULSE] = [ 0 3.3 0 $&tfr2 $&tfr2 $&ton2 $&tper2 0 ]
** Simulations
op
dc v3 0 3.3 0.01
dc v4 0 3.3 0.01
tran $&tstep $&tstop

** Save waveform
write nand_tb.raw
.endc
"}
C {lab_wire.sym} 290.625 -10 0 0 {name=p5 sig_type=std_logic lab=IN0}
C {lab_wire.sym} 324.375 10 0 0 {name=p6 sig_type=std_logic lab=IN1}
C {lab_wire.sym} 476.25 8.75 2 0 {name=p7 sig_type=std_logic lab=OUT}
