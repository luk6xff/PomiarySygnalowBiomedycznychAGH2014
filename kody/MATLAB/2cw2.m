N=10;
wg=pi/8;
n1=[-N;-1];
n2=[1;N];
f=sin(wg.*n1)/pi.*n1
f2=sin(wg.*n2)/pi.*n2
plot(f)
plot(f2)