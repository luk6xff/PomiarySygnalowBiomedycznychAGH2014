close all 
clear all 
clc 
%% parametry
Nx=32; %d�ugo�� sygna�u x (liczba pr�bek)
w=0.5; %cz�stotliwo�� sygna�u [rad]
A=2; %amplituda sygna�u
fi=pi/11; %faza sygna�u
%% obliczenia
n=0:Nx-1; %wektor argument�w funkcji sin
x=A*sin(w*n+fi); %wektor sygna�u

[Xw, w]=fourier_ciagly(x, 0.01, [-pi pi]);

%% wizualicja

plot(w,abs(Xw),'.-')


