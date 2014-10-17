T=1;
t=linspace(0,T,100);
z=sqrt(2/T)*cos(((2*pi)/T)*(1*t));
x=sqrt(2/T)*cos(((2*pi)/T)*(1*t));
dt=t(2)-t(1);
p=dt*sum(z(1:end-1)*x(1:end-1)')
figure(1)
plot(t,z,t,x)

z1=1/(sqrt(T))*exp(i*((2*pi)/T)*2*t);
z2=1/(sqrt(T))*exp(i*((2*pi)/T)*t);
p2=dt*sum(z1(1:end-1)*conj(z2(1:end-1)'))
figure(2)
plot(real(z1))
figure(3)
plot(imag(z1)) 