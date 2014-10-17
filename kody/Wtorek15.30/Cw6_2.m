clear all, close all, clc;
N=32;
n=[0:1:N-1];
k=[0:1:N-1];
x=cos(pi/8*n);
for  n=0:1:N-1;
        for  k=0:1:N-1;
             end
end
W=exp(-j*(2*pi/N)*k*n);
X=W*x;
xt=(1/N)*W*N