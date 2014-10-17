N=1000;
tau=10^-17;

t=-3*tau:6*tau/1000:3*tau;

dirac=(1/tau)*exp(-(pi.*t.*t)/(tau^2));

delt=t(2)-t(1)
pole=delt*sum(dirac)
plot(t,dirac);
