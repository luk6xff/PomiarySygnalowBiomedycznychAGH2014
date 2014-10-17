clear all, close all, clc

N=50;

u=linspace(0,5,N);
beta1=2;
beta0=3;

y0=beta1*u.^2+beta0;
y=y0+randn(1,N);

figure
plot(u,y,'*')
hold on

u1=[(u.^2)' ones(N,1)];
b=inv(u1'*u1)*u1'*y';

b1=b(1);
b0=b(2);

ym=b1*u.^2+b0;

plot(u,ym,'r')