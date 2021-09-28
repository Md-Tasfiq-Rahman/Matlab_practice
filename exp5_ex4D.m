clc;
clear;
close all;
a=[2 8 -1;5 -1 1;-1 1 4];
b=[11 10 3]';
err=1;
tol=10^-7;
x=0;
y=0;
z=0;

while tol<err
    y=(11-2*x+z)/8;
    x=(10+y-z)/5;
    z=(3+x-y)/4;
    x1=[x y z]';
    err=norm(a*x1-b);    
end
x
y
z
