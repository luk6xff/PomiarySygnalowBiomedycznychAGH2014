function start
clc
x = abs(round(10*randn(1,100)));
[symbole, p]=zlicz(x);
[symbole, tabela] = tabela_huffmana(symbole, p);
bity = huffman_koder(x, symbole, tabela);
y = huffman_dekoder(bity, symbole, tabela);
blad_rekonstrukcji=sum(abs(x(:)-y(:)))
function [symbol tabela] = tabela_huffmana(symbol, prw);
for k=1:length(symbol);
    st{k}=k; %symbole tymczasowe
    tabela{k}=[];
end
p=prw(:);
Np = length(p)+1;
while Np>2
    Np = length(find(p<10));
    [p, I] = sort(p,'ascend');
    st = st(I);
    for k=1:length(st{1})
    tabela{st{1}(k)}=[1 tabela{st{1}(k)}];
    end
    for k=1:length(st{2})
    tabela{st{2}(k)}=[0 tabela{st{2}(k)}];
    end
    st{1}=[st{1} st{2}];
    st{2}=[];
    p(1) = p(1)+p(2);
    p(2) = 10;
end
function bity = huffman_koder(x, symbole, tabela);
bity=logical([]);
for k=1:length(x);
    I = find(symbole==x(k));
    bity = [bity logical(tabela{I})];
end
function y=huffman_dekoder(bity, symbole, tabela);
Nb=length(bity);
I1=1;
y = [];
while I1<=Nb
    for k=1:size(tabela,2)
        tab = tabela{k}; It=length(tab);
        if I1+It-1<=Nb
            if tab == bity(I1:I1+It-1);
                y=[y symbole(k)];
                I1=I1+It;
                break
            end
        end
    end
end 
function [symbol, prw]=zlicz(x);
% x - komunikat - liczby ca³kowite
symbol=[];
prw=[];
x = x(:);
N = length(x);
k = 1;
Iz = zeros(size(x));
while sum(Iz)<N;
    Is=find(x==x(k));
    symbol = [symbol x(k)];
    prw = [prw length(Is)/N];
    Iz(Is)=1;
    Ik=find(Iz==0);
    if length(Ik)
        k=Ik(1);
    else
        break
    end
end