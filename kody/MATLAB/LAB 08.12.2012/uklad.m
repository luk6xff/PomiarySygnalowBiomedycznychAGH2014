clc 
clear all

dt=0.01e-3;
t=0:dt:6e-3;
R=1000;
C=1e-6;


A=[(-1)/(R*C)]
B=[1/(R*C)]
CC=[1];
D=[0];

l=1;
m=[R*C 1];

Uwe=ones(1,length(t));

%y(t)=H(t)+x(t);

%charakterystyki czasowe
figure(1)
%impulse(A,B,CC,D,ui);
impulse(l,m); grid on

%impulse(A,B,CC,D,ui,t)
%[Y,X,t]=impulse(l,m,t)

%na skok jednosktowy
figure(2)
%step(A,B,CC,D,ui)
step(l,m); grid on
%step(A,B,CC,D,ui,t)
%[Y,X,t]=step(l,m,t)
pause 
figure(3)
lsim(l,m,Uwe,t)
figure(4)
bode(l,m); grid on