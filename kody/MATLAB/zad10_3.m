close all, clear all, clc

h = fir1(20,0.5); 
x = randn(1,500); 
d = conv(x,h); 
d = d + 0.1*randn(size(d)); 
hlms=5;
mi=0.01;

[hrls, h_n, e_n]=rls_lab(x,d,zeros(1,20),0.1);

figure (1);
subplot(2,1,1);
plot(hrls,'r');
subplot(2,1,2);
plot(h,'g');

[hlms, h_n, e_n]=lms_lab(x,d);
figure (2);
subplot(2,1,1);
plot(h_n,'r');
subplot(2,1,2);
plot(e_n,'g');
