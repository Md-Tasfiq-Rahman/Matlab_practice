clc;
clear;
close all;
x=[2 3 5;3 4 1;6 7 2];
y=[23 14 26]';
for i=1:2
    for j=i+1:3
        t=i;
        for k=1:3
            x(j,k)=x(j,k)-(x(j,t)/x(i,t))*x(t,k)
            %disp(x(j,k))
            y(j,1)=y(j,1)-(x(j,t)/x(i,t))*y(t,1)
        end
        
        
    end
end

for i=1:3
    for j=1:3
        x(i,j)=x(i,j)/x(i,i);
    end
end
x
y
