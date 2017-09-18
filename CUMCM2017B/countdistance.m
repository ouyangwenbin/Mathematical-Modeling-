clear,clc
load('fujian1.mat')
load('fujian2.mat')
peo=1;
dis=111;count=0;
while abs(count-fujian2(peo,3))>5
    for pla=1:1:835
        disofthem=distance(all(peo,2),all(peo,1),fujian2(pla,2),fujian2(pla,1));
        if disofthem<dis
            count=count+1;
        end
    end
    if count>fujian2(peo,3)
        dis=dis/2;
    elseif count<fujian2(peo,3)
        dis=dis*1.5;
    end
end