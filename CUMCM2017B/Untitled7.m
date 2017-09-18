clear,clc
load('fujian1.mat')
load('fujian2.mat')
linenum=find(abs(fujian2(:,2)-113.5)<1&abs(fujian2(:,1)-23.2)<0.8&fujian2(:,3)>1);
R=6370;S=[];
for pla=1:835
d=R*acos(cos(all(pla,1).*pi/180).*cos(fujian2(linenum,1).*pi/180).*cos((all(pla,2)-fujian2(linenum,2)).*pi/180)+sin(all(pla,1).*pi/180).*sin(fujian2(linenum,1).*pi/180));
k=d./fujian2(linenum,5);
D=sum(k);
S=[S;D];
end       
   
   
