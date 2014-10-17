close all
clear all
clc


%% parametry
Nx=32;      %dlugosc sygnalu x (liczba probek)  
w =pi/4;    %czest sygnalu
A=2;        %amplituda sygnalu
fi = pi/11; %faza sygnalu

%% obliczenia
n=0:Nx-1;
x=A*sin(w*n+fi);

%% wizualizacja

figure
plot(n,x,'.-')
xlabel('n');
ylabel('x[n]')
title(['\omega=' num2str(w, '%2.2f') '[rad] '])
axis tight