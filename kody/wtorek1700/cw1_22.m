close all
clear all
clc

N=64;

Fs=100; % cz. próbkowania  

f=10; % cz. sygna³u 

A=5;

n=0: N-1;
t=n/Fs;
fi=pi/6;
x=A*sin(2*pi*f*t+fi);

figure
plot(t, x, '.-')
xlabel('t(s)')
ylabel('x[n]')
%title (['\omega=' num2str(w, '%2.2f') '[rad]'])
%axis tight