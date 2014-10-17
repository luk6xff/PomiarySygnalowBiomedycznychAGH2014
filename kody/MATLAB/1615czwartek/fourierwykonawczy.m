close all
clear all 
clc 
%% parametry
Nx=64; %d�ugo�� sygna�u x (liczba pr�bek)
w=pi/10; %cz�stotliwo�� sygna�u [rad]
A=2; %amplituda sygna�u
fi=pi/11; %faza sygna�u
%% obliczenia
n=0:Nx-1; %wektor argument�w funkcji sin
x=A*sin(w*n+fi); %wektor sygna�u
%% wizualizacja
figure
plot(n,x,'.-')
b=fft(x);
plot(n,b)