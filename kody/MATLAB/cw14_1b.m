close all 
clear all
clc

I=imread('cameraman.tif');
I=double(I);
I=I-mean(I(:));

X=fft2(I,512,512);
X2=fftshift(X);

figure(1)
imagesc(20*log10(abs(X))),colorbar
figure(2)
imagesc(20*log10(abs(X2))),colorbar, 
figure(3)
imagesc(abs(X)),colorbar, 
figure(4)
imagesc(abs(X2)),colorbar, 

w1=hamming(256);
w2=w1';
w=w1*w2;
a=I.*w;

A=fft2(a);
%figure(5)
%surf(w);

%figure(6)
%imagesc(20*log10(abs(A))),colorbar
figure(7)
imagesc(a), colormap gray
figure(8)
imagesc(20*log10(abs(a))),colorbar

Ir=ifft2(fft2(I,512,512))
figure(9)
image(Ir),colormap gray