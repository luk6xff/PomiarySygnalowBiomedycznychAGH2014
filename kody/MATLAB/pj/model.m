function J=model(A)
global x y Ym J

Ym=(A(1)*x.^3)+(A(2)*x.^2)+(A(3)*x)+(A(4));

J=sqrt(sum(((Ym-y).^2)/(sum(y.^2))))

xx=-5:0.01:3;
ss=(A(1)*xx.^3)+(A(2)*xx.^2)+(A(3)*xx)+(A(4));
pause(0.03)
plot(x,y,'*',xx,ss)