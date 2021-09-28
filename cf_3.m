clc;
clear;
close all;
x=1:5;
y=[0.5 1.7 3.4 5.7 8.4];
y1=log(y);
x1=[ones(5,1) log(x')];
a=inv(x1'*x1)*x1'*y1';
a2=exp(a(1,1))
b2=a(2,1)
x2=linspace(0,6,1000);
y2=a2*x2.^b2;
plot(x,y,'*',x2,y2);
xlabel('x');
ylabel('y');