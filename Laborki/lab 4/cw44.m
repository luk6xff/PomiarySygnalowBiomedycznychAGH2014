clear all, close all, clc
Rp=1;
Rs=30;
Fs=4000;
f_pass=800;
f_stop=1200;
Wp=f_pass/(Fs/2);
Ws=f_stop/(Fs/2);
x=[1 zeros(1,49)];
[n,Wn]=buttord(Wp,Ws,1,30)
[z,p,k]=butter(n,Wn,'low');
[a_b,b_b]=zp2tf(z,p,k);
G=tf(a_b,b_b)

y=filter(a_b,b_b,x);

figure(1)
stem(y)