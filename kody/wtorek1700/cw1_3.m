
function [L,w]=hist_lab(x,Np);
% Funkcja do liczenia histogramu 
% Np - liczba przedzia³ów 
% L - liczba wartoœci w przedziale 
% w - wartoœci 

%% Przeskalowanie wartosci x do przedzia³u (0,1) i (0,Np-1)

x_min=min(x(:)); x=x(:)-x_min;
x_max=max(x); x=x/max(x);
x=roud((Np-1)*x);

%% Liczenie histogramu 
L=zeros(1,Np);
for k=1 : length (x)
    L(x(k)+1)=L(x(k)+1)+1;
end
w=(0:Np-1)/Np;
w=w*x_max;
w=w+x_min;
