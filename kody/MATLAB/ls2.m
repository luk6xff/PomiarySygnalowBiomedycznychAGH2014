clear all
close all
clc

fpr=200;
dt=1/fpr;
t0=20;
N=t0/dt;
t=(0:N-1)*dt;

yg=[ones(1,N/2)*0.05/6*sin(2*pi*0.3*t0) ones(1,N/2)*0.05/6*sin(2*pi*3*t0)];

vg=[0 diff(yg)/dt];

m=137;
k=8500;
d=650;
g=-9810;

A=[0 1;-k/m -d/m];
B=[0;1];
C=[0 1];
D=[0];

syst=ss(A,B,C,D);
F0=g+k/m*yg+d/m*vg;
[y,t,X]=lsim(syst,F0,t);

plot(t,X)
xlabel('czas')
ylabel('amplituda')
legend('polozenie','predkosc')