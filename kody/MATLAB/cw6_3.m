clear all, close all, clc
N=32;
%xn=cos(pi/8*[0:N-1]);
xn=randn(1,N);

Xw=fft_lab(xn);

e=Xw-fft(xn);

figure(1)
spy
figure(2)
hold on
plot(abs(fft(xn)),'o-')

plot(abs(Xw),'r')
figure(3)
hold on
plot(abs(e),'g')