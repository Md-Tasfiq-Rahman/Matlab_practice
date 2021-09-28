clear;
clc;
close all;
x=0:0.1:pi;
y1=sin(x);
y2=sin(2*x);
y3=sin(3*x);
y4=sin(4*x);
subplot(2,2,1), plot(x,y1)
title('y=sin(x)')
xlabel('x')
ylabel('y')
subplot(2,2,2), plot(x,y2)
title('y=sin(2x)')
xlabel('x')
ylabel('y')
subplot(2,2,3), plot(x,y3)
title('y=sin(3x)')
xlabel('x')
ylabel('y')
subplot(2,2,4), plot(x,y4)
title('y=sin(4x)')
xlabel('x')
ylabel('y')
