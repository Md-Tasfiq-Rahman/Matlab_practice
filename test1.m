clc;
clear;
close;
x=1:10;
y=my_variance(x);
p=[4 5 -2];
x=linspace(4,20,100);
y=polyval(p,x);
%plot(x,y);
r=roots(p);
B=[0 1;-2 -3];
s=poly(B);
s=poly(r);
close all;
x=[0, 1, 2, 3, 4 ,5, 6];
y=[0 ,0.8415, 0.9093, 0.1411, -0.7568, -0.9589, -0.2794];
a=zeros(1,7);
a(1,1)=y(1,1);
for i=2:7
    t=0;
    t3=1;
    for j=1:(i-1)
        t1=a(1,j);
         t2=1;
        if j==1
            t2=1;
        else
          for k=2:j
            t2=t2*(x(1,i)-x(1,k));
          end
        end
        t1=t1*t2;
        t=t+t1;
        t3=t3*(x(1,i)-x(1,j));
    end
    v=(y(1,i)-t)/t3;
    a(1,i)=v;
end
q=zeros(1,7);
q(1,7)=a(1,7)
%q(1,7)=a(1,j)
for i=2:7
    t=1;
    for j=1:(i-1)
        t1=[1 -x(1,j)];
        t=conv(t,t1);
    end
    z=a(1,i)*(t);
    z1=length(z)
    z3=1;
    for k=(7-z1+1):7
        q(1,k)=q(1,k)+z(1,z3)
        z3=z3+1;
    end
    %q=q+z
end
disp(q)
xq=linspace(0,6,1000);
yq=polyval(q,xq);
plot(x,y,'o',xq,yq);
