close all; clear all; clc

I =imread('cameraman.tif');
I=double(I);
%I=I./256;
I=I-mean(I(:))
h=fft2(I);
h1=fftshift(h);
hm=h1-mean(mean(h1));
N=length(I);

takasobiezmienna=zeros(N,N);
I2=[I takasobiezmienna,takasobiezmienna takasobiezmienna];
h2=fft(I2);

hi2=fftshift(I2);
figure(1)
imagesc(20*log10(abs(h1)))

figure(2)
imagesc(abs(h1))
