clc, clear all, close all; 

i=imread('cameraman.tif');
im=double(i);
im=im./256
x=randn(size(im));
z=im+x;
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
