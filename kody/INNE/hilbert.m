clear all
close all
clc
N=20;
w=linspace(-pi,pi,1000);

n=-N:-1;
hn=(1./(pi.*n)).*(1-(-1).^n);
n=1:N;
hp=(1./(pi.*n)).*(1-(-1).^n);

h=[hn,0,hp];

n=-N:N;

h=h.*hamming(2*N+1)';
figure(1)
stem(n,h)

%chaka czestotliwosciowa

for i=1:1000
H(i)=sum(h.*exp(-j*w(i)*n));
end
figure(2)
plot(abs(H))
figure(3)
plot(angle(H))

%dalsza czesc
fp=1000;
f=100;
n=0:10*N;
x=sin(2*pi*f/fp*n);
xr=[zeros(1,N)]
y=filter(h,1,x)

xd=[xr, x(1:end-N)];
xa=xd+j.*y;

figure(4)
plot (xa)














