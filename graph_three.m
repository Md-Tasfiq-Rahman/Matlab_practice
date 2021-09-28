clc;
close all;
clear all;
x=0:0.1:50;
y=cosh(x);
z=x.^2.*exp(-x)+x.^3;
comet3(x,y,z)

