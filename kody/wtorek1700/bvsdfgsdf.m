Wp = 40/500; Ws = 150/500;
[n,Wn] = buttord(Wp,Ws,3,60);
n =
     5
Wn =
    0.0810
[b,a] = butter(n,Wn);
freqz(b,a,512,1000); 
title('n=5 Butterworth Lowpass Filter')
