N=90;
omegag=pi/8;
n=-N:-1; hlp0=(sin(omegag*n))./(pi*n);
n=1:N; hlp01=(sin(omegag*n))./(pi*n);
hlp=[hlp0,omegag/pi,hlp01];
h=hann(2*N+1)'.*hlp;
n=-N:N;
plot(n,hlp,n,h)
H1=[];
H3=[];
for omega=-pi:0.01:pi
H=sum(exp(-i*omega.*n).*h)
H1=[H1,H];
end
for omega=-pi:0.01:pi
H2=sum(exp(-i*omega.*n).*hlp)
H3=[H3,H2];
end
omega=[-pi:0.01:pi]
plot(omega,abs(H1),omega,abs(H3))

clear