function y=splot_lab1(x,h)
Nx=length(x);
Nh=length(h);
Ny=Nx+Nh-1;
y =zeros(1,Ny);
for n=1:Ny
for k=1:Nx;
if n-k>=0 && n-k<Nh
y(n)=y(n)+x(k)*h(n-k+1);
end
end
end