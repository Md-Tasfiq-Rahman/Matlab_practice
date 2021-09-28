clc;
clear;
close all;
a=[5 -1 1;2 8 -1;-1 1 4];
b=[10 11 3]';
err=1;
tol=10^-7;
x1=0;
x2=0;
x3=0;

while tol<err
    x1=(10+x2-x3)/5;
    x2=(11-2*x1+x3)/8;
    x3=(3+x1-x2)/4;
    x=[x1 x2 x3]';
    err=norm(a*x-b);
    
    
end
x1
x2
x3
