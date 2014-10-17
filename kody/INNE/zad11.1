function [c,d,P,U]=lwt_lab(x,P,U,int);
%LWT x musi mieæ parzyst¹ dlugosæ
 %P,U - numer predyktora i updata od 1 do 4;
 %int=1 - transformacja ca³kowitoliczbowa

 switch P
 case 1
 P=[1];
case 2
 P=[1/2 1/2];
 case 3
 P=[-1/2^4 9/2^4 9/2^4 -1/2^4];
 case 4
P=[3/2^8 -25/2^8 150/2^8 150/2^8 -25/2^8 3/2^8];
otherwise
P=[1/2 1/2];
end
switch U
case 1
U=[1];
case 2
U=[1/2 1/2];
case 3
U=[-1/2^4 9/2^4 9/2^4 -1/2^4];
 case 4
U=[3/2^8 -25/2^8 150/2^8 150/2^8 -25/2^8 3/2^8];
 otherwise
U=[1/2 1/2];
 end
x=x(:); N =length(x);
%% podzia³
ce=x(1:2:N);
co=x(2:2:N);
 %% predykcja
 if int==1
 d = co-round(lwt_step(ce,P));
 else
 d = co-lwt_step(ce,P);
 end
%% uaktualnienie
if int==1
c = ce+round(lwt_step(d,U)/2);
 else
 c = ce+lwt_step(d,U)/2;
end