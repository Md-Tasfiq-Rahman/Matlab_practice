clc;
clear;
close all;
x=1.6:0.2:3.4;
y=[4.953 6.050 7.389 9.025 11.023 13.468 16.445 20.086 24.533 29.964];
f=@(x) exp(x);
len_x=length(x);
for j=0.2:0.2:0.6
h=j;
h1=1.6:h:3.4;
len_h1=length(h1);
y1=interp1(x,y,h1);
y2=f(h1);
m1=[interp1(h1,y1,h1(1))];
for i=2:(len_h1-1)
    if rem((i-1),3)==0
    a1=(interp1(h1,y1,h1(i)))*2;
    m1=[m1,a1];
    else
    a1=(interp1(h1,y1,h1(i)))*3;
    m1=[m1,a1];
    end
end
a1=interp1(h1,y1,h1(len_h1));
a2=y2(len_h1);
m1=[m1,a1];
int1=0;
int_real=0;
for i=1:len_h1
    int1=int1+m1(i);
end
Calculated_sum=int1*(h/8)*3
%int_real=int_real*(h/2)
Actual_value=exp(x(len_x))-exp(x(1))
end
