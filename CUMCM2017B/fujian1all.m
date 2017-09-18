clear,clc
load('fujian1.mat')
plot3(undone(:,2),undone(:,1),undone(:,3),'b*'),
xlabel('经度'),ylabel('纬度','Rotation',0),zlabel('定价','Rotation',0)
hold on
plot3(done(:,2),done(:,1),done(:,3),'r.'),
xlabel('经度'),ylabel('纬度','Rotation',0),zlabel('定价','Rotation',0)
grid on
legend('未完成','已完成')
title('所有任务')
grid minor