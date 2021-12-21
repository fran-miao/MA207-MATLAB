clc,clear

C=[1.25 8.75 0.5 5.75 3 7.25
    1.25 0.75 4.75 5 6.5 7.25
    3 5 4 7 6 11];
d1=sqrt((C(1,:)-5).^2+(C(2,:)-1).^2);
d2=sqrt((C(1,:)-2).^2+(C(2,:)-7).^2);
f=[d1,d2];
A=[1 1 1 1 1 1 0 0 0 0 0 0
    0 0 0 0 0 0 1 1 1 1 1 1];
b=[20 20];
Aeq=[1 0 0 0 0 0 1 0 0 0 0 0
    0 1 0 0 0 0 0 1 0 0 0 0
    0 0 1 0 0 0 0 0 1 0 0 0
    0 0 0 1 0 0 0 0 0 1 0 0
    0 0 0 0 1 0 0 0 0 0 1 0
    0 0 0 0 0 1 0 0 0 0 0 1];
beq=C(3,:);
[x,fval]=linprog(f,A,b,Aeq,beq,zeros(12,1),[]);
disp(x);disp(fval)