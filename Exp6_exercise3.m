clc;
clear;
close all;
f=@(x) sin(cos(1/x));
p=1/sqrt(2);
f_p_actual=(1/p^2)*sin(1/p)*cos(cos(1/p));
h=10;
mat=[];
i=0;
while 1==1
    i=i+1;
    h=h/10;
    f_p=(-f(p+2*h)+8*f(p+h)-8*f(p-h)+f(p-2*h))./(12*h);
    
    mat=[mat,f_p];
    if i>=3
        if abs(mat(i)-mat(i-1))>abs(mat(i-1)-mat(i-2));
            break;
        end
    end
end
fprintf('Actual value:  %0.10f\n',f_p_actual)
fprintf('Using central difference formula (of order O(h^4)):   %0.10f\n',mat(1,i))

        
    
    
    