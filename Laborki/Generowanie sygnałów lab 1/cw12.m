close all, clear all, clc
Nx=32;
w=0:pi/600:2*pi;
A=2;
fi=0;
n=0:Nx-1;
for k=1:length(w)
    x=A*sin(w(k)*n+fi);
    plot(n,x,'.-')
    xlabel('n')
    ylabel('x[n]')
    title('cw.12')
    axis([0 Nx-1 -A A])
    drawnow
end