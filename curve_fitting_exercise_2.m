clc;
clear;
close all;
x=0:5
y=[2.1 7.7 13.6 27.2 40.9 61.1]
n=6;
a11=n;
a12=0;
a13=0;
a21=0;
a22=0;
a23=0;
a31=0;
a32=0;
a33=0;
b1=0;
b2=0;
b3=0;
for i=1:6
    a12=a12+x(1,i);
    a13=a13+x(1,i)^2;
    a21=a21+x(1,i);
    a22=a22+x(1,i)^2;
    a23=a23+x(1,i)^3;
    a31=a31+x(1,i)^2;
    a32=a32+x(1,i)^3;
    a33=a32+x(1,i)^3;
    b1=b1+y(1,i);
    b2=b2+x(1,i)*y(1,i);
    b3=x(1,i)^2*y(1,i);
end

c=[a11 a12 a13;a21 a22 a23;a31 a32 a33];
d=[b1 b2 b3]';
soln=inv(c)*d

    


