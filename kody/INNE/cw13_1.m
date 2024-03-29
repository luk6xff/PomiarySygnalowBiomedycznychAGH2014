clc
clear all
I=checkerboard(60,2,2);
x=rand(size(I));
z=I+x;

%figure(1)
%imshow(I)
%figure(2)
%imshow(x)
%figure(3)
%imshow(z)

h = fspecial('gaussian',10,10)
C=imfilter(z,h)
figure(1)
imshow(C)

i=fspecial('disk',pi/8)
D=imfilter(z,i)
figure(2)
imshow(D)

j=fspecial('average',2)
E=imfilter(z,j)
figure(3)
imshow(E)