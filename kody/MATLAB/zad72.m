close all
clear all
clc

Nx=256;
f1=50;
f2=150;
w1=2*pi*f1;
w2=2*pi*f2;
Fs=1000;
n=0:Nx-1;

x1=sin(w1*(n/Fs));
x2=sin(w2*(n/Fs));
x=x1+x2;

%filtr fir
N=21;
Fn=100;
Wn=100*2*pi;
b=fir1(N,Fn/(Fs/2),'low');
y1=filter(b,1,x);
%filtr iir
Nc=5;
Rp=100;
Wp=0.2;
[Bc,Ac]=cheby1(Nc,Rp,Wp,'low');
y2=filter(Bc,Ac,x);

% funkcja conv
c1=conv(y1,x)
c2=conv(y2,x)
figure(1)
subplot(3,1,1), hold on
plot(c1)
figure(2)
subplot(3,1,2), hold on
plot(c2)