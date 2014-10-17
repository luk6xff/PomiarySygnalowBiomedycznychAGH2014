close all
clear all
clc

Nx=32;
w=pi/4;
A=2;
fi=pi/11;
f=10;
Fs=100;
dt=1/Fs;


n=0:Nx-1;
dt=0:dt:(Nx-1)*dt;
x=A*sin(2*pi*f*dt+fi);

figure
    plot(dt,x, '.-')
    xlabel('n')
    ylabel('x[n]')
    title(['\omegoa' num2str(w,'%2.2f') '[rad]' ])
    axis tight
    