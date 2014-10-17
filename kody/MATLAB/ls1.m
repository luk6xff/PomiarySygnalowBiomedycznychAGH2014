clear all
close all
clc

fpr=400;
dt=1/fpr;
t0=5;
N=t0/dt;
t=(0:N-1)*dt;

i=[zeros(1,3*N/5) 50*ones(1,2*N/5)];

R=10;
L=0.5;
C=0.001;

A=[0 1/C;-1/L -R/L];
B=[0;1/L];
C=[0 1];
D=[0];

syst=ss(A,B,C,D);
F0=i;
[y,t,X]=lsim(syst,F0,t);

plot(t,X)
xlabel('czas')
ylabel('amplituda')
legend('napiecie','prad')