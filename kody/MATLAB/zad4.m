f0 = 50
fp = 10000
k = (2*50*pi)/0.01; 
N= 200;
n=0: N-1;
t=0:1/fp:(N-1)/fp;
x=sin(2*pi*f0*(n/fp)+0.5*k*(n/fp).^2);
plot(t,x)

