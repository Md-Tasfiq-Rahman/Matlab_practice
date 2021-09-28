clc;
clear;
close all;
%dq/dt=(E/R)-q/(RC)
 y_p=@(t,q)(117/20000)-(5*q);
h=1/16;
t=0:h:3;
q=0:h:3;
%y1=f_real(x);
len=length(t);
t(1)=0;
q(1)=0;
for i=2:len
   
    t(i)=t(i-1)+h;
    p=q(i-1)++h*y_p(t(i-1),q(i-1));
    q(i)=q(i-1)+(h/2)*(y_p(t(i-1),q(i-1))+y_p(t(i),p));
    
end
f_real=@(t) (117/20000)/5*(1-exp(-5*t));
q_real=f_real(t);
plot(t,q_real)
hold on;
plot(t,q,'o')
error=0;
xlabel('Time t')
ylabel('Charge Q')

for i=1:len
    error=(q(i)-q_real(i))*(q(i)-q_real(i))+error;
end
mean_square_error= sqrt(error/len)
    

