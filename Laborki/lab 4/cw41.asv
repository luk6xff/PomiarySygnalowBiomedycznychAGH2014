clear all, close all, clc
Rp=1;
Rs=30;
Fs=4000;
f_pass=800;
f_stop=1200;
Wp=f_pass/(Fs/2);
Ws=f_stop/(Fs/2);


[n,Wn]=buttord(Wp,Ws,1,30)
[z,p,k]=butter(n,Wn,'low');
[a_b,b_b]=zp2tf(z,p,k);
G=tf(a_b,b_b)

[n1,Wn1] = cheb1ord( Wp, Ws, Rp, Rs)
[a_c1,b_c1]=cheby1(n1,Rp,Wn1,'low');

[n2,Wn2] = cheb2ord( Wp, Ws, Rp, Rs)
[a_c2,b_c2]=cheby2(n2,Rs,Wn2,'low');

[n3,Wn3] = ellipord( Wp, Ws, Rp, Rs)
[a_e,b_e] = ellip(n3, Rp, Rs, Wn3, 'low');

[H,f]=freqz(a_b,b_b,1e3,Fs);

[H1,f1]=freqz(a_c1,b_c1,1e3,Fs);

[H2,f2]=freqz(a_c2,b_c2,1e3,Fs);

[H3,f3]=freqz(a_e,b_e,1e3,Fs);

figure(1)
hold on
grid on
plot(f,20*log10(abs(H)))
plot(f,20*log10(abs(H1)),'r')
plot(f,20*log10(abs(H2)),'g')
plot(f,20*log10(abs(H3)),'k')
axis([0 Fs/2 -100 10])
xlabel('Hz')
ylabel('dB')
hold off
grid off