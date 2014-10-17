clear all
clc

f_pass = 1000; %Hz 
f_stop = 1500; %Hz
r_p = 1; %dB;
r_s = 30; %dB
f_s=4000;

Wp=2*f_pass/f_s;
Ws=2*f_stop/f_s;

Wpx=Wp

[n,Wn]=buttord(Wp,Ws,r_p,r_s);

[B,A]=butter(n,Wn);

hold on;
[H,f]=freqz(B,A,1000, f_s);

plot(f,20*log10(abs(H)),'.')
grid on;

[n,Wp]=CHEB1ORD(Wp,Ws, r_p, r_s);
[B,A]=CHEBY1(n,0.1,Wp);
[H,w]=freqz(B,A,1000, f_s);
plot(f,20*log10(abs(H)),'r');
grid on;


axis ([0 f_s/2 -40 10])


legend('Butterworth','Czebyszewa 1')
