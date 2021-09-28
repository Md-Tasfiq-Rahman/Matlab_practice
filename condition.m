clc;
clear all;
close all;
%a=input('enter pass:')
%if a==1234
 %   disp('right')
%else
 %   disp('wrong')
%end
x=7;
while x<10
    x=x+1;
    disp(x)
end

for i=1:10
    x=x+2;
    disp(x)
end
while x<40
    x=x+1;
    disp(x)
    if x==35
        break;
    end
end
    
