close all, clear all, clc
M=500;
Fs=4e3;
% h1, h2 - filtry dolnoprzepustowe
fpass1=800;
fpass2=1200;
f=-Fs/2:1:Fs/2;
wc1=pi*fpass1/(Fs/2);
wc2=pi*fpass2/(Fs/2);
n=1:M; h1=sin(wc1*n)./(pi*n); h1=[fliplr(h1) wc1/pi h1];
h2=sin(wc2*n)./(pi*n); h2=[fliplr(h2) wc2/pi h2];
Hw1=freqz(h1,1,f,Fs);
Hw2=freqz(h2,1,f,Fs);
hall=zeros(size(h1)); %filtr wszechprzepustowy
hall(M+1)=1;
hgp=hall-h2;% odjecie od wszechprzepustowego: dolnoprzepustowego 2 daje gorno przepustowy
Hwgp=freqz(hgp,1,f,Fs);
hbp=hall-h1-hgp; % odjecie od wszechprzepustowego -dolnoprzepustowego 1 i gornoprzepustowego 2 daje Band pass
Hwbp=freqz(hbp,1,f,Fs);
hbs=hall-hbp;% wszechprzep- bandstop= band pass.
hbs=hbs(:).*hamming(length(hbs)); % okno haminga t³umi na krawedziach.
Hwbs=freqz(hbs,1,f,Fs);

figure(1) 
        subplot(3,1,1)
        stem(h1)
            xlabel('n')
            ylabel('h[n]')
            axis tight, box on
        subplot(3,1,2),hold on
            plot(f,abs(Hw1))
             plot(f,abs(Hw2),'g')
             plot(f,abs(Hwgp),'r')
             plot(f,abs(Hwbp),'k')
            xlabel('f[Hz]')
            ylabel('|H(e^j^/omega|')
            axis([0 Fs/2 0 1.2]), box on
            
            subplot(3,1,3)
                plot(f,20*log10(abs(Hw1)))
                xlabel('f[Hz]')
                ylabel('|H(c^j^/omega|[dB]')
                axis([0 Fs/2 -70 5]), box on
  figure(2) 
        subplot(3,1,1)
        stem(hbs)
            xlabel('n')
            ylabel('h[n]')
            axis tight, box on
        subplot(3,1,2),hold on
           
             plot(f,abs(Hwbs),'k')
            xlabel('f[Hz]')
            ylabel('|H(e^j^/omega|')
            axis([0 Fs/2 0 1.2]), box on
            
            subplot(3,1,3)
                plot(f,20*log10(abs(Hwbs)))
                xlabel('f[Hz]')
                ylabel('|H(c^j^/omega|[dB]')
                axis([0 Fs/2 -70 5]), box on
   