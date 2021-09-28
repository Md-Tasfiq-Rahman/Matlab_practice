clc;
clear;
close all;
a=[8 -3;-1 4];
b=[10 6]';
err=1;
tol=10^-7;
x1=0;
x2=0;

while tol<err
    x1=(10+3*x2)/8;
    x2=(6+x1)/4;
    x=[x1 x2]';
    err=norm(a*x-b);
    
end
x1
x2

    

