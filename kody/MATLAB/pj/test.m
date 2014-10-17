f=100 %Hz
N=256
A=5
fi=pi/17 
Fs1=1e3 %Hz
Fs2=1.2e3 %Hz
t=(0:N-1)/Fs1
ts=(0:N-1)/Fs2
x1=A*sin(2*f*pi*t+fi)
x2=
plot(t,x1,'.-')
hold on
plot(ts,x2,'.-')

