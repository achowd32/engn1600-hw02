v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -697.5 43.125 -697.5 73.125 {lab=GND}
N -697.5 -63.125 -697.5 -14.375 {lab=vdd}
N -621.25 44.375 -621.25 74.375 {lab=GND}
N -621.25 -68.125 -621.25 -15.625 {lab=vss}
N -431.25 85 -431.25 120 {lab=GND}
N -166.25 -34.375 -166.25 17.5 {lab=Q}
N -166.25 77.5 -166.25 107.5 {lab=GND}
N -213.75 -34.375 -166.25 -34.375 {lab=Q}
N -697.5 -66.875 -697.5 -63.125 {lab=vdd}
N -393.75 135.625 -393.75 152.8125 {lab=GND}
N -411.25 -11.875 -408.75 -11.875 {lab=D}
N -408.75 -11.875 -393.75 -11.875 {lab=D}
N -323.75 -108.75 -323.75 -61.875 {lab=vdd}
N -323.75 57.5 -323.75 96.875 {lab=vss}
N -243.125 -34.375 -213.75 -34.375 {lab=Q}
N -243.75 -34.375 -243.125 -34.375 {lab=Q}
N -243.75 117.5 -243.75 147.5 {lab=GND}
N -393.75 8.125 -393.75 76.25 {lab=CLK}
N -431.25 -10 -431.25 25 {lab=D}
N -431.25 85 -431.25 120 {lab=GND}
N -495.625 65 -495.625 100 {lab=GND}
N -495.625 65 -495.625 100 {lab=GND}
N -486.25 -31.875 -393.125 -31.875 {lab=RSTn}
N -243.75 5.625 -243.75 58.125 {lab=Qb}
N -431.25 -11.875 -411.25 -11.875 {lab=D}
N -431.25 -11.875 -431.25 -10 {lab=D}
N -495.625 -31.875 -495.625 5 {lab=RSTn}
N -495.625 -31.875 -486.25 -31.875 {lab=RSTn}
C {vsource.sym} -697.5 13.125 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -697.5 73.125 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -697.5 -52.8125 3 0 {name=p1 sig_type=std_logic lab=vdd}
C {vsource.sym} -621.25 14.375 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -621.25 74.375 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -621.25 -59.375 3 0 {name=p3 sig_type=std_logic lab=vss}
C {vsource.sym} -431.25 55 0 0 {name=V3 value=3.3 savecurrent=false}
C {capa.sym} -166.25 47.5 0 0 {name=C1
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -166.25 107.5 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -391.25 -280.625 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} -121.25 -160.625 0 0 {name=s1 only_toplevel=false value="
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

let tper4 = 4*tper
let tfr4  = 4*tfr
let ton4 = 4*ton

** Define transient params
let tstop = 4*tper
let tstep = 0.001 * tper

** Set source
alter @v4[DC] = 0.0
alter @v4[PULSE] = [ 0 3.3 0.00025 $&tfr $&tfr $&ton $&tper 0 ]

alter @v3[DC] = 0.0
alter @v3[PULSE] = [ 0 3.3 0 $&tfr2 $&tfr2 $&ton2 $&tper2 0 ]

alter @v5[DC] = 0.0
alter @v5[PULSE] = [ 0 3.3 0 $&tfr4 $&tfr4 $&ton4 $&tper4 0 ]

** Simulations
op
dc v3 0 3.3 0.01
dc v4 0 3.3 0.01
dc v5 0 3.3 0.01
tran $&tstep $&tstop

** Save waveform
write inv_tb.raw
.endc
"}
C {lab_wire.sym} -431.25 -0.9375 0 0 {name=p5 sig_type=std_logic lab=D}
C {lab_wire.sym} -166.25 2.5 0 0 {name=p6 sig_type=std_logic lab=Q}
C {vsource.sym} -393.75 105.9375 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -393.75 151.875 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -323.75 92.5 3 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_wire.sym} -323.75 -103.125 3 0 {name=p10 sig_type=std_logic lab=vdd}
C {dff.sym} -243.75 -1.875 0 0 {name=x1}
C {capa.sym} -243.75 87.5 0 0 {name=C2
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -243.75 147.5 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -243.75 27.5 2 0 {name=p4 sig_type=std_logic lab=Qb}
C {gnd.sym} -431.25 120 0 0 {name=l7 lab=GND}
C {vsource.sym} -495.625 35 0 0 {name=V5 value=3.3 savecurrent=false}
C {lab_wire.sym} -416.25 -31.875 0 0 {name=p2 sig_type=std_logic lab=RSTn}
C {gnd.sym} -495.625 100 0 0 {name=l9 lab=GND}
C {lab_wire.sym} -393.75 30.625 0 0 {name=p8 sig_type=std_logic lab=CLK}
