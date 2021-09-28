clc;
clear;
close all;
x=[0, 1, 2, 3, 4 ,5, 6]
y=[0 ,0.8415, 0.9093, 0.1411, -0.7568, -0.9589, -0.2794]
xq=0:0.2:6;
vq1=interp1(x,y,xq)
plot(x,y,'o',xq,vq1,'-.')