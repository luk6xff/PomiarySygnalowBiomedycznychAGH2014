close all 
clear all
clc
f=10;
Fs=100;
Nx=32;
w=2*pi*f;
A=1;
fi=pi/2;
dt=1/Fs;
t=[0:1:Nx-1]*dt;

x=A*sin(w*t+fi);
figure
plot(t,x,'.-' )
xlabel('t')
ylabel('x[t]')
title('zadanie 1.2')
axis tight