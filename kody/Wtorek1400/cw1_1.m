close all
clear all
clc
Nx=32;  %d�ugo�� sygna�u
w=pi/4;  %cz�stotliwo�� sygna�u
A=2;     % amplituda sygna�u
fi=pi/11; %faza sygna�u  
n=0:Nx-1; % wektor agrumentu funkcji sin 
x=A*sin(w*n+fi);  %wektor sygna�u
figure
plot(n,x,'.-')
xlabel('n')
ylabel('x[n]')
title(['\omega=' num2str(w,'%2.2f') '[rad]'])
axis tight
