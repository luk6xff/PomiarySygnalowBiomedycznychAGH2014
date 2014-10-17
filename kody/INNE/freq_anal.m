%przyk�ad doboru parametrow okna Kaisera dla analizy cz�stotliwo�ciowej o
%rozdzielczo�ci cz�stotliwo�ciowej Df i amplitudowej Da = 60 dB
clear all; close all;

Df = 1;  	%Hz
Da = 60;	%dB
fp = 100; 	%Hz
Asl = Da+20; 	%+20dB zapasu
Dml = 2*pi*(Df/fp); %unormowanie i przeliczenie z Hz na rad

if(Asl < 13.26)
	Beta = 0;	
elseif(Asl < 60 )
	Beta = 0.76609*(Asl - 13.26)^0.4 + 0.09834*(Asl - 13.26);
else
	Beta = 0.12438*(Asl + 6.3);
end

N = floor(24*pi*(Asl+12)/(155*Dml))+1
h = kaiser(N, Beta)'; %h = h/(h*h');
%h = blackman(N)';
%h = boxcar(N)';
%h = hamming(N)';

f1 = 2;
f2 = f1+1;
n = 0:N-1;
x = sin(2*pi*f1/fp*n) + 0.001*cos(2*pi*f2/fp*n);
	
X = fft(x .* h);
W = linspace(0,fp,length(X));
X = 20*log10(abs(X));
figure;
plot(W, X); grid on; title('analiza Fouriera sygnalu'); xlabel('czestotliwosc [Hz]'); ylabel('amplituda [dB]');

W = linspace(0,10,1000); %tylko cz�stotliwo�ci z wybranego zakresu, 1000 punkt�w
X = freqz(x.*h, 1, W, fp);
X = 20*log10(abs(X));
figure;
plot(W, X, 'LineWidth', 2); grid on; title('FREQZ'); xlabel('czestotliwosc [Hz]'); ylabel('amplituda [dB]');
