clear;clc
grade=1;
while grade>-51
    R = randsample('02',49,true,[0.33 0.66]);     %生成随机矩阵
    R = str2num(R(:));    %字符串转数组
    z=ones(49,1);    %充放电状态
    z=z-R;
    d=1:1:49;
    d=abs([d-d(1);d-d(2);d-d(3);d-d(4);d-d(5);d-d(6);d-d(7);d-d(8);
        d-d(9);d-d(10);d-d(11);d-d(12);d-d(13);d-d(14);d-d(15);d-d(16);
        d-d(17);d-d(18);d-d(19);d-d(20);d-d(21);d-d(22);d-d(23);d-d(24);
        d-d(25);d-d(26);d-d(27);d-d(28);d-d(29);d-d(30);d-d(31);d-d(32);
        d-d(33);d-d(34);d-d(35);d-d(36);d-d(37);d-d(38);d-d(39);d-d(40);
        d-d(41);d-d(42);d-d(43);d-d(44);d-d(45);d-d(46);d-d(47);d-d(48);
        d-d(49)]);
    d=d.^2;    %距离矩阵
    f=(z*z')./d;
    f(f==Inf) = [];
    grade=sum(sum(f));
end
