close all, clear all, clc
N=16;
x=randn(1,N); %sygna³ testowy
%% Algorytm Goertzla - odwrócona kolejnoœæ próbek na wejœciu
xf=fliplr(x);
for k=1:N
WN_k=exp(-j*(2*pi/N)*(k-1));
for n=1:N
if n-1==0
y(n)=xf(n);
else
y(n)=xf(n)+y(n-1)*WN_k;
end
end
Yw(k)=y(n);
end
% sprawdzenie
Yfft=fft(x);
figure,
subplot(2,1,1), plot(real(Yw)-real(Yfft), '.-' ), xlabel('n'), ylabel('blad_R_E'),
subplot(2,1,2), plot(imag(Yw)-imag(Yfft), '.-' ), xlabel('n'), ylabel('blad_I_M'),