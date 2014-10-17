function [Xw,w1,w2]=fourier_ciagly_2D(x,dw,wz);
% 2D FT
for k=1:size(x,1)
[H, w1]=fourier_ciagly(x(k,:),dw,wz);
Xw1(k,:)= H;
end
for k=1:size(Xw1,2)
[H, w2]=fourier_ciagly(Xw1(:,k),dw,wz);
Xw(:,k)= H(:);
end