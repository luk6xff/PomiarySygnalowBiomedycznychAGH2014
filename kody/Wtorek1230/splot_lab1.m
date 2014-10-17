function y=splot_zad1(x,h);

X=length(x);
H=length(h);
y=zeros(1,(H+X-1));
for n=1:(H+X-1)
    for k=1:X
        if n-k>=0 && n-k<H
            y(n)=y(n)+x(k)*h(n-k+1);    
        end
    end
end
   