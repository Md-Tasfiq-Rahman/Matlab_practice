clc;
clear;
close all;
x=1.6:0.2:3.8;
y=[4.953 6.050 7.389 9.025 11.023 13.468 16.445 20.086 24.533 29.964 36.598 44.701];
%plot(x,y)
f=@(x) exp(x);
len_x=length(x);
for j=0.2:0.2:0.6
h=j; % h er value
h1=1.6:h:3.8;
len_h1=length(h1);
y1=interp1(x,y,h1);
%t=interp1(h1,y1,1.9)
y2=f(h1);
m1=[interp1(h1,y1,h1(1))];
m2=[y2(1)];
for i=2:(len_h1-1)
    a1=(interp1(h1,y1,h1(i)))*2;
    a2=y2(i)*2;
    m1=[m1,a1];
    m2=[m2,a2];
end
a1=interp1(h1,y1,h1(len_h1));
%a1=interp1(h1,y1,x(len_x));
%a1=interp1(h1,y1,3.7)
%a1=y(len_x)
a2=y2(len_h1);
m1=[m1,a1];
m2=[m2,a2];
int1=0;
int_real=0;
for i=1:len_h1
    int1=int1+m1(i);
    int_real=int_real+m2(i);
end
h
int1=int1*(h/2)
%int_real=int_real*(h/2)
int_actual=exp(x(len_x))-exp(x(1))
end
