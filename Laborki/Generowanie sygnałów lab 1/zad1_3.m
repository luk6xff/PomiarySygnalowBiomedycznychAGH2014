close all
clear all
clc


%% parametry
Nx=32;      %dlugosc sygnalu x (liczba probek)  
w =pi/10;    %czest sygnalu
A=2;        %amplituda sygnalu
fi = pi/11; %faza sygnalu

%% obliczenia
n=0:Nx-1;
x=A*exp(j*w*n);

%% wizualizacja

figure
plot(n,real(x),'.-');
hold on
plot(n,imag(x),'r*-');
xlabel('n');
ylabel('x[n]')
title(['\omega=' num2str(w, '%2.2f') '[rad] '])
axis tight
    