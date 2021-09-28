clc;
clear;
close all;
x=[0, 1, 2, 3, 4 ,5, 6];
y=[0 ,0.8415, 0.9093, 0.1411, -0.7568, -0.9589, -0.2794];
a=zeros(1,7);
a(1,1)=y(1,1);
for i=2:7 %note
    k=0;
    l=1;
    for j=1:(i-1)
     l=(x(1,i)-x(1,j))*l;
    end
    for j=1:(i-1)
        if j==1
            k=k+a(1,1);
        else
            t=1;
            for m=1:(j-1);
                t=t*(x(1,i)-x(1,m));
            end
            k=k+a(1,j)*t;
        end
    end
    a(1,i)=(y(1,i)-k)/l;
end
disp('a =')
disp(a)
q=zeros(1,7);
q(1,7)=a(1,1);
for i=2:7
   t=1;
   for j=1:(i-1)
       t=conv(t,[1 -x(1,j)]);
   end
   t=a(1,i)*t;
   t1=length(t);
   b=1;
   for k=(7-t1+1):7
       q(1,k)=t(1,b)+q(1,k);
       b=b+1;
   end
       
end
disp('q =')
disp(q)
xq=linspace(-1,7,500);
yq=polyval(q,xq);
plot(x,y,'o',xq,yq);
xlabel('x')
ylabel('f(x)')
