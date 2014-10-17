function y=splot3(x,h);
%x,h - wektory poziome
Nx=length(x);
Nh=length(h);
Ny=Nx+Nh-1;
h=fliplr(h(:).'); %odwrócenie w czasie wspó³czynników filtra
xz=zeros(1,Ny); xz(Nh:end)=x;
hz=zeros(1,Ny); hz(1:Nh) =h;
y =zeros(1,Ny);
hz=hz(:); %zamiana na wektor pionowy
for n=1:Ny;
y(n)=xz*hz; %iloczyn wektorowy
hz = [0; hz(1:Ny-1)];
end