close all;
clear all;
clc

A=2;
w=pi/40
fi=pi/11
Nx=50

n=0:Nx-1;
x=A*exp(j*w*n);
z=real(x);
c=imag(x);
figure 
plot(n,z,'.-r')
hold on
plot(n,c,'.-b')
hold of
axis tight