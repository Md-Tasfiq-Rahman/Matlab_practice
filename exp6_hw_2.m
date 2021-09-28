clc;
clear;
close all;
clc;
clear;
close all;
f=@(x) exp(x);
x=1;
p=1
h=logspace(-1,-10,10);
f_p=(f(1.+h)-f(1))./h;
f_p=(-f(p+2*h)+8*f(p+h)-8*f(p-h)+f(p-2*h))./(12*h)
f_p_actual=exp(1);
err=abs(f_p-f_p_actual)
l=length(f_p)
Calculated_derrivative=f_p(l)
f_p_actual
loglog(h,err)
xlabel('h')
ylabel('error')