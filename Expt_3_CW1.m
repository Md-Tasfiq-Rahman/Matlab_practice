clc;
clear;
close all;
x=[0, 1, 2, 3, 4 ,5, 6];
y=[0 ,0.8415, 0.9093, 0.1411, -0.7568, -0.9589, -0.2794];
q=zeros(1,7);
for i=1:7
    Q=1;
    for j=1:7
        if j~=i
            r=[1 -1*x(1,j)]/(x(1,i)-x(1,j));
            Q=conv(Q,r);
        end
        
       
    end
    Q=y(1,i)*Q;
    q=q+Q;
    
end
xq=linspace(-1,7,1000);
yq=polyval(q,xq);
plot(x,y,'o',xq,yq);
xlabel('x')
ylabel('y')
q

