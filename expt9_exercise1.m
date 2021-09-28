clc;
clear;
close all;
y_p=@(x,y) (x-y)/2;
f_real=@(x) 3*exp(-x/2)-2+x;
h=1;
while h>=1/8

x=0:h:3;
y=0:h:3;
y1=f_real(x);
len=length(x)
x(1)=0;
y(1)=1;
for i=2:len
    p=i;
    x(i)=x(i-1)+h;
    y(i)=y(i-1)+y_p(x(i-1),y(i-1))*(x(i)-x(i-1));
end
plot(x,y,'o')
hold on;

h=h/2;
end
plot(x,y1)
xlabel('x')
ylabel('y')
legend('Blue h=1  Red h=1/2  Orange h=1/4  Black h=1/8') 

