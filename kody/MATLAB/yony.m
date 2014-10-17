T=1;
w0=2*pi/T;
t=linspace(0,T,200);
tau=0.25*T;
x=1/T;
%n=-100;


for n=1:100

  i=2*sin(n*tau*w0/2)/(n*w0*T);
  %e=exp((i*2*pi*n/T).*t);
  e=cos((2*pi*n/T).*t)+i*sin((2*pi*n/T).*t);
  c=i*e;
  suma=suma+c;
end 

disp(i);
disp(e);
disp(c);
disp(suma);