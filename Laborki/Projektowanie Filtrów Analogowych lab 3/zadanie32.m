close all, clear all, clc
W1=2*pi*7;
W2=2*pi*5;
Bw=W2-W1
W0=sqrt(W1*W2)
N=6;
[za,pa,ka]=buttap(N);
[b,a]=zp2tf(za,pa,ka);
[at,bt]=lp2bp(b,a,W0,Bw);
G=tf(b,a)
G2=tf(at,bt)
figure(1)
grid on
hold on
bode(b,a)
bode(at,bt)
hold off
