N=100
x=rand(1,N)
z=var(x)
x1=1/N*sum(x)
var1=1/(N-1)*sum(x-x1).^2




