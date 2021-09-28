% clc;
% clear;
% close all;
% s=0;
% f=@(x) (sin(16*x))^2;
% s=0;
% h=10^(-2);
% p=0:h:(pi/2);
% p=length(p);
% t=1;
% 
% for i=0:h:(pi/2)
%     if t==1
%         s=s+f(i);
%         t=t+1;
%     elseif t==p
%         s=s+f(i);
%     elseif rem(t,2)==0
%         s=s+4*f(i);
%         t=t+1;
%     else
%         s=s+2*f(i); 
%         t=t+1;
%     end
% end
% s=(s*h)/3;
% s
clc;
clear;
close all;
s=0;
upper_x=pi/2;
lower_x=0;
f=@(x) (sin(16*x))^2;
S1=(f(upper_x)-f(lower_x))/2;
h=(upper_x-lower_x)/3
I2=S1*h;
h=upper_x-lower_x;
I2=S1*h
True_ans= pi/4
tol=True_ans*(0.1/100);
error=1
while error>tol
    I1=I2
s=0;
h=h/2;
p=0:h:(pi/2);
p=length(p);
t=1;

for i=lower_x:h:upper_x
    if t==1
        s=s+f(i);
        t=t+1;
    elseif t==p
        s=s+f(i);
    elseif rem(t-1,3)==0
        s=s+2*f(i);
        t=t+1;
    else
        s=s+3*f(i); 
        t=t+1;
    end
end
I2=(3*s*h)/8;
error=abs(I2-I1);
end
I1

% clc;
% clear;
% close all;
s=0;
f=@(x) (sin(16*x))^2;
s=0;
h=10^(-2);
p=0:h:(pi/2);
p=length(p);
t=1;

for i=0:h:(pi/2)
    if t==1
        s=s+f(i);
        t=t+1;
    elseif t==p
        s=s+f(i);
   
    else
        s=s+2*f(i); 
        t=t+1;
    end
end
s=(s*h)/2;
s