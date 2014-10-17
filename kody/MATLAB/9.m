x=A*sin(2*pi*f*t+fi);
y=resample(x,5,7);
t1=(0:length(y)-1)/Fs2;
u=5;
d=7;
z=zeros(1,u*length(x));
z(1:u:end)=x;
y1=u*fir1(201,150/(1200/2));
xd=x(1:d:length(x));
z=conv(y1,xd);
z1=conv(y1,x);
Ny=length(z1);
t2=(0:Ny-1)/Fs2;
f1=(0:1:length(z)-1)*(Fs2/length(z));
f2=(0:1:Ny-1)*(Fs1/Ny);



figure(2)
hold on
plot(f2,z1,'g');
plot(f1,z,'b');
plot(spy)
xlabel('time(s)');
