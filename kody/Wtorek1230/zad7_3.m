close all, clear all, clc
Nx=256;
f1=50; A1=1; fi1=pi/7;
f2=150;A2=2; fi2=0;
Fs=1000;
t=(0:Nx-1)/Fs;
x1=A1*sin(2*pi*f1*t+fi1);
x2=A2*sin(2*pi*f2*t+fi2);
x=x1+x2;
h=fir1(90,500/Fs);
Nh=length(h);
y1=conv(h,x);
figure 
hold on
plot(h)
L=10;
L=max([L,Nh])
figure
plot(x1)




