clc;
clear all;
close all;
x=0:0.1:pi;
y=cos(x)
%plot(y,'r:h');
%hold on;
%p=sin(x);
%plot(p,'g:x','Linewidth',5);
%plot(x,y,x,y.^2,'k')
%x=linspace(0,7);
%y=exp(x)
%subplot(2,1,1),plot(x,y)
%grid on
%subplot(2,1,2),semilogy(x,y);
%x=magic(3);
%bar(x);
%grid
%x=0:0.1:2*pi;
%y=sin(x);
%stem(x,y)
%polar(x,y)
x=[6 7 9 4];
x=magic(4);
bar(x)
pie3(x)
