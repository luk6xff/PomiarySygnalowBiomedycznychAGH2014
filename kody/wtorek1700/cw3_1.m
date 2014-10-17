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
Wp=fpass/Fs/2;
Ws=fstop/Fs/2;
w=pi;
%W=w/(2*pi)

[N,Wn]=BUTTORD(Wp,Ws,Rp,Rs);
[B,A] = butter(N,Wn,w);
freqz(B,A);

[N1,Wp1]=cheb1ord(Wp, Ws, Rp, Rs);
[B1,A1]=cheby1(N1,Rp,Wp1);
freqz(B1,A1);

[N2,Ws2]=cheb2ord(Wp, Ws, Rp, Rs);
[B2,A2]=cheby2(N2,Rs,Ws2);
freqz(B2,A2);

[N3,Wp3]=ellipord(Wp, Ws, Rp, Rs);
[B3,A3]=ellip(N3,Rp,Rs,Wp3);
freqz(B3,A3);


%% wizualizacja

figure(1)
hold on
bode(tf(B,A),'-r');
bode(tf(B1,A1),'-g');
bode(tf(B2,A2),'-b');
bode(tf(B3,A3),'-k');
grid on


figure(2)
subplot(2,1,1)
hold on
plot(w/(2*pi),20*log10(abs(H)),'-r');
plot(w/(2*pi),20*log10(abs(H1)),'-g');
plot(w/(2*pi),20*log10(abs(H2)),'-b');
plot(w/(2*pi),20*log10(abs(H3)),'-k');
xlabel('[Hz]');
ylabel('[dB]');
grid on
legend('Butt','Czeb I','CzebII','Elip','Location','SouthWest')

subplot(2,1,2)
hold on
plot(w/(2*pi),unwrap(angle(H)),'-r')
plot(w/(2*pi),unwrap(angle(H1)),'-g')
plot(w/(2*pi),unwrap(angle(H2)),'-b')
plot(w/(2*pi),unwrap(angle(H3)),'-k')
grid on

figure(4);
hold on
[Z,P,K] = TF2ZP(B,A);
[Z1,P1,K1] = TF2ZP(B1,A1);
[Z2,P2,K2] = TF2ZP(B2,A2);
[Z3,P3,K3] = TF2ZP(B3,A3);

nyquist(tf(B,A),'-r')
nyquist(tf(B1,A1),'-g')
nyquist(tf(B2,A2),'-b')
nyquist(tf(B3,A3),'-k')

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
%%
%figure(6)
%HH=freqs_lab(A,B,w);
%plot(w,HH)