clear all, close all, clc
Rp=1;
Rs=30;
Wp=2*pi*1000;
Ws=2*pi*1500;
F=0:10:2e3;
W=2*pi*F;

[n,Wn]=buttord(2*pi*1000,2*pi*1500,1,30,'s')
[z,p,k]=butter(n,Wn,'s');
[a,b]=zp2tf(z,p,k);
G=tf(a,b)
Gzp=zpk(z,p,k)

[n1,Wn1] = cheb1ord( Wp, Ws, Rp, Rs, 's')
[c,d]=cheby1(n1,Rp,Wn1,'s');

[n2,Wn2] = cheb2ord( Wp, Ws, Rp, Rs, 's')
[e,f]=cheby2(n2,30,Wn2,'s');

[n3,Wn3] = ellipord( Wp, Ws, Rp, Rs, 's')
[g,h] = ellip(n3, Rp, Rs, Wn3, 's');

[H,W]=freqs(a,b,W);
[Hc1,W]=freqs(c,d,W);
[Hc2,W]=freqs(e,f,W);
[He,W]=freqs(g,h,W);
figure
hold on
grid on
plot(W/(2*pi),20*log10(abs(H)))
plot(W/(2*pi),20*log10(abs(Hc1)),'r')
plot(W/(2*pi),20*log10(abs(Hc2)),'g')
plot(W/(2*pi),20*log10(abs(He)),'k')
xlabel('Hz')
ylabel('dB')


%figure(1);
%grid on
%freqs(a,b)
%title('Filtr Butterwortha')

%figure(2);
%freqs(c,d)
%title('Filtr Czebyszewa I')

%figure(3);
%freqs(e,f)
%title('Filtr Czebyszewa II')
%figure(4);
%freqs(g,h)
%title('Filtr Eliptyczny')
%grid off

%figure(5);
%hold on
%grid on

%freqs(a,b)
%freqs(c,d)
%freqs(e,f)
%freqs(g,h)

%hold off
%grid off



figure(7) 
grid on
zplane(a,b)
title('Filtr Butterwortha')

figure(8) 
grid on
zplane(c,d)
title('Filtr Czebyszewa I')

figure(9) 
grid on
zplane(e,f)
title('Filtr Czebyszewa II')

figure(10) 
grid on
zplane(g,h)
title('Filtr Eliptyczny')
%figure(10)
%hold on
%bode(a,b)
%bode(c,d)
%bode(e,f)
%bode(g,h)

