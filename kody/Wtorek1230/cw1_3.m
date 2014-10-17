close all
clear all
clc



Nx=32;
w=pi/14;
A=2;
% fi=pi/11;



n=0:Nx-1;
x=A*exp(j*w*n);
rx=x.^2;
figure
    plot(n,x, '.-',n,real(x), '.-k',n,imag(x), '.-g',n,abs(x), '.-r')
    xlabel('n')
    ylabel('x[n]')
    title(['\omega' num2str(w,'%2.2f') '[rad]' ])
    axis tight
    legend('ci¹g','rzeczywiste','urojone','modu³')
figure
plot(n,x)