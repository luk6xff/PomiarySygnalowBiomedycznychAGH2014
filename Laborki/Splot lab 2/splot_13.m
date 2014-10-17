clear all, close all, clc
h=100*randn(1,10);
x=100*randn(1,100);
y1=splot_1(x,h);
y2=conv(x,h);
figure(1), hold on
plot(y1,'.-b')
plot(y2,'o-r')
hold off
figure(2)
plot (y1-y2)
axis tight