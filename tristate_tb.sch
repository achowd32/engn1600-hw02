v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 -250 -140 -220 {lab=GND}
N -140 -356.25 -140 -307.5 {lab=vdd}
N -140 -370 -140 -360 {lab=vdd}
N 221.25 -423.125 221.25 -350.625 {lab=c}
N -40 -255 -40 -225 {lab=GND}
N -40 -367.5 -40 -315 {lab=vss}
N -40 -375 -40 -365 {lab=vss}
N 222.5 -291.875 222.5 -253.125 {lab=cbar}
N 150 -309.375 150 -274.375 {lab=IN}
N 150 -311.25 170 -311.25 {lab=IN}
N 150 -214.375 150 -179.375 {lab=GND}
N 305 -311.25 305 -259.375 {lab=OUT}
N 305 -199.375 305 -169.375 {lab=GND}
N 257.5 -311.25 305 -311.25 {lab=OUT}
N -140 -360 -140 -356.25 {lab=vdd}
N 150 -310.625 150 -309.375 {lab=IN}
N -399.375 38.4375 -299.375 38.4375 {lab=#net1}
N -194.375 38.4375 -19.375 38.4375 {lab=cbar}
N -195.625 38.4375 -194.375 38.4375 {lab=cbar}
N 80.625 38.4375 140.625 38.4375 {lab=c}
N -258.125 -57.8125 -258.125 2.1875 {lab=vdd}
N -257.8125 74.6875 -257.8125 144.6875 {lab=vss}
N 22.1875 74.6875 22.1875 144.6875 {lab=vss}
N 21.875 -57.1875 21.875 2.8125 {lab=vdd}
N -399.375 98.125 -399.375 115.3125 {lab=GND}
N -399.375 115.3125 -399.375 115.625 {lab=GND}
N 170 -311.25 172.5 -311.25 {lab=IN}
N 150 -311.25 150 -310.625 {lab=IN}
N 172.5 -311.25 187.5 -311.25 {lab=IN}
N 187.5 -296.25 187.5 -207.5 {lab=vss}
N 187.5 -373.125 187.5 -326.25 {lab=vdd}
C {vsource.sym} -140 -280 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -140 -220 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -140 -370 3 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 222.5 -265.625 3 0 {name=p2 sig_type=std_logic lab=cbar}
C {vsource.sym} -40 -285 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -40 -225 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -40 -375 3 0 {name=p3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 221.25 -417.1875 3 0 {name=p4 sig_type=std_logic lab=c}
C {vsource.sym} 150 -244.375 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 150 -179.375 0 0 {name=l4 lab=GND}
C {capa.sym} 305 -229.375 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 305 -169.375 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 190 -580 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 460 -460 0 0 {name=s1 only_toplevel=false value="
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
C {lab_wire.sym} 159.375 -311.25 0 0 {name=p5 sig_type=std_logic lab=IN}
C {lab_wire.sym} 305 -274.375 0 0 {name=p6 sig_type=std_logic lab=OUT}
C {inv.sym} -189.375 58.4375 0 0 {name=x11}
C {inv.sym} 90.625 58.4375 0 0 {name=x12}
C {lab_wire.sym} -129.375 38.4375 0 0 {name=p8 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 130.625 38.4375 0 0 {name=p9 sig_type=std_logic lab=c}
C {lab_wire.sym} -258.125 -35.3125 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -257.8125 114.6875 0 0 {name=p14 sig_type=std_logic lab=vss}
C {lab_wire.sym} 22.1875 114.6875 0 0 {name=p15 sig_type=std_logic lab=vss}
C {lab_wire.sym} 21.875 -34.6875 0 0 {name=p22 sig_type=std_logic lab=vdd}
C {vsource.sym} -399.375 68.4375 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -399.375 115.625 0 0 {name=l3 lab=GND}
C {tristate.sym} 287.5 -231.25 0 0 {name=x1}
C {lab_wire.sym} 187.5 -220.625 3 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_wire.sym} 187.5 -367.5 3 0 {name=p10 sig_type=std_logic lab=vdd}
