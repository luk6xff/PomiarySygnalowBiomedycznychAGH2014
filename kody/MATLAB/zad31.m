clear all
clc

f_pass = 1000; %Hz 
f_stop = 1500; %Hz
r_p = 1; %dB;
r_s = 30; %dB

Wp=2*pi*f_pass
Ws=2*pi*f_stop

Wpx=Wp

[n,Wn]=buttord(Wp,Ws,r_p,r_s,'s');

[B,A]=butter(n,Wn,'s');

f=0:10:2000;
w=2*pi*f;
hold on;
[H,w]=freqs(B,A,w);
plot(w/(2*pi),20*log10(abs(H)),'.-')
grid on;

[n,Wp]=CHEB1ORD(Wp,Ws, r_p, r_s,'s');
[B,A]=CHEBY1(n,0.1,Wp,'s');
[H,w]=freqs(B,A,w);
plot(w/(2*pi),20*log10(abs(H)),'r');
grid on;


[n,Wp]=CHEB2ORD(Wp,Ws, r_p, r_s,'s');
[B,A]=CHEBY2(n,30,Wp,'s');
[H,w]=freqs(B,A,w);
plot(w/(2*pi),20*log10(abs(H)),'b');
grid on;



[n,Wn]=ellipord(Wpx,Ws, r_p, r_s,'s');
%[N, Wp] = ELLIPORD(Wp, Ws, Rp, Rs, 's')

[B,A]=ellip(n,r_p,r_s,Wn,'s');
[H,w]=freqs(B,A,w);
plot(w/(2*pi),20*log10(abs(H)),'k');
grid on;

legend('Butterworth','Czebyszewa 1','Czebyszewa 2','Elliptyczna')
