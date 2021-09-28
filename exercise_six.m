clc;
clear all;
close all;

A=[17 2 3 4;5 6 7 8;9 10 11 12;13 14 15 16];
B=[2 3 4 5;6 7 8 9;10 11 12 13;14 15 16 17];
C=[1 2 3;4 5 6;7 8 9];
y=[4 3 2 1]'
disp(A*B)
disp(B*A)
%disp(A*C)
disp(inv(A)*y)
%det(A)
