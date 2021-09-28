clc;
clear;
close all;
x=0:10;
y=sin(x);
xi=0:0.25:10;
yi=interp1(x,y,xi);
plot(x,y,'o',xi,yi,'.-.')

%t=linspace(1.8,3.6,13)
% for i=1:2:7
%     i
% end