close all
clear all
clc

Nx=32;
wl=pi/4;
A=2;
fi=pi/11;

n=0:Nx-1;
x=A*sin(wl*n+fi);
[Xw, w]=fourier_ciagly(x,0.001,[0 7*pi]);
N=length(x);
figure
plot(w,abs(Xw),'-')
xlabel('w')
ylabel('X')
axis tight