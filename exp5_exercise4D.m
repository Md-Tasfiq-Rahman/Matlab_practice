clc;
clear;
close all;
a=[2 8 -1;2 8 -1;-1 1 4];
b=[10 11 3]';
err=1;
tol=10^-7;
x=0;
y=0;
z=0;
while tol<err
    x=(10+y-z)/5;
    y=(11-2*x+z)/8;
    z=(3+x-y)/4;
    x=[x y z]';
    err=norm(a*x-b)
    
end
x
y
z
