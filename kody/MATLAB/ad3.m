close all
clear all
clc

% Poprawa rozdzielczoœæ przez wyd³u¿enie obserwacji
Nx =[256:4:2000];
Nfft = 2048;
f1=20; A1=1; fi1=pi/7;
f2=23; A2=1; fi2=0;
Fs=1000;
f=(0:Nfft-1)*(Fs/Nfft);
for k=1:length(Nx)
 t=(0:Nx(k)-1)/Fs;
 x1=A1*sin(2*pi*f1*t+fi1);
 x2=A2*sin(2*pi*f2*t+fi2);
 x=x1+x2;
 w=hamming(length(x)); x=x(:).*w; x=x/mean(w);
 Xw=fft(x,Nfft); Xw=2*Xw/Nx(k); Xw(1)=Xw(1)/2;
 plot(f,abs(Xw),'.-');
 title(['N=' num2str(Nx(k),'%2.0f')])
 xlabel('f [Hz]')
 ylabel('|X(e^j^\omega)|')
 axis([10 30 0 1.2]), grid on
 drawnow
end

spectrogram(x)