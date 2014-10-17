close all, clear all, clc
Nx=256;
Fs=1000;
f1=50;
f2=150;
t=(0:Nx-1)/Fs;

x1=sin(2*pi*f1*t);
x2=2*sin(2*pi*f2*t);
x=x1+x2;
b=fir1(21,100/(Fs/2));
[h1,w1]=freqz(b,1,1e3,Fs);
y1=filter(h1,1,x);


yc=conv(b,x);
[B,A]=cheby1(5,1,100/(Fs/2));
y2=filter(B,A,x);
f=(0:1:Nx-1)*(Fs/Nx);

subplot(3,1,1), hold on
plot(x);
subplot(3,1,2), hold on
plot (abs(y1));
subplot(3,1,3), hold on
plot(f,abs(x));

subplot(3,1,4), hold on
plot(f,abs(y2));
subplot(3,1,1), hold on
plot(f,abs(y1),'r');


