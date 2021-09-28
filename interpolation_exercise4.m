clc;
clear;
close all;
n=input('enter the number of data pair:');
x=zeros(1,n);
y=zeros(1,n);
for i=1:n
    s=sprintf('Enter %d no x:\n',i);
    x(1,i)=input(s)
    s=sprintf('Enter %d no y:\n',i);
    y(1,i)=input(s)
end
q=zeros(1,n)

for i=1:n
    Q=zeros(1,n)
    Q(1,n)=1
    for j=1:n
        if j~=i
            r=[1 -1*x(1,i)];
            Q=conv(Q,r)/(x(1,i)-x(1,j));
        end
    end
    Q=Q*y(1,j)
    q=q+Q;
end

    

    