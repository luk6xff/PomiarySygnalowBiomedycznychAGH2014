close all, clear all, clc
% Splot sekcjonowany metoda overlap-add
Nx=256;
f1=50; A1=1; fi1=pi/7;
f2=150;A2=2; fi2=0;
Fs=1000;
t=(0:Nx-1)/Fs;
x1=A1*sin(2*pi*f1*t+fi1);
x2=A2*sin(2*pi*f2*t+fi2);
x=x1+x2; %sygna³ testowy
h=fir1(21,100/(Fs/2)); %filtr FDP
Nh=length(h);
y1=conv(h,x); %poprawny wynik
%% obliczenia
L=32; %d³ugoœæ sekcji >= Nh
L=max([L,Nh]);
nL=ceil(Nx/L); %liczba sekcji
x =[x zeros(1,nL*L-length(x))];
Ny=Nh+L-1;
hz=zeros(1,Ny);
hz(1:Nh)=h;
Hw=fft(hz); %widmo h[n] jest liczone tylko raz!!!
y=zeros(1,Nh+length(x)-1);
for k=1:nL
xz=zeros(1,Ny);
ind=1+(k-1)*L;
xz(1:L)=x(ind:ind+L-1);
Xw=fft(xz);
ys=ifft(Xw.*Hw); %wynik splotu liniowego dla sekcji
ind=1+(k-1)*L;
y(ind:ind+Ny-1)=y(ind:ind+Ny-1)+ys;
end
y=y(1:Nx+Nh-1);
blad=sum(abs(y1-y)) %sprawdzenie przez porównanie z funkcj¹ Matlaba conv
figure
subplot(3,1,1), hold on
plot(x1,'r')
plot(x2,'k')
legend('x_1','x_2')
axis tight
subplot(3,1,2)
plot(x,'b')
legend('x_1+x_2')
axis tight
subplot(3,1,3), hold on
plot(x1,'r')
plot(y,'b')
legend('x_1','y')
axis tight