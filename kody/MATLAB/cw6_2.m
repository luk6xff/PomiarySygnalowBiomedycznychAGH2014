clear all, close all, clc
N=32;
xn=cos(pi/8*[0:N-1]);


for k=1:N
    %X(k)=0;
    for n=1:N
        Wn(k,n)=exp(-j*(2*pi/N)*(k-1)*(n-1));      
    end
end

xn=xn(:);
X=Wn*xn; %widmo
  

Wn1=conj(Wn);
x=(1/N)*Wn1*X; %sygnal rekonstruowany z widma


figure(1)
hold on
plot(abs(fft(xn)),'o-')

plot(abs(X),'x-')
plot(abs(x),'r')
e=X-fft(xn);
figure(2)
plot(abs(e),'g')