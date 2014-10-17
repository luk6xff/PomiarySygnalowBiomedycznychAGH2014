close all
clear all
clc
Nx=32;  %d³ugoœæ sygna³u
w=pi/4;  %czêstotliwoœæ sygna³u
A=2;     % amplituda sygna³u
fi=pi/11; %faza sygna³u  
n=0:Nx-1; % wektor agrumentu funkcji sin 
x=A*sin(w*n+fi);  %wektor sygna³u
figure
plot(n,x,'.-')
xlabel('n')
ylabel('x[n]')
title(['\omega=' num2str(w,'%2.2f') '[rad]'])
axis tight
