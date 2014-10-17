clc 
clear all
%generowanie macierzy
A=[1 2 3;4 5 6;7 8 9];


g=0
%while g~=1
    
    o=menu('generowanie macierzy','macierz','Exit');
if (o==1)
    disp('macierz')  
A
 
elseif (o==2)
    disp('Exit')
    g=0
%end
end