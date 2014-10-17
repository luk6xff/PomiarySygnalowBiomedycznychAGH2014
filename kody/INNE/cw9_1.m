close all; clear all; clc

%% parametry
N=265;
f=100;
Fs1=1000;
Fs2=1200;
fi=pi/4;
p=6;
q=5;

%% obliczenia

t1=(0:N)/Fs1;
t2=(0:N)/Fs2;
x=sin(2*pi*f*t1+fi);
y=resample(x,p,q);

%% wizualizacja

plot(t1,x,'b-o');
hold on
plot(t2,y,'r-');
xlabel('t[s]');