clear;

f1= 50;
f2 = 150;
fs = 1000;
fc = 100;
n = 1:256;
N = 51;

x = sin(2*pi*f1*n/fs) + sin(2*pi*f2*n/fs);
B = fir1(N, fc/(fs/2));

%freqz(B,1,1e3,fs)

C = conv(B,x);
%Y = filter(B,1,x);

C = C(1:end-N);

plot(1:length(C), C, 1:length(x), x)


