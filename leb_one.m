% clc;
% clear;
% close all;
% x=1:2:13;
% y=[22 51 127 202 227 248 252];
% len=length(x)
% y1=zeros(1,len);
% for i=1:len
%     y1(1,i)=log((254-y(1,i))/y(1,i));
% end
% x1=-1*x;
% z=[];
% p=ones(len,1);
% z=[p x1'];
% y1=y1';
% q=inv(z'*z)*(z'*y1);
% a=exp(q(1))
% b=q(2)
% f= @(t) 254./(1+a*exp(-1*b.*t));
% t=linspace(0,15,500);
% y2=f(t);
% plot(t,y2,x,y,'o')

clc;
clear;
close all;
x=[2,4,-6,-4;1 5 3 10;1 3 2 5];
y=[0 0 0]';
n=3;
for i=1:(n-1)
%pivoting
for j=i:(n-1)
for k=j+1:n
if x(j,i)<x(k,i)
for m=1:(n+1)
t=x(j,m);
x(j,m)=x(k,m);
x(k,m)=t;
end
end
end
end
%trigonalized
for j=i+1:n
u=x(j,i)/x(i,i);
for k=1:(n+1)
x(j,k)=x(j,k)-u*x(i,k);
end
end
end
%echelon
for i=1:n
u=x(i,i);
for j=1:(n+1)
x(i,j)=x(i,j)/u;
end
end
%back substitution
y(n,1)=x(n,n+1);
for i=(n-1):-1:1
s=0;
for j=n:-1:(i+1)
s=s+y(j,1)*x(i,j);
end
y(i,1)=x(i,n+1)-s;
end
%solution
x1=y(1,1)
x2=y(2,1)
x3=y(3,1)