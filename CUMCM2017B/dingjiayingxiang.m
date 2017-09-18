clear,clc
load('fujian1.mat')
x=all(:,2);
y=all(:,1);
z=all(:,3);
[X,Y,Z]=griddata(x,y,z,linspace(min(x),max(x))',linspace(min(y),max(y)),'natural');%插值
hold on
contourf(X,Y,Z),xlabel('经度'),ylabel('纬度','Rotation',0),
shading interp
load('fujian2.mat')
linenum=find(abs(fujian2(:,2)-113.5)<1&abs(fujian2(:,1)-23.2)<0.8&fujian2(:,3)>1);
hold on
plot(fujian2(linenum,2),fujian2(linenum,1),'r.')