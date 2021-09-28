clc;
clear;
close all;
upper_x=1;
lower_x=-1;
n=12;
h=(upper_x-lower_x)/12;

h1=lower_x:h:upper_x;
len_h1=length(h1);
f=@(x) 1/(1+x^2);
%% Simson 1/3 rule
disp('Simson''s 1/3 rule')
m=[f(h1(1))];
for i=2:(len_h1-1)
    if rem(i,2)==0
        a=f(h1(i))*4;
        m=[m,a];
    else
        a=f(h1(i))*2;
        m=[m,a];
    end
end
m=[m,f(h1(len_h1))];
sum=0;
for i=1:len_h1
    sum=sum+m(i);
end
Calculated_sum=sum*(h/3)
f_in=@(x) atan(x);
Actual_value= f_in(upper_x)-f_in(lower_x)
%% Simson 3/8 rule
disp('Simson'' 3/8 rule')
m=[f(h1(1))];
for i=2:(len_h1-1)
    if rem((i-1),3)==0
        a=f(h1(i))*2;
        m=[m,a];
    else
        a=f(h1(i))*3;
        m=[m,a];
    end
end
m=[m,f(h1(len_h1))];
sum=0;
for i=1:len_h1
    sum=sum+m(i);
end
Calculated_sum=sum*(3*h/8)
f_in=@(x) atan(x);
Actual_value= f_in(upper_x)-f_in(lower_x)
