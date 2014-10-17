clear all, close all, clc
N=100;
xn=cos(0.1*[0:N-1]);


for k=1:N
    %X(k)=0;
    for n=1:N
        Wn(k,n)=exp(-j*(2*pi/N)*(k-1)*(n-1));      
    end
end

xn=xn(:);
X=Wn*xn; 

Wn1=conj(Wn);
x=(1/N)*Wn1*X; 

hold on

plot(abs(X),'g-')
plot(abs(x),'r')
  

  