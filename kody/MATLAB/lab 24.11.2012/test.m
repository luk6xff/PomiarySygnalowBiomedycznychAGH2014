clc
clear all
close all
global x y Ym J
x=-5:1:3;
a=1;
b=2;
c=1;
y=a*x.^2+ b*x + c;


plot(x,y, '*')

pause

wsp=fminsearch('model',[2 0 1 3]) 