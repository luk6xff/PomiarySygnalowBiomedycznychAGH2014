clear all, close all, clc
Rp=1;
Rs=30;
Fs=4000;
f_pass=800;
f_stop=1200;
Wp=f_pass/(Fs/2);
Ws=f_stop/(Fs/2);

w=0:0.001:pi;
f=(w/pi)*(Fs/2);
[n,Wn]=buttord(Wp,Ws,1,30)
[z,p,k]=butter(n,Wn,'low');
[A,B]=zp2tf(z,p,k);

H=freqz_lab(A,B,w);
H1=freqz(A,B,w);

figure
hold on
grid on
%porównanie freqz i freqz_lab
plot(f,20*log10(abs(H)),'*')
plot(f,20*log10(abs(H1)),'r')
axis([0 Fs/2 -100 10])
xlabel('Hz')
ylabel('dB')
title('Freqz i freqz_lab')