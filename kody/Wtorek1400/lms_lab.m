function [hlms, h_n, e_n] = lms_lab(x,d,hlms,mi);
%Filtr adaptacyjny LMS
%x - sygan� wejsciowy
%d - sygna� odneisienia
%hlms - wsp�czynniki filtra
%mi - krok adaptacji, np.0.01
%h_n - kolejne waktory wsp�czynnikow filtra
%e_n - kolejne warto�ci b��du

M=length(hlms);
P=1/delt*eye(M,M);
q=zeros(M,1);
h_n=hrls;
e_n=[];
u=1;
