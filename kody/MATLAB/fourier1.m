T=1
t=linspace(0,T,100);
n=1
dt=t(2)-t(1)
f1=1/sqrt(T)
f2=sqrt(2/T)*cos((2*pi)/T)*t
s=dt*sum(f1(1:end-1)*f2(1:end-1))
