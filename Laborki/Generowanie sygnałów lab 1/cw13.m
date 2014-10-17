close all 
clear all
clc

Nx=32;
w=pi/4;
A=2;
fi=0;
n=0:Nx-1;
x=A*exp(j*w*n+fi);
figure(1)
hold on
plot(n,real(x),'.-' )
plot(n,imag(x),'r' )
plot(n,abs(x),'g')
xlabel('n')
ylabel('x[n]')
title('zadanie 1.3')
axis tight