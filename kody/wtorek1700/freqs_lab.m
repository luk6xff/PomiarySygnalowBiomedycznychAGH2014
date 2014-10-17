function H=freqs_lab(B,A,w);

N=size(w);
yA=zeros(1,N);
yB=zeros(1,N);
H=zeros(1,N);
for k=1:N(2)
    yB(k)= polyval(B,w(k));
    yA(k)= polyval(A,w(k));
    H(k)=yB(k)/yA(k)
end
