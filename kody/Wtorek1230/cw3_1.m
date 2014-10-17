clear all
close all
clc 

fpass=800;
fstop=1200;
rp=1;
rs=30;
Fs=4000;

W=0:10:2e3

[N,Wn] = BUTTER(fp,fs,rp,rs,);



[N,Wn] = CHEBY1(fp,fs,rp,rs,);
[N,Wn] = CHEBY2(fp,fs,rp,rs,);




