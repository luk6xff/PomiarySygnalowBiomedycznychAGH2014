close all 
clear all
clc

Nx=32;
w=pi/4;
A=2;
fi=pi/11;
n=0:Nx-1;
x=A*sin(w*n+fi);
figure
plot(n,x,'.-' )
xlabel('n')
ylabel('x[n]')
title('zadanie 1.1')
axis tight