clear all; close all;
clc;

N=32;
xn=cos(0.5*[0:N-1]);

for k=1:N
    X(k)=0;
    for n=1:N 
    X(k)=xn(n)*exp(-j*(2*pi/N)*(k-1)*(n-1))+X(k);
    end
end

% for n=1:N
%     x(n)=0;
%     for k=1:N
%  X(n)=(1/N)*xn(k)*exp( j*2*pi*(k-1)*(n-1)/N)+x(n);
%     end
% end


figure(1)
hold on
plot(abs(fft(xn)),'o-')
plot(abs(X),'.r')


