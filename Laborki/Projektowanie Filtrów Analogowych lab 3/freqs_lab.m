function H=freqs_lab(B,A,w)
s=j*w;
Hb=polyval(B,s);
Ha=polyval(A,s);
H=Hb./Ha;