%function [Xw,w]=fourier_ciagly(x,dw,wz);
clear all
close all
clc


Nx=32;
w=pi/14;
A=2;
fi=pi/11;



k=0:Nx-1;
x=A*exp(j*w*k);

%%

dw=0.01;
wz=[-pi pi];


w=wz(1):dw:wz(2);
xw=0;
 for w=wz(1):dw:wz(2)
    for n=1:length(x)
        xw=xw+x(n)*exp(-j*w*n);
        XW(n)=xw;
    end
 end

plot(w,XW,'.-');
    
