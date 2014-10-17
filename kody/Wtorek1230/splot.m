1 function y=splot(x,h);
2
3 Nx=length(x);
4 Nh=length(h);
5 Ny=Nx+Nh-1;
6 y =zeros(1,Ny);
7 for n=1:Ny
8   for k=1:Nx;
9        if n-k>=0 && n-k<Nh
10           y(n)=y(n)+x(k)*h(n-k+1);
11           end
12     end
13 end