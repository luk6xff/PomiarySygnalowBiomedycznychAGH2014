close all, clear all  clc
M=1:100;
Fs=4e3; %Hz
fpass=0.8e3; %Hz
fpass2=1.2e3;
F1=fpass/(Fs/2);
F2=fpass2/(Fs/2);
W=[F1 F2];
wc=pi*fpass/(Fs/2); %[rad]
f=-Fs/2:1:Fs/2;
for k=1:length(M)
n=1:M(k); h= sin(wc*n)./(pi*n);

b=fir1(k,W,'bandpass'); b=[fliplr(b) wc/pi b];
b = b(:).*hamming(length(b));
Hw=freqz(b,1,f,Fs);
figure(1)
subplot(3,1,1)
stem(b)
xlabel('n')
ylabel('h[n]')
axis tight, box on
subplot(3,1,2)
plot(f,abs(Hw))
xlabel('f [Hz]')
ylabel('|H(e^j^\omega)|')
%axis([min(f) max(f) 0 1.2]), box on
%axis([0 1.2*fpass 0 1.2]), box on
subplot(3,1,3)
plot(f,20*log10(abs(Hw)))
xlabel('f [Hz]')
ylabel('|H(e^j^\omega)| [dB]')
%axis([min(f) max(f) -70 5]), box on
%axis([0 1.2*fpass -70 5]), box on
drawnow 

end