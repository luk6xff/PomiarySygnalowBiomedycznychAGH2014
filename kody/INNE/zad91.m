close all
clear all
clc

Nx=265;
f=100;
Fs1=1000;
Fs2=1200;
fi=pi/4;
t1=[0:Nx-1]/Fs1;
t2=[0:Nx-1]/Fs2;
x1=sin(2*pi*f*t1+fi)
%x2=resample(x1,6,5)
x2=x1*6/5