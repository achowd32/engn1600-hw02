v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 40 40 {}
N 120 -10 120 10 {lab=#net1}
N 120 70 120 90 {lab=out}
N 120 150 120 170 {lab=#net2}
N 40 40 40 80 {lab=in}
N 40 40 80 40 {lab=in}
N 40 80 40 120 {lab=in}
N 40 120 80 120 {lab=in}
N 120 80 190 80 {lab=out}
N 120 230 120 250 {lab=vss}
N 120 -100 120 -70 {lab=vdd}
N 40 -40 80 -40 {lab=c}
N 40 200 80 200 {lab=xxx}
C {symbols/pfet_03v3.sym} 100 -40 0 0 {name=M1
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 100 40 0 0 {name=M2
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 100 120 0 0 {name=M3
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 100 200 0 0 {name=M4
L=0.28u
W=0.22u
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
C {ipin.sym} 40 80 0 0 {name=p1 lab=in}
C {opin.sym} 190 80 0 0 {name=p2 lab=out}
C {iopin.sym} 120 -100 3 0 {name=p3 lab=vdd}
C {iopin.sym} 120 250 1 0 {name=p4 lab=vss}
C {ipin.sym} 40 -40 0 0 {name=p5 lab=c}
C {ipin.sym} 40 200 0 0 {name=p6 lab=cbar}
