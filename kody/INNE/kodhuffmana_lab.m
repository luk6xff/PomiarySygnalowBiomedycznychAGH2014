function sr=kodhuffmana_lab(x);


x=ecg(50)
Lb=8;
 x = x-min(x); x=x/max(x); x=round((2^Lb-1)*x);

 h=length(x);
s=unique(x);
ind=zeros(1,length(s));
for k=1:length(s);
    ind=find(x==s(k));
    g(k)=length(ind);
    
end
p=g/h
