v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 40 30 70 {lab=GND}
N 30 -70 30 -20 {lab=vdd}
N 30 -80 30 -70 {lab=vdd}
N 370 -140 370 -70 {lab=vdd}
N 130 35 130 65 {lab=GND}
N 130 -75 130 -25 {lab=vss}
N 130 -85 130 -75 {lab=vss}
N 376.25 65 376.25 100 {lab=vss}
N 280 15 280 50 {lab=IN1}
N 280 13.75 300 13.75 {lab=IN1}
N 225 -23.75 225 -20 {lab=IN0}
N 225 -23.75 300 -23.75 {lab=IN0}
N 225 40 225 140 {lab=GND}
N 280 110 280 145 {lab=GND}
N 510 -0 510 50 {lab=OUT}
N 510 110 510 140 {lab=GND}
N 465 -1.25 510 -1.25 {lab=OUT}
N 280 50 280 52.5 {lab=IN1}
N 280 13.75 280 15 {lab=IN1}
N 300 13.75 302.5 13.75 {lab=IN1}
N 300 -23.75 302.5 -23.75 {lab=IN0}
N 510 -1.25 510 0 {lab=OUT}
N 461.71875 -1.25 465 -1.25 {lab=OUT}
C {vsource.sym} 30 10 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 30 70 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 30 -80 3 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 370 -140 3 0 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} 130 5 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 130 65 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 130 -85 3 0 {name=p3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 376.25 100 3 0 {name=p4 sig_type=std_logic lab=vss}
C {vsource.sym} 280 80 0 0 {name=V3 value=3.3 savecurrent=false}
C {vsource.sym} 225 10 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 225 140 0 0 {name=l3 lab=GND}
C {gnd.sym} 280 145 0 0 {name=l4 lab=GND}
C {capa.sym} 510 80 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 510 140 0 0 {name=l5 lab=GND}
C {NAND2.sym} 390 -5 0 0 {name=x1}
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
C {lab_wire.sym} 260 -23.75 0 0 {name=p5 sig_type=std_logic lab=IN0}
C {lab_wire.sym} 293.75 13.75 0 0 {name=p6 sig_type=std_logic lab=IN1}
C {lab_wire.sym} 498.75 -1.25 0 0 {name=p7 sig_type=std_logic lab=OUT}
