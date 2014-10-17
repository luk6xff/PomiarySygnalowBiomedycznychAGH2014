close all
clear all
clc
%% parametry
Nx=32;
w=pi/4;
A=2;
fi=pi/11;
%% obliczania
n=0: Nx-1;
x=A*sin(w*n+fi);
%% Wizualizacja
figure
plot(n, x, '.-')
xlabel('n')
ylabel('x[n]')
title (['\omega=' num2str(w, '%2.2f') '[rad]'])
axis tight