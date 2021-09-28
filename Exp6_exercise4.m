clc;
clear;
close all;
f=@(x) sin(x^3-7*x^2+6*x+8);
p=(1-sqrt(5))/2;
delta=10^(-13);
h=1;

f_p_actual=(3*p^2-14*p+6)*cos(p^3-7*p^2+6*p+8);
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
fprintf('Actual value:  %0.14f\n',f_p_actual)
fprintf('Using Richardson''s Extrapolation:  %0.14f\n',D(j+1,j+1))
D
    



