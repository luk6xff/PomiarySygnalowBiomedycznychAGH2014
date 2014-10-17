function [Xw, w]=fourier_ciagly(x,dw,wz)

w=wz(1):dw:wz(2);
Nx=length(x);
Nw=length(w);
Xw=zeros(1,Nx);
for k=1:Nw
    Xw(k)=0;
    for n=1:Nx
            Xw(k)=Xw(k)+x(n)*exp(-j*w(k)*(n-1));
    end
end