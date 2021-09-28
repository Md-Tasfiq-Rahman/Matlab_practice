clc;
clear;
close all;
%dq/dt=(E/R)-q/(RC)
 y_p=@(q)(117/20000)-(5*q);
h=0.0001;
t=0:h:3;
q=0:h:3;
%y1=f_real(x);
len=length(t);
t(1)=0;
q(1)=0;
for i=2:len
   
    t(i)=t(i-1)+h;
    q(i)=q(i-1)+y_p(q(i-1))*(t(i)-t(i-1));
end
f_real=@(t) (117/20000)/5*(1-exp(-5*t));
q_real=f_real(t);

plot(t,q)
error=0;
xlabel('Time t')
ylabel('Charge Q')

for i=1:len
    error=(q(i)-q_real(i))*(q(i)-q_real(i))+error;
end
mean_error= sqrt(error/len)
    
