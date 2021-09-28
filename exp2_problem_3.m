clc;
clear;
close all;
V1=input('Enter the value of V1 in Volt:');
I1=input('Enter the value of I1 in Ampere:');
V2=input('Enter the value of V2 in Volt:');
vx3=my_function(V1,I1,V2);
fprintf('vx3= %.4f V\n',vx3);
