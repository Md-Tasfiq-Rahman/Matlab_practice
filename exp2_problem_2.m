clc;
clear;
close all;
A=[9 -2 -2 0 0;-2 10 -4 -1 -1;-2 -4 9 0 0;0 -1 0 8 -3;0 -1 0 -3 4];
B=[4 6 -6 0 -6]';
i=inv(A)*B;
fprintf('i1= %.4f A\n',i(1,1));
fprintf('i2= %.4f A\n',i(2,1));
fprintf('i3= %.4f A\n',i(3,1));
fprintf('i4= %.4f A\n',i(4,1));
fprintf('i5= %.4f A\n',i(5,1));

