clear,clc
load('fujian1.mat')
load('fujian2.mat')
R=6370;D=[];
for peo=1:1877
    dis=4189140;amount=0;
    while abs(amount-fujian2(peo,3))>1
        d=R*acos(cos(fujian2(peo,1).*pi/180).*cos(all(:,1).*pi/180).*cos((fujian2(peo,2)-all(:,2)).*pi/180)+sin(fujian2(peo,1).*pi/180).*sin(all(:,1).*pi/180));
        amount=length(find(d<dis));
        if amount>fujian2(peo,3)
            dis=dis/2;
        elseif amount<fujian2(peo,3)
            dis=dis*1.5;
        end
    end
    D=[D;dis];
end