clc;
clear;
close all;
upper_x=2;
lower_x=0;
h=upper_x-lower_x;
f=@(x) x*exp(-2*x^2);
S1=(f(upper_x)-f(lower_x))/2;
I2=S1*h;
True_ans=(-1/4)*(exp(-8)-1)
tol=True_ans*(0.1/100);
error=1;
while error>tol
    I1=I2;
    h=h/2;
    h1=lower_x:h:upper_x;
    len_h=length(h1);
    
    I2=f(h1(1));
    for j=2:(len_h-1)
        I2=I2+2*f(h1(j));
    end
    I2=I2+f(h1(len_h));
    I2=(I2*h)/2;
    error=abs(I2-I1);
end
Numerical_integration=I1





