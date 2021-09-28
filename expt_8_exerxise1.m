clc;
clear;
close all;
f=@(x) x^5+x+1;
x_up=0;
x_low=-1;
tol=10^-4;
x_mid=(x_up+x_low)/2;
detector=(x_up-x_low)/2;
while detector>tol
    if f(x_mid)*f(x_low)>0
        x_low=x_mid;
    elseif f(x_mid)*f(x_low)<0
        x_up=x_mid;
    end
    x_mid=(x_up+x_low)/2;
    detector=(x_up-x_low)/2;
end
Solution=x_mid
        
