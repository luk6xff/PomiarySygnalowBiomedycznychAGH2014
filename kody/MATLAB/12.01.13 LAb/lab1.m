clear all
close all
clc

dt=0.01e-3;
t=0:dt:6e-3;

Raw=1.5;
Rt=3;
Cg=0.0035;
Ct=0.2;
Law=0.019;
Lt=0.0021;

A=[ -Raw/Law 0 -1/Law 0
    0 -Rt/Lt 1/Lt -1/Lt
    1/Cg -1/Cg 0 0
    0 1/Ct 0 0]
B=[ 1/Law 0
    0 -1/Lt
    0 0
    0 0]
C=[1 0 0 0]
D=[0]

Uwe=ones(1,length(t));


figure(1)
impulse(A,B,CC,D,Uwe);