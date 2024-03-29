function [hlms, h_nn, e_nn] = lms_lab(x,d,hlms,mi);

%Filtr adaptacyjny LMS
%x - sygna� wej�ciowy
%d - sygna� odniesienia
%hlms - wsp�czynniki filtra
%mi - krok adaptacji, np.0.01
%h_n - kolejne wektory wsp�czynnik�w filtra
%e_n - kolejne warto�ci b��du

hlms=hlms(:);
M=length(hlms);
q=zeros(M,1);
h_nn=hlms;
e_nn=[];
for k=1:min([length(x),length(d)])
    q=[q(2:M); x(k)];
    e=d(k)-q'*hlms;
    e_nn=[e_nn e];
    hlms=hlms + mi*q*e;
    h_nn=[h_nn hlms];
   
end



