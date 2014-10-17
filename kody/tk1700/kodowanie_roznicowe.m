close all, clear all, clc
%% generator sygna³u EKG
x = ecg(4096);
x = repmat(x,[1 9]);
x = x+0.05*randn(size(x)); %szum pomiarowy
x = sgolayfilt(x,0,5); %wyg³adzenie
%% kwantowanie na Lb bitów
Lb=8;
x = x-min(x); x=x/max(x); x=round((2^Lb-1)*x);


y=x;
for k=1:length(x);
      if k==1;
        x(k)=y(k);
    elseif k>1;
        x(k)=y(k)-y(k-1);
    end
end

%%kompresja kodowania roznicowego
figure(1)
hold on
plot(x)
plot(y,'r')
%plot(diff(y),'k') %alternatywa metoda dla petli for do liczenia kodowania roznicowego
e=entropia_x(x)
e=entropia_x(y)       

%%dekompresja kodowania roznicowego
figure(2)
plot(cumsum([x(1) diff(y)]),'m')