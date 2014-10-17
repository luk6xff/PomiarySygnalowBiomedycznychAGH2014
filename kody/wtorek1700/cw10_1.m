clc;
clear all;
close all;

h=fir1(10,0.5);
x=rand(1,100)
d=conv(x,h);
d=d+0.1*randn(size(d));
mi=0.01;
hrls=1;
hlms=1;
delt=0.01;
hrls=zeros(1,1)
hlms=zeros(1,1)

[hrls,h_n,e_n]=rls_lab(x,d,hrls,delt);
[hlms,h_nn,e_nn]=lms_lab(x,d,hlms,mi);
figure(1)
hold on
plot((h_n),'o-b')
plot((h_nn),'o-r')


figure(2)
hold on
plot((e_nn),'.-b')
plot((e_n),'.-r')

