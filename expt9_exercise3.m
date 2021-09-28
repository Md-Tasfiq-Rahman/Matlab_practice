clc;
clear;
close all;
f=@(x,y) (x-y)/2;
f_real=@(x) 3*exp(-x/2)-2+x;
h=1;
while h>=1/8

x=0:h:3;
y=0:h:3;
y1=f_real(x);
len=length(x);
x(1)=0;
y(1)=1;
for i=2:len
    x(i)=x(i-1)+h;
    p=y(i-1)++h*f(x(i-1),y(i-1));
    y(i)=y(i-1)+(h/2)*(f(x(i-1),y(i-1))+f(x(i),p));
end
plot(x,y,'o')
hold on;
%%Calculating error
h
error=0;
for j= 1:len
   error=error+(y1(j)-y(j))*(y1(j)-y(j));
end
mean_square_error=sqrt(error/len)
h=h/2;
end
plot(x,y1)
xlabel('x')
ylabel('y')
legend('Blue h=1  Red h=1/2  Orange h=1/4  Purple h=1/8') 

