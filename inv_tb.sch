v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 40 30 70 {lab=GND}
N 30 -66.25 30 -17.5 {lab=vdd}
N 30 -80 30 -70 {lab=vdd}
N 381.25 -128.125 381.25 -55.625 {lab=vdd}
N 130 35 130 65 {lab=GND}
N 130 -75 130 -22.5 {lab=vss}
N 130 -85 130 -75 {lab=vss}
N 381.5625 13.75 381.5625 52.5 {lab=vss}
N 320 -20 320 15 {lab=IN}
N 320 -21.25 340 -21.25 {lab=IN}
N 320 75 320 110 {lab=GND}
N 491.25 -21.25 491.25 30.625 {lab=OUT}
N 491.25 90 491.25 120 {lab=GND}
N 443.75 -21.25 491.25 -21.25 {lab=OUT}
N 30 -70 30 -66.25 {lab=vdd}
N 320 -21.25 320 -20 {lab=IN}
C {vsource.sym} 30 10 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 30 70 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 30 -80 3 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 381.25 -127.5 3 0 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} 130 5 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 130 65 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 130 -85 3 0 {name=p3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 381.5625 52.5 3 0 {name=p4 sig_type=std_logic lab=vss}
C {vsource.sym} 320 45 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 320 110 0 0 {name=l4 lab=GND}
C {capa.sym} 491.25 60 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 491.25 120 0 0 {name=l5 lab=GND}
C {INV.sym} 450 -1.25 0 0 {name=x1}
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

** Define transient params
let tstop = 2*tper
let tstep = 0.001 * tper

** Set source
alter @v3[DC] = 0.0
alter @v3[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 0 ]

** Simulations
op
dc v3 0 3.3 0.01
tran $&tstep $&tstop

** Save waveform
write inv_tb.raw
.endc
"}
C {lab_wire.sym} 329.375 -21.25 0 0 {name=p5 sig_type=std_logic lab=IN}
C {lab_wire.sym} 491.25 -0.625 0 0 {name=p6 sig_type=std_logic lab=OUT}
