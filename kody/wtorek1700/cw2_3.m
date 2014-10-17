close all 
clear all 
clc 
%% parametry
Nx=32; %d³ugoœæ sygna³u x (liczba próbek)
w=0.5; %czêstotliwoœæ sygna³u [rad]
A=2; %amplituda sygna³u
fi=pi/11; %faza sygna³u
%% obliczenia
n=0:Nx-1; %wektor argumentów funkcji sin
x=A*sin(w*n+fi); %wektor sygna³u

[Xw, w]=fourier_ciagly(x, 0.01, [-pi pi]);

%% wizualicja

plot(w,abs(Xw),'.-')


