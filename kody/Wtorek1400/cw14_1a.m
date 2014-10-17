clc
close all
clear all
I=checkerboard(60,2,2);
%I=imread('cameraman.tif'); I=(double(I))./256;
h=fft2(I); %h=h./151.8125;
hi=fftshift(h);
Im=I-mean(mean(I));
hm=fft2(Im);
hm=fftshift(hm);
N=length(I);
ulala=zeros(N,N);
I2=[I ulala; ulala ulala];
h2=fft2(I2); %h2=h2./151.8125;
hi2=fftshift(h2);
figure(1)
imagesc(20*log10(abs(hi)))
axis tight, box on, colorbar
figure(2)
imagesc(20*log10(abs(hm)))
axis tight, box on, colorbar
figure(3)
imagesc(20*log10(abs(hi2)))
%imagesc(abs(hi2))
axis tight, box on, colorbar
Nh=8;
I3=I.*(hamming(N)*hamming(N)');
jsdhf=fft2(I3);
fjasd=fftshift(jsdhf);
figure(4)
imagesc(20*log10(abs(fjasd)))
axis tight, box on, colorbar