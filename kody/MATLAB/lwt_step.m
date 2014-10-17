function y=lwt_step(x,P)
P=4;
y=filter(P,1,x);
