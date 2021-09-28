clc
x=1:7;
y=[0.5 2.5 2 4 3.5 6 5.5];
n=7;
a=0;
b=0;
b1=0;
b2=0;
c=0;
d=0;
for i=1:n
    a=a+x(1,i)*y(1,i);
    b1=b1+x(1,i);
    b2=b2+y(1,i);
    c=c+x(1,i)^2;
    d=d+x(1,i);
end
a
c
b1
b2
d
b=b1*b2;
d=d^2;
format long;
a1=(n*a-b)/(n*c-d)
%a0=mean(y)-a1*mean(x)
mean(y)
x1=linspace(0,8,600);
%a0=0.071142857
%a1=0.8392857
y1=a0+a1*x1;
plot(x,y,'o',x1,y1)