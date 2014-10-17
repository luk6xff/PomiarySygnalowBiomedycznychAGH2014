f=10;
fp=1000;
T=1;
A=1;
Tp=1/fp;
N=2/Tp;
n=0:(N-1);
t=n/fp;

x=A*exp(-t/T).*sin(2*pi*f*t);
obw=A*exp(-t/T);
s=A*(1-(1/T)*t);

plot(t,x,t,s,t,obw);
