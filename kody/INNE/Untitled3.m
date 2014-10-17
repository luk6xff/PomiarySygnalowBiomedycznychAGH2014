 close all, clear all, clc 
Nx=2048; 
n=(0:Nx-1); 


if 0 % modulacja AM 
w0=1; 
wm=0.01; 
k =0.9; 
x1=1+k*cos(wm*n); 
x2=cos(w0*n); 
x =x1.*x2; 
else % modulacja FM 
w0 = pi/2; 






wm = 0.01; 
k = 1; 
x = cos(w0*n+k*cos(wm*n)/wm); 
end 

y=hilbert(x)    