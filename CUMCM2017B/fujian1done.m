clear,clc
load('fujian1.mat')
plot3(done(:,2),done(:,1),done(:,3),'r.'),
xlabel('经度'),ylabel('纬度','Rotation',0),zlabel('定价','Rotation',0)
grid on
legend('已完成')
title('已完成任务')