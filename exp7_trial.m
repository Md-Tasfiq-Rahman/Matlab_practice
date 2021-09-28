clc;
clear all;
close all;

e= 0.00001;
x1=0; x2= 2;
h1=(x2-x1)/2;
t=0;
for i=1:1000
    t=t+1
    I1=fun5(h1); % fun5 is a function which returns the integration value
    I2=fun5(h1/2);
    dI=abs(I2-I1);
    if dI<= e
        break
    end
    h1=h1/2;
end
integration= I2
 
true_value= 0.7853981634
%%
error= abs(true_value-integration)


function I= fun5(h)
%%
x1=0; 
x2=pi/2;
n=(x2-x1)/h;
x=x1;
fun= @(x) (sin(16*x))^2;
sum= fun(x); 
for i=2:n
    x=x+h;
    if mod(i,2)==0
        sum=sum+4*fun(x);
    end
    if mod(i,2)~=0 && i~=n 
        sum=sum+2*fun(x);
    end
end
x=x2;
sum=sum+fun(x);
I= (sum*h)/3;
end
