clc;
clear;
close all;
a=input("enter matrix:");

[n,m]=size(a);

                
b=zeros(n,1);
for i=1:n
     b(i,1)=a(i,m);
end
s=zeros(n,1);
c=zeros(n,n);
for i=1:n
    for j=1:n
        c(i,j)=a(i,j);
    end
end
d=1;
cnt=0;
 c
 s
 b
 for i=1:n
     m=0;
    for j=1:n
        
        if j==i
            continue;
        else
            m=m+c(i,j)*s(j,1)
            s
        end
        %s(i,1)=(m+b(i,1))/c(i,i)
        
    end
    m
    s(i,1)=(m*(-1)+b(i,1))/c(i,i);
 end
 s
