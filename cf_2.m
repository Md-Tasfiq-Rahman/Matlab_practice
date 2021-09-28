clc;
clear;
close all;
x=0:5
p=x
x=[ones(6,1) x' x'.^2]
y=[2.1 7.7 13.6 27.2 40.9 61.1]
a=inv(x'*x)*x'
a=a*y'
a0=a(1,1)
a1=a(2,1)
a2=a(3,1)
x1=linspace(-1,7,1000);

y1=a0+a1*x1+a2*x1.^2;
plot(p,y,'*',x1,y1)