clc;
clear;
close all;
A=[2,3,5;3,4,1;6,7,2];
b=[23,14,26]';
x1=0;
x2=0;
x3=0;
tolerance=10^-6;
error=1;
cnt=0;
while error>tolerance
 cnt=cnt+1;
 x1=(26-7*x2-2*x3)/6;
 x2=(14-3*x1-x3)/4;
 x3=(23-3*x2-2*x1)/5;
 x=[x1;x2;x3];
 error=norm(A*x-b);
end
x1
x2
x3
 