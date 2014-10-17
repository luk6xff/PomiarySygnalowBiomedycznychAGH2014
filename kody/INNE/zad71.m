close all
clear all
clc
Nx=256;
f1=50;
f2=150;
w1=2*pi*f1;
w2=2*pi*f2;
Fs=1000;
n=0:Nx-1;

x1=sin(w1*(n/Fs));
x2=sin(w2*(n/Fs));
x=x1+x2;

%filtr fir
N=21;
Fn=100;
Wn=100*2*pi;
b=fir1(N,0.2,'low');
y1=filter(b,1,x);
%filtr iir
Nc=5;
Rp=100;
Wp=0.2;
[Bc,Ac]=cheby1(Nc,Rp,Wp,'low');
y2=filter(Bc,Ac,x);

wi1=fft(y1);
wi2=fft(y2);


%figure(1)
%plot(n,x1)
%figure(2)
%plot(n,x2)
figure(3)
plot(n,x)
figure(4)
plot(y1)
figure(5)
plot(y2)
figure(6)
plot(abs(wi1))
figure(7)
plot(abs(wi2))
figure(8)
bode(y1,Wn)