clc;
clear;
close all;
f=@(x) 3*x+sin(x)-exp(x);
xk=1;
xkminus1=0;
yk=f(xk);
ykminus1=f(xkminus1);
root=(xkminus1*yk-xk*ykminus1)/(yk-ykminus1);
ykplus1=f(root);
xTol=0.0000001;
while abs(root -xk)>xTol
    xkminus1=xk;
    ykminus1=yk;
    xk=root;
    yk=ykplus1;
    root=(xkminus1*yk-xk*ykminus1)/(yk-ykminus1);
    ykplus1=f(root);
end
root


