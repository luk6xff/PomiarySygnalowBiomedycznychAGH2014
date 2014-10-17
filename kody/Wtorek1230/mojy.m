close all, clear all, clc
%% Projektowanie filtra cylindrycznego w dziedzinie DFT
N = 256; %rozmiar widma 2*N x 2*N
w = pi/4; %czêstotliwoœæ odciêcia [rad]
R = N*w/pi;
Hw=zeros(2*N,2*N);
for k1=1:2*N
for k2=1:2*N
promien=sqrt((N-k1+1)^2+(N-k2+1)^2);
if promien<R
Hw(k1,k2)=1;
end
end
end
%Hw=~Hw; %FGP
phi1=exp(-j*(1:2*N)*pi); %liniowa faza
phi2=exp(-j*(1:2*N)*pi); %liniowa faza
Hw=Hw.*(phi1(:)*phi2);
hr=ifft2(fftshift(Hw));
hr=real(hr);
%% sprawdzenie
Nh = 8; %rozmiar filtra 2*Nh x 2*Nh
k1 = 64; %rozmiar widma
h = hr(N-Nh+1:N+Nh,N-Nh+1:N+Nh); %fragment odpowiedzi impulsowej
h=h.*(hamming(2*Nh)*hamming(2*Nh)'); %okno czasowe
hz=zeros(k1,k1); hz(1:2*Nh,1:2*Nh)=h; %zagêszczenie próbkowania osi czêstotliwoœci
Hzw=fft2(hz);
Hzw=fftshift(Hzw);
w=2*pi*((0:k1-1)-k1/2)/k1;
figure
surf(h)
xlabel('n_1'), ylabel('n_2'), zlabel('h[n_1,n_2]')
axis tight, box on
figure,
surf(w,w,abs(Hzw)), alpha(0.5)
xlabel('\omega_1'), ylabel('\omega_2')
zlabel('|X(\omega_1,\omega_2)|')
axis tight, box on