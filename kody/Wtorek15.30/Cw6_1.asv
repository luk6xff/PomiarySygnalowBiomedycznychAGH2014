clear all, close all, clc;
N=32;
n=[0:1:N-1];
k=[0:1:N-1];
x=cos(pi/8*n);
for  n=0:1:N-1;
        for  k=0:1:N-1;
             end
         end
X=x*exp(-j*(2*pi/N)*k*n);
Y=(1/N)*X*exp(j*(2*pi/N)*k*n);
fft(X),'.-r';
abs(X),'.-b';
figure(1);
plot(abs(X),'.-r');
figure(2);
plot(abs(fft(x)),'.-b');
fft(Y),'.-r';
abs(Y),'.-b';
figure(3);
plot(abs(Y),'.-y');
figure(4);
plot(abs(fft(Y)),'.-g');
figure(5);
plot(x)