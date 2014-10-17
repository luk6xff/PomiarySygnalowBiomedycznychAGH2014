function Xw=fft_lab(xt);
%FFT z podzia³em czasowym

N=length(xt);
%% uzupe³nienie zerami do d³ugoœci 2^v
v=ceil(log2(N)); %liczba bitów
xt=[xt zeros(1,2^v-N)];
N=length(xt);
%% odwrócenie kolejnoœci bitów, indeksowanie od 0
xo= zeros(size(xt)); %inicjalizacja zmiennej
b = 2.^(v-1:-1:0); %wagi binarne
for k=0:N-1;
    ind=k;
    ko=zeros(1,v);
    for k1=0:v-1
        if ind-b(k1+1)>=0
            ko(k1+1)=1; ind=ind-b(k1+1);
        end
    end
    ind_o=sum(fliplr(ko).*b);
    xo(ind_o+1)=xt(k+1);
end
%% algorytm FFT
X=zeros(2,N); %pamiêæ dla danych i wyników
X(1,:)=xo; %dane
WN=exp(-j*2*pi/N);
for k=0:v-1 %pêtla po etapach
    M=2^k; %liczba motylków w bloku
    for k1=0:N/2/M-1; %pêtla po blokach
        for k2=0:M-1; %pêtla wewn¹trz bloku
                        %ustalenie indeksów
            p=k1*N/2^(v-k-1)+k2;
            q=p+M;
            r=2^(v-k-1)*k2;
                    %  obliczenia motylkowe
            X(2,p+1)=X(1,p+1)+WN^r*X(1,q+1);
            X(2,q+1)=X(1,p+1)-WN^r*X(1,q+1);
        end
    end
    X(1,:)=X(2,:); %obliczenia z podstawianiem
end
Xw=X(1,:);