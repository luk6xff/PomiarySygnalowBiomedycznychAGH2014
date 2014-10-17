close all
clear all
clc


x_rand= rand(1,1000);
subplot(1,1,1);
hist(x_rand,100);
hold on
figure
[L,w] = hist_lab(x_rand,100);
bar(w,L)
