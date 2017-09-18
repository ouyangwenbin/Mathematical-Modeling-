clear,clc
load('fujian1.mat')
x=all(:,2);
y=all(:,1);
z=all(:,3);
scatter(x,y,z.*10-600,z),xlabel('经度','FontSize',1),ylabel('纬度','Rotation',0),
title('定价散点图')
[X,Y,Z]=griddata(x,y,z,linspace(min(x),max(x))',linspace(min(y),max(y)),'natural');%插值
figure
contourf(X,Y,Z),xlabel('经度'),ylabel('纬度','Rotation',0),
title('定价等高图') %等高线图
colorbar
%figure,surf(X,Y,Z)
shading interp