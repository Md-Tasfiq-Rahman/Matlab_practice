clc;
clear;
close all;
V=5;
f=100
h=(1/f)/4000;
x= linspace( 0,(1/f),4000);
len=length(x)
p=1/(4*f);
w=zeros(len);


for i=1:len
    if x(i)<=p
        w(i)=4*V*f*x(i);
    elseif x(i)>=(3*p)
        w(i)=4*V*f*x(i)-4*V;
    else
        w(i)=-4*V*f*x(i)+2*V;
    end
end
plot(x,w)
% w(x<p)=4*V*f*x;
% %k=3*p;
% %w(x>k))=4*V*x-4*V;
% plot(x,y)
        

 