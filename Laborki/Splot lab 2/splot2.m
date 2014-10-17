function y=splot_2(x,h);

Nx=length(x);
Nh=length(h);
Ny=Nx+Nh-1;
h=fliplr(h(:).');
xz=zeros(h(:).'); xz(Nh:end)=x;
hz=zeros(1,Ny);   hz(1:Nh)=h;
y=zeros(1,Ny);
hz=hz(:);
for n=1:Ny;
    y(n)=xz*hz;
    hz=[0;hz(1:Ny-1)];
end