close all, clear all, clc
% Rozdzielczoœæ amplitudowa
Nx =256;
Nfft = 2048;
f1=20; A1=1; fi1=pi/7;
f2=24; A2=0:0.01:1; fi2=0;
Fs=1000;
t=(0:Nx-1)/Fs;
f=(0:Nfft-1)*(Fs/Nfft);
x1=A1*sin(2*pi*f1*t+fi1);
for k=1:length(A2)
    x2=A2(k)*sin(2*pi*f2*t+fi2);
    x=x1+x2;
    Xw=fft(x,Nfft); Xw=2*Xw/Nx; Xw(1)=Xw(1)/2;
    plot(f,abs(Xw),'.-');
    title(['A_2=' num2str(A2(k),'%2.2f')])
    xlabel('f [Hz]')
    ylabel('|X(e^j^\omega)|')
    axis([0 50 0 1.5]), grid on
    drawnow
end