function [L,w]=hist_lab(x,Np);

x_min=min(x(:)); x=x(:)-x_min;
x_max=max(x); x=x/max(x);
x=round((Np-1)*x);

L=zeros(1,Np);
for k=1:length(x)
    L(x(k)+1)=L(x(k)+1)+1;
end
w=(0:Np-1)/Np;
w=w*x_max;
w=w+x_min;