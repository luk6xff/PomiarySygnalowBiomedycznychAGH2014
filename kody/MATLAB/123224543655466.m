clear all, close all, clc

A=5
DC=1
f=20 %Hz
fs=100 %Hz próbkowania
Xn=DC+Asin(2*pi*f*t)

N1=32
N2=64

hz=zeros(1:N2)
hn(1:N1)=Xn
Y1=fft(hn)
