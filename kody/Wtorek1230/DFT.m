function [y] = DFT(x)

N = length(x);
A = zeros(1,N);

for k=1:N
for n=1:N
    W = exp(-2*pi*i*(n-1)*(k-1)/N);
    A(k) = A(k) + x(n)*W;
end
end
y=A;
end