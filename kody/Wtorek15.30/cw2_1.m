close all, clear all, clc
x=[1 2 3];
h=[-2 5 0 2];
y1=splot_lab1(x,h);
y2=conv(x,h);
plot(y1-y2,'.-')