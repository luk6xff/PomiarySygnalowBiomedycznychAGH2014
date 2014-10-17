b=[1, 2, 3];
N=100;
x=1:N;
for k=1:N 
    x=1:N 
    n=1:N;
    y=sum(b(k)*x(n-k))
end
figure(b,1,x)