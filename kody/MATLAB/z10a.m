clc;
clear all;
close all;
f=2000;
Wp=[700 800]/(f/2);
Ws=[650 850]/(f/2);
Rp=0.1;
Rs=40;
[N, Wn] = BUTTORD(Wp,Ws,Rp,Rs);
[B,A] = BUTTER(N,Wn);
freqz(B,A,1000,f)
N=1:1000
f1= 700;
f2= 850;
x=sin(2*pi*f1/f*N)+ sin(2*pi*f2/f*N)
plot(filter(B,A,x))
figure
y=sin(2*pi*f1/f*N)
plot (y)