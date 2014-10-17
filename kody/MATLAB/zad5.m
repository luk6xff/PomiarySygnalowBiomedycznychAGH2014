f0 = 100
fp = 10000
df=50
fm=20
%k = (2*50*pi)/0.01; 
N= 800;
n=0: N-1;
t=0:1/fp:(N-1)/fp;
y=sin(2*pi*fm*t);
x=sin(2*pi*f0*(n/fp)-(df/fm)*cos((2*pi*fm)*(n/fp))+(df)/fm);
plot(t,x,'r',t,y,'r')

