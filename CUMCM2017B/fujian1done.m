clear,clc
load('fujian1.mat')
plot3(done(:,2),done(:,1),done(:,3),'r.'),
xlabel('����'),ylabel('γ��','Rotation',0),zlabel('����','Rotation',0)
grid on
legend('�����')
title('���������')