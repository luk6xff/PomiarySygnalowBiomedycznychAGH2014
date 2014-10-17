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
 L = 24;
 Nfft= 256;
 R = L./2;
 w = ones(1,L);
 w = hamming(L);
 [X,n_spe,w_spe]=spectrogram(x,w,R,Nfft);
 figure,
 plot(x, '.-k','LineWidth',1)
 xlabel('n'), ylabel('x[n]')
 axis tight
 figure
 imagesc(n_spe,w_spe,abs(X)), axis xy, colorbar
 xlabel('n'), ylabel('\omega [rad]')
 title(['L=' num2str(L) ', R=' num2str(R) ' , N_F_F_T=' num2str(Nfft)])
 axis tight