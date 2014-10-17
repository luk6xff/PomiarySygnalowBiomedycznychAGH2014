close all, clear all, clc
 M=1:100;
 Fs=4e3; %Hz
 fpass=1e3; %Hz
 wc=pi*fpass/(Fs/2); %[rad]
 f=-Fs/2:1:Fs/2;
 for k=1:length(M)
 n=1:M(k); h= sin(wc*n)./(pi*n); h=[fliplr(h) wc/pi h];
 h = h(:).*hamming(length(h));
 Hw = freqz(h,1,f,Fs);
 hall=zeros(size(h));
 hall(101)=1;
 Hall = freqz(hall,1,f,Fs);
 Hw=Hw-Hall;
 figure(1)
 subplot(3,1,1)
 stem(h)
 xlabel('n')
 ylabel('h[n]')
 axis tight, box on
 subplot(3,1,2)
 plot(f,abs(Hw))
 xlabel('f [Hz]')
 ylabel('|H(e^j^\omega)|')
 axis([min(f) max(f) 0 1.2]), box on
 axis([0 1.2*fpass 0 1.2]), box on
 subplot(3,1,3)
 plot(f,20*log10(abs(Hw)))
 

 xlabel('f [Hz]')
 ylabel('|H(e^j^\omega)| [dB]')
 %axis([min(f) max(f) -70 5]), box on
 %axis([0 1.2*fpass -70 5]), box on
 drawnow
 
 
end