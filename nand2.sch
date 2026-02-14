v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 60 80 90 {lab=#net1}
N 20 -30 180 -30 {lab=OUT}
N 80 -30 80 -0 {lab=OUT}
N -70 -60 -20 -60 {lab=IN0}
N -70 30 40 30 {lab=IN0}
N -70 -60 -70 30 {lab=IN0}
N -140 -120 -110 -120 {lab=IN1}
N -140 -120 -140 120 {lab=IN1}
N -140 120 40 120 {lab=IN1}
N 140 -120 140 -60 {lab=IN1}
N -110 -120 140 -120 {lab=IN1}
N -80 -10 -70 -10 {lab=IN0}
N -160 80 -140 80 {lab=IN1}
N 80 -10 210 -10 {lab=OUT}
N 20 -170 20 -90 {lab=vdd}
N 20 -170 80 -170 {lab=vdd}
N 80 -170 180 -170 {lab=vdd}
N 180 -170 180 -90 {lab=vdd}
N 80 150 80 170 {lab=vss}
N 20 -60 50 -60 {lab=vdd}
N 50 -100 50 -60 {lab=vdd}
N 20 -100 50 -100 {lab=vdd}
N 180 -60 220 -60 {lab=vdd}
N 220 -110 220 -60 {lab=vdd}
N 180 -110 220 -110 {lab=vdd}
N 80 120 120 120 {lab=vss}
N 120 120 120 160 {lab=vss}
N 80 160 120 160 {lab=vss}
N 80 30 120 30 {lab=vss}
N 120 30 120 120 {lab=vss}
C {symbols/nfet_03v3.sym} 60 120 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 0 -60 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 160 -60 0 0 {name=M4
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
C {ipin.sym} -80 -10 0 0 {name=p1 lab=IN0}
C {ipin.sym} -160 80 0 0 {name=p2 lab=IN1}
C {opin.sym} 210 -10 0 0 {name=p3 lab=OUT}
C {iopin.sym} 80 -170 3 0 {name=p4 lab=vdd}
C {iopin.sym} 80 170 1 0 {name=p5 lab=vss}
C {symbols/nfet_03v3.sym} 60 30 0 0 {name=M2
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
