function e=entropia_lab(x);


h=length(x);
s=unique(x);
ind=zeros(1,length(s));
for k=1:length(s);
    ind=find(x==s(k))
    g(k)=length(ind);
    
end
p=g/h
e=-sum(p.*log2(p))