close all
clear all
clc
Nx=32;  %d�ugo�� sygna�u
w=pi/4;  %cz�stotliwo�� sygna�u
A=2;     % amplituda sygna�u
fi=pi/11; %faza sygna�u 
fp=100;
f=10;

n=0:Nx-1; % wektor agrumentu funkcji sin 
dt=1/fp;
t=n*dt;
x=A*sin(2*pi*f*t+1);  %wektor sygna�u

figure
plot(t,x,'.-')
xlabel('t[s]')
ylabel('x[n]')
title(['\omega=' num2str(w,'%2.2f') '[rad]'])
axis tight