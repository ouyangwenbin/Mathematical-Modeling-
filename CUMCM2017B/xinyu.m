clear,clc
load('fujian2.mat')
linenum=find(abs(fujian2(:,2)-113.5)<1&abs(fujian2(:,1)-23.2)<0.8&fujian2(:,3)>1);
X=[ones(length(linenum),1) fujian2(linenum,5)];
Y=fujian2(linenum,3);
[b,bint,r,rint,stats]=regress(Y,X);
plot(fujian2(linenum,5),fujian2(linenum,3),'b.')
hold on
plot(fujian2(linenum,5),fujian2(linenum,5).*b(2)+b(1),'r.')
hold on
plot(fujian2(linenum,5),1.491*fujian2(linenum,5).^0.4395,'y.')