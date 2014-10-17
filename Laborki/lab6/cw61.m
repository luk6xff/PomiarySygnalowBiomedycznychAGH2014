clear all, close all, clc
N=100;
xn=6*cos(0.1*[0:N-1])+2*sin(0.5*[0:N-1]);


for k=1:N
    X(k)=0;
    for n=1:N
       
    X(k)=xn(n)*exp(-j*(2*pi/N)*(k-1)*(n-1))+X(k);
   
    end
end

for n=1:N
    x(n)=0;
    for k=1:N
 x(n)=(1/N)*xn(k)*exp( j*2*pi*(k-1)*(n-1)/N)+x(n);
    end 
end

figure
hold on
plot(abs(fft(xn)),'o-')

plot(abs(X),'x-') 

 