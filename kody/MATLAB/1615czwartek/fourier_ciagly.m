function [Xw, w]=fourier_ciagly(x,dw,wz);

w=wz(1):dw:wz(2);
%ci�g�a transformacja Fouriera sygna��w dyskretnych
%dw - krok cz�stotliwo�ci [rad]
%wz=[w1 w2]- zakres cz�stotliwo�ci [rad]
%x - sygna�
%Xw - widmo sygna�u x
%w - pulsacje, dla kt�rych wyznaczono widmo Xw
%
%przyk�adowe wywo�anie
%[Xw, w]=fourier_ciagly(x,0.01,[-pi pi]);