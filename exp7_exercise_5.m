clc;
clear;
close all;
%%plot 
x=linspace(0,pi/2,100);
y=(sin(16.*x)).^2;
plot(x,y,'b');
xlabel('x')
ylabel('(sin(16.*x)).^2')
%%Wrong approach 
f=@(x) (sin(16*x))^2;
s=0;
upper_x=pi/2;
lower_x=0;
h=(upper_x-lower_x)/2;%main factor of error
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
I2=(s*h)/2;
True_ans= pi/4
tol=True_ans*(0.1/100);
error=1;
while error>tol
    I1=I2;
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
    
    else
        s=s+2*f(i); 
        t=t+1;
    end
end
I2=(s*h)/2;
error=abs(I2-I1);
end
Erroneous_Numerical_Integration=I1
%% Correct approach
h=(upper_x-lower_x)/9;
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
I2=(s*h)/2;
error=1;
while error>tol
    I1=I2;
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
    
    else
        s=s+2*f(i); 
        t=t+1;
    end
end
I2=(s*h)/2;
error=abs(I2-I1);
end
Correct_Numerical_Integration=I1
