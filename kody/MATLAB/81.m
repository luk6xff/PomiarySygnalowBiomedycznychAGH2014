clear all, close all, clc
Nx=32
A=5
DC=1
f=20 %Hz
fs=100 %Hz próbkowania
t=(0:Nx-1)/fs
ts=(0:Nx-1)/fs
x=DC+Asin(2*pi*f*t)
N1=32
N2=64

hn(1:t1:N1)=Xn
Y1=fft(hn)


plot(fft(x))