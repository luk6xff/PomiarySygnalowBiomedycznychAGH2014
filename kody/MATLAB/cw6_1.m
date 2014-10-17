clear all, close all, clc
N=512;
%xn=cos((pi/8)*[0:N-1]);
xn=randn(1,N);

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


        a=X-fft(xn);


figure(1)
hold on
plot(abs(fft(xn)),'o-')

plot(abs(X),'r')
figure(2)
plot(abs(a),'g')
