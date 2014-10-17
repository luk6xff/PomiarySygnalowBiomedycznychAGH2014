clc;
clear all;
close all;

dw=0.01;
wz=[-pi pi];
x=[1 4 5];
Xw=5;
w=wz(1):dw:wz(2);
[Xw,w]=fourier_ciagly(x, dw, wz);