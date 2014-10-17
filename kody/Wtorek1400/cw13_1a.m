clc, clear all, close all; 

i=checkerboard(60,4,4);
x=randn(size(i));
z=i+x;
figure
imshow(i);
figure(2)
imshow(z)
h=fspecial('gaussian',10,10);
c=conv2(z,h);
figure(3)
imshow(c)
figure(4)
b=medfilt2(z,[9,9])
imshow(b)
