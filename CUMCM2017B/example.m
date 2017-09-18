clear,clc
load('fujian1.mat')
load('fujian2.mat')
plot(undone(:,2),undone(:,1),'b*'),
xlabel('����'),ylabel('γ��','Rotation',0)
hold on
plot(done(:,2),done(:,1),'ro'),
hold on
grid on
linenum=find(abs(fujian2(:,2)-113.5)<1&abs(fujian2(:,1)-23.2)<0.8&fujian2(:,3)>1);
plot(fujian2(linenum,2),fujian2(linenum,1),'g.')
set(gca,'xtick',113.319:0.001:113.341) %���ü��
set(gca,'ytick',23.082:0.001:23.122) %���ü�� 
legend('δ���','�����','��Ա')
axis([113.319 113.341 23.082 23.122])