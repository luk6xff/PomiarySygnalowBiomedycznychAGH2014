clc; clear all; close all;
t=0.001:0.001:1;
a=1;
f=10;
x=a*sin(2*pi*t*f);

[c,d,P,U]=lwt_lab(x,1,1,1);

figure(1)
hold on
plot(c,'*-')
plot(d,'*-r')