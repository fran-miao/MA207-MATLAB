clc,clear,close;

A=[0,1,0,1,0;1,0,1,0,0;0,0,0,1,1;0,0,0,0,1;1,1,0,1,0];

subplot(3,1,1);
graphy_plot(A,[0,1;-1,0;-.5,-1;.5,-1;1,0],1,1);

subplot(3,1,2);
graphy_plot(A*A',[0,1;-1,0;-.5,-1;.5,-1;1,0],1,1);
A*A'

subplot(3,1,3);
graphy_plot(A'*A,[0,1;-1,0;-.5,-1;.5,-1;1,0],1,1);
A'*A
