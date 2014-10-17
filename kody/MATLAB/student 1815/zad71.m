close all
clear all
clc
Nx=256;
f1=50;
f2=150;
Fs=1000;
t=(0:Nx-1)/Fs;

x1=sin(2*pi*f1*t);
x2=2*sin(2*pi*f2*t);
x=x1+x2;

%filtr fir
N=21;
Fn=100;
Wn=100*2*pi;
b=fir1(N,Fn/(Fs/2),'high');
y1=conv(b,x);

%filtr iir
Nc=5;
R=0.5;
Wp=0.2;
[Bc,Ac]=cheby1(Nc,R,Wp,'high');
y2=filter(Bc,Ac,x);


figure
subplot(5,1,1), hold on
plot(x1,'b')
plot(x2,'r')
legend('x1','x2')
axis tight
subplot(5,1,2), hold on
plot(x)
legend('x1+x2')
axis tight
subplot(5,1,3), hold on
plot(y1,'r')
legend('fir')
axis tight
subplot(5,1,4), hold on
plot(y2,'k')
legend('irr')
axis tight

z=fft(y2)

