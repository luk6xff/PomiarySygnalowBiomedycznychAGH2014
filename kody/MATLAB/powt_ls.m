clear all, close all, clc

N=50;

u=linspace(0,5,N);
beta1=2;
beta0=3;

y0=beta1*u.^2+beta0;
y=y0+randn(1,N);

u1=[(u.^2)' ones(N,1)];
b=inv(u1'*u1)*u1'*y';

plot(beta0,beta1,'*r')
hold on
NP=200;
uz=0;
sz=1;
for k=1:NP
    ez=randn(1,N)*sz+uz;
    y=y0+ez;
    bb=inv(u1'*u1);
    b=(bb*u1')*y';
    B1(k)=b(1);
    B0(k)=b(2);
end

plot(B0,B1,'x')