function [ d ] = distance( x1,y1,x2,y2 )
%UNTITLED8 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
R=6370;
d=R*acos(cos(y1*pi/180)*cos(y2*pi/180)*cos((x1-x2)*pi/180)+sin(y1*pi/180)*sin(y2*pi/180));

end

