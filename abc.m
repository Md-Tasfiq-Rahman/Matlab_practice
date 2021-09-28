% clc;
% clear;
% close all;
% f=@(x) exp(x);
% x=1;
% p=1
% h=logspace(-1,-10,10);
% %f_p=(f(1.+h)-f(1))./h;
% f_p=(-f(p+2*h)+8*f(p+h)-8*f(p-h)+f(p-2*h))./(12*h)
% f_p_actual=exp(1);
% err=abs(f_p-f_p_actual)
% loglog(h,err)
% xlabel('h')
% ylabel('error')
% baki gulo same way te korbo
% x=[6 8 9]
% y=[7 9 12]
% plot(x,y)
clc;
clear;
close all;
f=@(x) sin(x^3-7*x^2+6*x+8);
h=1;
p=(1-sqrt(5))/2;
D=[]
D(1,1)= (f(p+h)-f(p-h))./(2*h);
j=0;
tol=0.000001
while 1==1
    j=j+1;
    h=h/2;;
    D(j+1,1)=(f(p+h)-f(p-h))./(2*h);
    for i=1:j
        %D(j+1,i+1)=((4^i).*(D(j+1,i)-D(j,i)))./((4^i)-1);
       % D(j+1,i+1)=((4^i)*(D(j+1,i)-D(j,i)))./((4^i)-1);
        %D(j+1,i+1)=D(j+1,i)+(D(j+1,i)-D(j,i))/(4^i-1);
        D(j+1,i+1)=(4^i*D(j+1,i)-D(j,i))/(4^i-1);
%         D(j+1,k+1)=D(j+1,k)+(D(j+1,k)-D(j,k))./((4^k)-1);
    end
    if abs(D(j+1,j+1)-D(j,j))<tol
        break;
    end
end
D
    
    


