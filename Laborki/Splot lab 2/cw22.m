close all 
clear all
clc

Nx=32;
w=pi/8;
A=2;
fi=pi/11;
n=0:Nx-1;
x=A*sin(w*n+fi);
y=furier_ciagly(x,1/100,[-pi,pi])
figure
plot(n,x,'.-' )
xlabel('n')
ylabel('x[n]')
title(['\omega=' num2str(w,'%2.2f') '[rad]'])
axis tight
figure(2)
plot(abs(y))