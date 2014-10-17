clear all
close all
clc

t=1:0.001:10;
A=1;
f=1;
d=A*sin(2*pi*t*f);
x=A*sin(2*pi*t*f)+0.3*sawtooth(10*t);
hrls=3;
delt=0.01;
[hrls,h_n,e_n]=lms_lab(x,d,hrls,delt);