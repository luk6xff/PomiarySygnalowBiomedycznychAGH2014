close all
clear all
clc

%%parametry

Nx=32;
w=0:pi/600:2*pi; %czest 
A=2;
fi=0;

%% obliczenia

n=0:Nx-1;

for k=1:length(w)
    %obliczenia
    x=A*sin(w(k)*n+fi);   %wektor sygnalu
    
    %wizualizacja
    plot(n,x,'.-')
    xlabel('n')
    ylabel('x[n]')
    title(['\omega=' num2str(w(k), '%2.2f') '[rad]'])
    axis([0 Nx-1 -A A])
    drawnow
    
end
    
    
    