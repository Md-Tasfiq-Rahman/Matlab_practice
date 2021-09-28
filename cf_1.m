clc;
clear;
close all;
x=1:7
p=x
x=[ones(7,1) x']
y=[0.5 2.5 2 4 3.5 6 5.5];
a=inv(x'*x)*x'
a=a*y'
a0=a(1,1)
a1=a(2,1)
x1=linspace(0,8,600);

y1=a0+a1*x1;
plot(p,y,'o',x1,y1)