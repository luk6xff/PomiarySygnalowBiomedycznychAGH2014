clear all, close all, clc

Rp=1;
Rs=30;
Wp=2*pi*1000;
Ws=2*pi*1500;
F=0:10:2e3;
w=2*pi*F;

[n,Wn]=buttord(2*pi*1000,2*pi*1500,1,30,'s')
[z,p,k]=butter(n,Wn,'s');
[A,B]=zp2tf(z,p,k);

H=freqs_lab(A,B,w);
figure
plot(w,20*log10(abs(H)))
