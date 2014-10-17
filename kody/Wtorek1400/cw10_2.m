 close all
 clear all
 clc
 t=1:0.01:10;
A=1;
f=1;
d=A*sin(2*pi*t*f);
x=A*sin(2*pi*t*f)+0.3*sawtooth(10*t);
hlms=3;
mi=0.01;
[hlms,h_n,e_n]=rls_lab(x,d,hlms,mi);
