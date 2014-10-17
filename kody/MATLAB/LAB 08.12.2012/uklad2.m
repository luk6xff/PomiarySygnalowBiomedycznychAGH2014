clc
clear all
dt=0.01e-3;
t=0:dt:6e-3;
R=10
C=1e-6
L=1e-3
% 
A=[(-1)*(R/L)  (-1)/L; 1/C  0];
B=[1/C ; 0];
CC=[0 1];
D=[0];
Uwe=ones(1,length(t));

% A=[0 1; (-1)/(L*C) (-1)*(R/L)];
% B=[0; 1/(L*C)];
% CC=[1 0]
% D=0





l=1;
m=[L*C R*C 1];

%charakterystyki czasowe
figure(1)
%impulse(A,B,CC,D,Uwe);
impulse(l,m); grid on

%impulse(A,B,CC,D,Uwe,t)
%[Y,X,t]=impulse(l,m,t)

%na skok jednosktowy
figure(2)
%step(A,B,CC,D,Uwe)
step(l,m); grid on
%step(A,B,CC,D,Uwe,t)
%[Y,X,t]=step(l,m,t)

figure(3)
lsim(l,m,Uwe,t)
figure(4)
bode(l,m); grid on