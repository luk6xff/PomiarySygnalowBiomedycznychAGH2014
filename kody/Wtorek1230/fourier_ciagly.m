function [Xw, w]=fourier_ciagly(x,dw,wz);
%ci¹g³a transformacja Fouriera sygna³ów dyskretnych
%dw - krok czêstotliwoœci [rad]
%wz=[w1 w2]- zakres czêstotliwoœci [rad]
%x - sygna³
%Xw - widmo sygna³u x
%w - pulsacje, dla których wyznaczono widmo Xw
%
%przyk³adowe wywo³anie
%[Xw, w]=fourier_ciagly(x,0.01,[-pi pi]);
w=wz(1):dw:wz(2);
nn=0:1:length(x)-1;
for k=1:length(w)
Xw(k)=exp(-j*w(k)*nn)*x(:);

end