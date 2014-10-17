close all;
clear all;
clc;

%% parametry
Fs=4000;
Rp=1;
fpass=800;
fstop=1200;
Rs=30;

%% obliczenia
Wp=800/2000;
Ws=1200/2000;
%W=w/(2*pi)

[N,Wn]=buttord(Wp,Ws,Rp,Rs,'s');
[B A]=butter(N,Wn);
[H,w]=freqz(B,A,512);

[N1,Wp1]=cheb1ord(Wp, Ws, Rp, Rs,'s');
[B1,A1]=cheby1(N1,Rp,Wp1,'s');
[H1,w]=freqz(B1,A1,w);

[N2,Ws2]=cheb2ord(Wp, Ws, Rp, Rs, 's');
[B2,A2]=cheby2(N2,Rs,Ws2,'s');
[H2,w]=freqz(B2,A2,w);

[N3,Wp3]=ellipord(Wp, Ws, Rp, Rs, 's');
[B3,A3]=ellip(N3,Rp,Rs,Wp3,'s');
[H3,w]=freqz(B3,A3,w);


figure(5)
hold on
plot(real(P),imag(P),'*r')
plot(real(Z),imag(Z),'or')
plot(real(P1),imag(P1),'*g')
plot(real(Z1),imag(Z1),'og')
plot(real(P2),imag(P2),'*b')
plot(real(Z2),imag(Z2),'ob')
plot(real(P3),imag(P3),'*k')
plot(real(Z3),imag(Z3),'ok')
axis equal