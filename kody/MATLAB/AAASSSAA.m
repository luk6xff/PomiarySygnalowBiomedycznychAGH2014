close all
clear all
clc

f=100;
f2=75;
Nx=256;
Fs1=1000;
Fs2=1200;
fi=pi/8;

t=(0:Nx-1)/Fs1;
x=sin(2*pi*t*f+fi)+sin(2*pi*t*f2+fi);
t1=(0:length(x)-1)/Fs1;
plot(t1,x,'-*')
hold on
ylabel('amplituda')
xlabel('czas (sekundy)')
axis([0 0.26 -2 2])

y=resample(x,Fs2,Fs1);
t2=(0:length(y)-1)/Fs2;
plot(t2,y,'o-m')

