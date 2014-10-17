Y=[1, 2, 3];
B=[1, 2, 3];
N=100;
x=1:N;
for D=[x(n),D(1:end-1)];
    n=1:N;
    Y=[x(n),Y(1:end-1)];
    y=sum([x(n),D].*B)-sum([x(n),Y].*A);
    Y(2:end)=Y(1:end-1);
    Y(1)=x(n);
    D(2:end)=D(1:end-1);
    D(1)=x(n);
end