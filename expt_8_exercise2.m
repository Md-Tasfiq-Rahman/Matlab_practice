clc;
clear;
close all;
f=@(x) x^5+x+1;
x_up=0;
x_low=-1;
tol=10^-4;
x_mid=(-1*f(x_up)*(x_up-x_low)/(f(x_up)-f(x_low)))+x_up;
while abs(f(x_mid))>tol
    if f(x_mid)*f(x_low)>0
        x_low=x_mid;
    elseif f(x_mid)*f(x_low)<0
        x_up=x_mid;
    end
   x_mid=(-1*f(x_up)*(x_up-x_low)/(f(x_up)-f(x_low)))+x_up;
    
end
Solution=x_mid

