clc;
clear;
close all;
A=[3 -1 -2;-1 6 -3;-2 -3 6];
B=[1;0;6];
C=(inv(A)*B);
disp('Ampere value of i1=');
C(1,1)
disp('Ampere value of i2=');
C(2,1)
disp('Ampere value of i3=');
C(3,1)