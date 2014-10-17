clc; clear all; close all;

t=1:0.001:10;
A=1;
f=1;
d=A*sin(2*pi*t*f);
x=A*sin(2*pi*t*f)+0.3*sawtooth(10*t);
hrls=3;
delt=0.01;
[hrls,h_n,e_n]=rls_lab(x,d,hrls,delt);
figure(1)
plot(abs(e_n))
figure(2)
plot(abs(h_n))