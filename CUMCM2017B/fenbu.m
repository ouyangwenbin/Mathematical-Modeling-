clear,clc
load('fujian1.mat'),load('fujian2.mat')
plot(undone(:,2),undone(:,1),'b*'),
xlabel('����'),ylabel('γ��','Rotation',0)
hold on
plot(done(:,2),done(:,1),'r.'),
xlabel('����'),ylabel('γ��','Rotation',0)

hold on
plot(fujian2(:,2),fujian2(:,1),'k.')
xlabel('����'),ylabel('γ��','Rotation',0)
grid on
legend('δ���','�����','��Ա')