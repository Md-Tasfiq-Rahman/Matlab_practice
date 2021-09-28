clc;
clear;
close all;
%x=[2 3 5 23;3 4 1 14;6 7 2 26];
%y=[0 0 0]';
x=[1 1 6 7;-1 2 9 2;1 -2 3 10];
y=[0 0 0]';
for i=1:2
    for j=i+1:3
        t=i;
        u=(x(j,t)/x(i,t));
        for k=1:4
            
            x(j,k)=x(j,k)-u*x(t,k);
            
        end
        
        
    end
end

for i=1:3
    u=x(i,i);
    for j=1:4
        
        x(i,j)=x(i,j)/u;
             
    end
end
x
y(3,1)=x(3,4);


for i=(3-1):-1:1
    s=0;
    for j=3:-1:(i+1)
        s=s+y(j,1)*x(i,j);
    end
    y(i,1)=x(i,4)-s;
    
               
end

y
