v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 10 -32.5 10 2.5 {lab=OUT}
N -80 -10 -30 -10 {lab=IN}
N 10 -10 41.25 -10 {lab=OUT}
N 10 -112.5 10 -87.5 {lab=vdd}
N 10 57.5 10 81.25 {lab=vss}
N 10 -121.25 10 -120 {lab=vdd}
N 10 -120 10 -112.5 {lab=vdd}
N 10 -122.5 10 -121.25 {lab=vdd}
N 10 -60 26.25 -60 {lab=vdd}
N 26.25 -103.75 26.25 -60 {lab=vdd}
N 10 -103.75 26.25 -103.75 {lab=vdd}
N 10 30 26.25 30 {lab=vss}
N 26.25 30 26.25 71.25 {lab=vss}
N 10 71.25 26.25 71.25 {lab=vss}
N -30 -60 -30 30 {lab=IN}
C {symbols/nfet_03v3.sym} -10 30 0 0 {name=M1
L=0.28u
W=0.42u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -10 -60 0 0 {name=M2
L=0.28u
W=0.42u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} -80 -10 0 0 {name=p1 lab=IN}
C {opin.sym} 40 -10 0 0 {name=p2 lab=OUT}
C {iopin.sym} 10 -121.25 3 0 {name=p3 lab=vdd}
C {iopin.sym} 10 80 1 0 {name=p4 lab=vss}
