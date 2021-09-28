clc;
clear;
close all;
upper_x=4;
lower_x=0;
n=12
h=(upper_x-lower_x)/12;

h1=lower_x:h:upper_x
len_h1=length(h1)
f=@(x) x^2*exp(-x)
m=[f(h1(1))]
for i=2:(len_h1-1)
    a=f(h1(i))*2
    m=[m,a];
end
m=[m,f(h1(len_h1))];
sum=0;
for i=1:len_h1
    sum=sum+m(i);
end
Calculated_sum=sum*(h/2)
f_in=@(x) -x^2*exp(-x)-2*x*exp(-x)-2*exp(-x);
Actual_value= f_in(upper_x)-f_in(lower_x)