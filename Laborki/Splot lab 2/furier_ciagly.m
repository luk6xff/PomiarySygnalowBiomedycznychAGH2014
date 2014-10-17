function [Xw,w]=furier_ciagly(x,dw,wz);
w=wz(1):dw:wz(2);
Xw=zeros(1,length(w));
for k=1:length(w)
    for n=1:length(x)
        Xw(k)=exp(j*w(k)*(n-1))*x(n)+Xw(k);
    end
end