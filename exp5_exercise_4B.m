clc;
clear;
close all;
a=[4 -1;1 5];
b=[15 9]';
err=1;
tol=10^-7;
x=0;
y=0;

while tol<err
    x=(15+y)/4;
    y=(9-x)/5;
    x1=[x y]';
    err=norm(a*x1-b);
    
end
x
y

