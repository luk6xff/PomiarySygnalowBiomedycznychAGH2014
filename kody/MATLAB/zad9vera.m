fp=8000
f0=990
w0=2*pi*(f0/fp)
b1=0.99*exp(i*w0);
b2=conj(b1);
p=poly([b1,b2])
freqz(1,p)





N=256;
n=0:N;
H1=[]
for omega=0:0.01:pi
    H=1/(sum(exp(-i*omega.*n)*p));
    H1=[H1,H];
end
omega=0:0.01:pi 
figure
plot(omega/pi,20*log10(abs(H1)))