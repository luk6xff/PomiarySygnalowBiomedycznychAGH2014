function H=freqz_lab(B,A,w)
z=exp(j*w);
Hb=polyval(B,z);
Ha=polyval(A,z);
H=Hb./Ha;