close all, clear all, clc
Ao = double(imread('cameraman.tif'));
Lv=3; %poziom dekompozycji
P=2; U=2; int=1;
%% Dekompozycja
A = double(Ao);
AA = A;
for k=1:Lv
[AA, AD, DD, DX, P1, U1]=lwt2d(AA,P,U,int);
temp=[AA AD; DD DX]; [n1, n2]=size(temp);
A(1:n1,1:n2)=temp;
figure,imshow(uint8(A));
end
%% Rekonstrukcja
[n1,n2]=size(A);
n1=n1/2^Lv;
n2=n2/2^Lv;
for k=1:Lv
AA = A(1:n1 , 1:n2);
AD = A(1:n1 , 1+n2:2*n2);
DD = A(1+n1:2*n1, 1:n2);
DX = A(1+n1:2*n1 , 1+n2:2*n2);
AR=ilwt2d(AA, AD, DD, DX, P1, U1, int);
A(1:2*n1,1:2*n2)=AR;
n1=2*n1;
n2=2*n2;
end
blad=sum(abs(A(:)-Ao(:)))