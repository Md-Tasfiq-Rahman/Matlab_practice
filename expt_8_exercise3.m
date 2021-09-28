clc;
clear;
close all;
tol=10^(-8);
x0=0;
dx=-1*f(x0)/fDeriv(x0);
root=x0+dx;
while abs(dx)>tol
    dx=-1*f(root)/fDeriv(root);
    root=root+dx;
end
root
function t=f(p)
t=exp(-p)-1;
end
function g=fDeriv(p)
delta=10^(-13);
h=1;
D(1,1)=(f(p+h)-f(p-h))./(2*h);
j=0;
while 1==1
    j=j+1;
    h=h/2;
    D(j+1,1)=(f(p+h)-f(p-h))./(2*h);
    for k=1:j
        D(j+1,k+1)=D(j+1,k)+(D(j+1,k)-D(j,k))./((4^k)-1);
    end
    if abs(D(j+1,j+1)-D(j,j))< delta
        break;
    end
end
g=D(j+1,j+1);
end