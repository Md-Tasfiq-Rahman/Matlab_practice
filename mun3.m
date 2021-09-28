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
while d>0.000001
    
 for i=1:n
     m=0;
    for j=1:n
        
        if j==i
            continue;
        else
            m=m-c(i,j)*s(j,1)
        end
        %s(i,1)=(m+b(i,1))/c(i,i)
        
    end
    s(i,1)=(m+b(i,1))/c(i,i)
 end
s;
z=zeros(n,1);

for k=1:n
    for p=1:n
      z(k,1)=z(k,1)+s(p,1)*c(k,p);
    end
end
z;
d=0;
for k=1:n
    d=d+(z(k,1)-b(k,1))*(z(k,1)-b(k,1));
end
d=sqrt(d)
cnt=cnt+1;
cnt
end


s
