clc;
clear;
close all;
upper_x=3;
lower_x=0.1;
h=upper_x-lower_x;
f=@(x) 2*x^4+5*x^3-4*x^2+(3/2)*(x^-2);
S1=(f(upper_x)-f(lower_x))/2;
I2=S1*h;

m=3;
n=0.1

True_ans=(2/5)*m^5+(5/4)*m^4-(4/3)*m^3-(3/2)*(m^-2)-((2/5)*n^5+(5/4)*n^4-(4/3)*n^3-(3/2)*(n^-2))

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
Numerical_integration=I2
