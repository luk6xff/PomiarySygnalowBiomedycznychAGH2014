clc
clear all
I=checkerboard(60,4,4);
x=rand(size(I));
z=I+x;
figure
imshow(I);
figure(2);
imshow(z);
h=fspecial('gaussian',10,10);
C=imfilter(z,h);
figure(3)
imshow(C)
figure(4)
b=medfilt2(z)
imshow(b)
