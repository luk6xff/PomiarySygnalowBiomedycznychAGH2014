clc;
close all; clear all;

N=32;
xn=cos(0.5*[0:N-1]);

for k=1:N
    for n=1:N
        Wn(k,n)=exp((-j*(2*pi)/N)*(k-1)*(n-1));
    end
end

xn=xn(:);
X=Wn*xn; 
Wn1=conj(Wn);
x=(1/N)*Wn1*X; 

hold on
plot(abs(fft(xn)),'-g');
plot(abs(X),'*b');
plot(abs(x),'--r');