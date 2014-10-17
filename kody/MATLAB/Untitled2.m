clear all
close all
clc

Rp=1;
Rs=30;
fpass=1000;
fstop=1500;

Wp=2*pi*fpass;
Ws=2*pi*fstop;
w=(0:10:2e3)*2*pi;

[Nb, Wnb]=BUTTORD(Wp,Ws,Rp,Rs,'s');
[Bb,Ab]=BUTTER(Nb,Wnb,'s');
Hb=FREQS(Bb,Ab,w);
W=w/(2*pi);
hold on
plot(W,20*LOG10(abs(Hb)),'r')
grid on
xlabel('f [Hz]')
ylabel('|H(jw)| [dB]')
disp('Hbutter:')
Hbutter=tf(Bb,Ab)

[Nc1,Wpc1] = CHEB1ORD(Wp,Ws,Rp,Rs,'s');
[Bc1,Ac1] = CHEBY1(Nc1,Rp,Wpc1,'s');
Hc1=FREQS(Bc1,Ac1,w);
plot(W,20*LOG10(abs(Hc1)),'g')
disp('Hcheby1:')
Hcheby1=tf(Bc1,Ac1)

[Nc2,Wsc2]=CHEB2ORD(Wp,Ws,Rp,Rs,'s');
[Bc2,Ac2]=CHEBY2(Nc2,Rs,Wsc2,'s');
Hc2=FREQS(Bc2,Ac2,w);
plot(W,20*LOG10(abs(Hc2)),'m')
disp('Hcheby2:')
Hcheby2=tf(Bc2,Ac2)

[Ne,Wpe]=ELLIPORD(Wp, Ws, Rp, Rs,'s');
[Be,Ae]=ELLIP(Ne,Rp,Rs,Wpe,'s');
He=FREQS(Be,Ae,w);
plot(W,20*LOG10(abs(He)),'b')
disp('Hellip:')
Hellip=tf(Be,Ae)
[Ze,Pe,Ke]=tf2zp(Be,Ae)
figure2