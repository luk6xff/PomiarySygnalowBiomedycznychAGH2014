close all
clear all
clc

A=2;
P=4;
U=4;
int=1;
f=50;
fi=pi/7;
Fs=1000;
Nx=32;
t=(0:Nx-1)/Fs;
x=A*sin(2*pi*f*t+fi);

figure(1)
hold on
plot(x)
plot(lwt_lab(x,P,U,int));
hold off