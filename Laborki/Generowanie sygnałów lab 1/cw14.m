close all 
clear all
clc

Nx=100;
w=pi/10;
A=2;
fi=pi/11;
n=0:Nx-1;
x=A*sin(w*n+fi);
s=rand(size(x))
xs=x+s;
figure
plot(n,xs,'.-' )
xlabel('n')
ylabel('zaszumiony sygnal xs[n]')
title('zadanie 1.4')
axis tight