clear,clc
load('fujian1.mat')
x=all(:,2);
y=all(:,1);
z=all(:,3);
scatter(x,y,z.*10-600,z),xlabel('����','FontSize',1),ylabel('γ��','Rotation',0),
title('����ɢ��ͼ')
[X,Y,Z]=griddata(x,y,z,linspace(min(x),max(x))',linspace(min(y),max(y)),'natural');%��ֵ
figure
contourf(X,Y,Z),xlabel('����'),ylabel('γ��','Rotation',0),
title('���۵ȸ�ͼ') %�ȸ���ͼ
colorbar
%figure,surf(X,Y,Z)
shading interp