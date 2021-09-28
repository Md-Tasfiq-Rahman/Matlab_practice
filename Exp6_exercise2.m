clc;
clear;
close all;

err=0;
for i=-1:-1:-10
    h=10^i;
    trial=exp(1+h)-exp(1-h);
    trial=trial/(2*h);
    err=(trial-exp(1));
    err=(err/exp(1))*100;
    fprintf('h=%d     percentage error=%d\n',h,err)
end

    