close all; clear all; clc;
%generator sygna³u EKG
x=ecg(128);
x=repmat(x,[1,9]);
x=x+0.05*rand(size(x));
x=sgolayfilt(x,0,5);

Lb=8;
x=x-min(x); x=x/max(x); x=round((2^Lb-1)*x);

P=2;
U=2;
int=0;
[c,d,P1,U1]=lwt_lab(x,P,U,int);
xr=ilwt_lab(c,d,P1,U1,int);
blad=x(:)-xr(:);
figure
    subplot(2,1,1)
        plot(x);
        xlabel('n');
        ylabel('x[n])');
        axis tight;
    subplot(2,1,2)
        plot(blad,'-k');
        xlabel('n');
        ylabel('x[n]-x_r[n]');
        axis tight;
