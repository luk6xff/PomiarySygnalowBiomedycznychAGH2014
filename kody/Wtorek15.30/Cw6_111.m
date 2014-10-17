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
hold on
plot(abs(X),'.-r');
plot(abs(fft(x)),'.-b');
fft(Y),'.-r';
abs(Y),'.-b';
plot(abs(Y),'.-y');
plot(abs(fft(Y)),'.-g');
plot(x),'.-o'