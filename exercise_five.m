clc;
clear all;
close all;
%x=1:1000;
x=rand(1000);
t=length(x);
sum=0;
for i=1:t
    sum=sum+x(i);
end
avg=sum/t;
for i=1:t
    dev(i)=(x(i)-avg)^2;
end
var=0;
for i=1:t
    var=var+dev(i);
end
var=var/t;
disp(var)
    
