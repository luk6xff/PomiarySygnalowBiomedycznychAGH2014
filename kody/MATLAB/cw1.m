clear all
close all
clc

A=0.5;
To=1;
dpr=1000;
tp=0:(1/dpr):To;
t=10*tp;
of=1.5;


x=exp(-t/2*To).*(A*sin(pi*t))+of;
obw=A*exp(-t/2/To)+of;
plot(t,x,t,obw)
